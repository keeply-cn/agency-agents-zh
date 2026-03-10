#!/usr/bin/env bash
#
# install.sh -- 将 The Agency Agent 安装到本地 Agent 工具中。
#
# 从 integrations/ 读取转换后的文件，复制到各工具的对应配置目录。
# 如果 integrations/ 缺失或过时，先运行 scripts/convert.sh。
#
# 用法：
#   ./scripts/install.sh [--tool <name>] [--interactive] [--no-interactive] [--help]
#
# 工具：
#   claude-code  -- 复制 Agent 到 ~/.claude/agents/
#   antigravity  -- 复制技能到 ~/.gemini/antigravity/skills/
#   gemini-cli   -- 安装扩展到 ~/.gemini/extensions/agency-agents/
#   opencode     -- 复制 Agent 到当前目录的 .opencode/agent/
#   cursor       -- 复制规则到当前目录的 .cursor/rules/
#   aider        -- 复制 CONVENTIONS.md 到当前目录
#   windsurf     -- 复制 .windsurfrules 到当前目录
#   all          -- 为所有检测到的工具安装（默认）
#
# 标志：
#   --tool <name>     仅安装指定工具
#   --interactive     显示交互式选择器（在终端中运行时默认）
#   --no-interactive  跳过交互式选择器，安装所有检测到的工具
#   --help            显示此帮助
#
# 平台支持：
#   Linux, macOS（需要 bash 3.2+）, Windows Git Bash / WSL

set -euo pipefail

# ---------------------------------------------------------------------------
# 颜色 -- 仅当 stdout 是真实终端时
# ---------------------------------------------------------------------------
if [[ -t 1 ]]; then
  C_GREEN=$'\033[0;32m'
  C_YELLOW=$'\033[1;33m'
  C_RED=$'\033[0;31m'
  C_CYAN=$'\033[0;36m'
  C_BOLD=$'\033[1m'
  C_DIM=$'\033[2m'
  C_RESET=$'\033[0m'
else
  C_GREEN=''; C_YELLOW=''; C_RED=''; C_CYAN=''; C_BOLD=''; C_DIM=''; C_RESET=''
fi

ok()     { printf "${C_GREEN}[OK]${C_RESET}  %s\n" "$*"; }
warn()   { printf "${C_YELLOW}[!!]${C_RESET}  %s\n" "$*"; }
err()    { printf "${C_RED}[ERR]${C_RESET} %s\n" "$*" >&2; }
header() { printf "\n${C_BOLD}%s${C_RESET}\n" "$*"; }
dim()    { printf "${C_DIM}%s${C_RESET}\n" "$*"; }

# ---------------------------------------------------------------------------
# 框线绘制 -- 纯 ASCII，固定 52 字符宽
#   box_top / box_mid / box_bot  -- 结构线
#   box_row <text>               -- 内容行，右填充以适应
# ---------------------------------------------------------------------------
BOX_INNER=48   # 两堵 | 墙之间的字符数

box_top() { printf "  +"; printf '%0.s-' $(seq 1 $BOX_INNER); printf "+\n"; }
box_bot() { box_top; }
box_sep() { printf "  |"; printf '%0.s-' $(seq 1 $BOX_INNER); printf "|\n"; }
box_row() {
  # 测量可见长度时剥离 ANSI 转义码
  local raw="$1"
  local visible
  visible="$(printf '%s' "$raw" | sed 's/\x1b\[[0-9;]*m//g')"
  local pad=$(( BOX_INNER - 2 - ${#visible} ))
  if (( pad < 0 )); then pad=0; fi
  printf "  | %s%*s |\n" "$raw" "$pad" ''
}
box_blank() { printf "  |%*s|\n" $BOX_INNER ''; }

# ---------------------------------------------------------------------------
# 路径
# ---------------------------------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
INTEGRATIONS="$REPO_ROOT/integrations"

ALL_TOOLS=(claude-code antigravity gemini-cli opencode cursor aider windsurf)

# ---------------------------------------------------------------------------
# 用法
# ---------------------------------------------------------------------------
usage() {
  sed -n '3,28p' "$0" | sed 's/^# \{0,1\}//'
  exit 0
}

# ---------------------------------------------------------------------------
# 预检
# ---------------------------------------------------------------------------
check_integrations() {
  if [[ ! -d "$INTEGRATIONS" ]]; then
    err "integrations/ 未找到。先运行 ./scripts/convert.sh。"
    exit 1
  fi
}

# ---------------------------------------------------------------------------
# 工具检测
# ---------------------------------------------------------------------------
detect_claude_code() { [[ -d "${HOME}/.claude" ]]; }
detect_antigravity()  { [[ -d "${HOME}/.gemini/antigravity/skills" ]]; }
detect_gemini_cli()   { command -v gemini >/dev/null 2>&1 || [[ -d "${HOME}/.gemini" ]]; }
detect_cursor()       { command -v cursor >/dev/null 2>&1 || [[ -d "${HOME}/.cursor" ]]; }
detect_opencode()     { command -v opencode >/dev/null 2>&1 || [[ -d "${HOME}/.config/opencode" ]]; }
detect_aider()        { command -v aider >/dev/null 2>&1; }
detect_windsurf()     { command -v windsurf >/dev/null 2>&1 || [[ -d "${HOME}/.codeium" ]]; }

is_detected() {
  case "$1" in
    claude-code) detect_claude_code ;;
    antigravity) detect_antigravity ;;
    gemini-cli)  detect_gemini_cli  ;;
    opencode)    detect_opencode    ;;
    cursor)      detect_cursor      ;;
    aider)       detect_aider       ;;
    windsurf)    detect_windsurf    ;;
    *)           return 1 ;;
  esac
}

# 固定宽度标签：名称 (14) + 详情 (24) = 38 可见字符
tool_label() {
  case "$1" in
    claude-code) printf "%-14s  %s" "Claude Code"  "(claude.ai/code)"        ;;
    antigravity) printf "%-14s  %s" "Antigravity"  "(~/.gemini/antigravity)" ;;
    gemini-cli)  printf "%-14s  %s" "Gemini CLI"   "(gemini extension)"      ;;
    opencode)    printf "%-14s  %s" "OpenCode"     "(opencode.ai)"           ;;
    cursor)      printf "%-14s  %s" "Cursor"       "(.cursor/rules)"         ;;
    aider)       printf "%-14s  %s" "Aider"        "(CONVENTIONS.md)"        ;;
    windsurf)    printf "%-14s  %s" "Windsurf"     "(.windsurfrules)"        ;;
  esac
}

# ---------------------------------------------------------------------------
# 交互式选择器
# ---------------------------------------------------------------------------
interactive_select() {
  # bash 3 兼容数组
  declare -a selected=()
  declare -a detected_map=()

  local t
  for t in "${ALL_TOOLS[@]}"; do
    if is_detected "$t" 2>/dev/null; then
      selected+=(1); detected_map+=(1)
    else
      selected+=(0); detected_map+=(0)
    fi
  done

  while true; do
    # --- 头部 ---
    printf "\n"
    box_top
    box_row "${C_BOLD}  The Agency -- 工具安装器${C_RESET}"
    box_bot
    printf "\n"
    printf "  ${C_DIM}系统扫描：[*] = 在此机器上检测到${C_RESET}\n"
    printf "\n"

    # --- 工具行 ---
    local i=0
    for t in "${ALL_TOOLS[@]}"; do
      local num=$(( i + 1 ))
      local label
      label="$(tool_label "$t")"
      local dot
      if [[ "${detected_map[$i]}" == "1" ]]; then
        dot="${C_GREEN}[*]${C_RESET}"
      else
        dot="${C_DIM}[ ]${C_RESET}"
      fi
      local chk
      if [[ "${selected[$i]}" == "1" ]]; then
        chk="${C_GREEN}[x]${C_RESET}"
      else
        chk="${C_DIM}[ ]${C_RESET}"
      fi
      printf "  %s  %s)  %s  %s\n" "$chk" "$num" "$dot" "$label"
      (( i++ )) || true
    done

    # --- 控制 ---
    printf "\n"
    printf "  ------------------------------------------------\n"
    printf "  ${C_CYAN}[1-7]${C_RESET} 切换   ${C_CYAN}[a]${C_RESET} 全选   ${C_CYAN}[n]${C_RESET} 不选   ${C_CYAN}[d]${C_RESET} 已检测\n"
    printf "  ${C_GREEN}[Enter]${C_RESET} 安装   ${C_RED}[q]${C_RESET} 退出\n"
    printf "\n"
    printf "  >> "
    read -r input </dev/tty

    case "$input" in
      q|Q)
        printf "\n"; ok "已中止。"; exit 0 ;;
      a|A)
        for (( j=0; j<${#ALL_TOOLS[@]}; j++ )); do selected[$j]=1; done ;;
      n|N)
        for (( j=0; j<${#ALL_TOOLS[@]}; j++ )); do selected[$j]=0; done ;;
      d|D)
        for (( j=0; j<${#ALL_TOOLS[@]}; j++ )); do selected[$j]="${detected_map[$j]}"; done ;;
      "")
        local any=false
        local s
        for s in "${selected[@]}"; do [[ "$s" == "1" ]] && any=true && break; done
        if $any; then
          break
        else
          printf "  ${C_YELLOW}未选择任何内容 -- 选择一个工具或按 q 退出。${C_RESET}\n"
          sleep 1
        fi ;;
      *)
        local toggled=false
        local num
        for num in $input; do
          if [[ "$num" =~ ^[0-9]+$ ]]; then
            local idx=$(( num - 1 ))
            if (( idx >= 0 && idx < ${#ALL_TOOLS[@]} )); then
              if [[ "${selected[$idx]}" == "1" ]]; then
                selected[$idx]=0
              else
                selected[$idx]=1
              fi
              toggled=true
            fi
          fi
        done
        if ! $toggled; then
          printf "  ${C_RED}无效。输入数字 1-%s 或命令。${C_RESET}\n" "${#ALL_TOOLS[@]}"
          sleep 1
        fi ;;
    esac

    # 清屏重绘
    local lines=$(( ${#ALL_TOOLS[@]} + 14 ))
    local l
    for (( l=0; l<lines; l++ )); do printf '\033[1A\033[2K'; done
  done

  # 构建输出数组
  SELECTED_TOOLS=()
  local i=0
  for t in "${ALL_TOOLS[@]}"; do
    [[ "${selected[$i]}" == "1" ]] && SELECTED_TOOLS+=("$t")
    (( i++ )) || true
  done
}

# ---------------------------------------------------------------------------
# 安装器
# ---------------------------------------------------------------------------

install_claude_code() {
  local dest="${HOME}/.claude/agents"
  local count=0
  mkdir -p "$dest"
  local dir f first_line
  for dir in design engineering marketing product project-management \
              testing support spatial-computing specialized; do
    [[ -d "$REPO_ROOT/$dir" ]] || continue
    while IFS= read -r -d '' f; do
      first_line="$(head -1 "$f")"
      [[ "$first_line" == "---" ]] || continue
      cp "$f" "$dest/"
      (( count++ )) || true
    done < <(find "$REPO_ROOT/$dir" -maxdepth 1 -name "*.md" -type f -print0)
  done
  ok "Claude Code: $count 个 Agent -> $dest"
}

install_antigravity() {
  local src="$INTEGRATIONS/antigravity"
  local dest="${HOME}/.gemini/antigravity/skills"
  local count=0
  [[ -d "$src" ]] || { err "integrations/antigravity 缺失。先运行 convert.sh。"; return 1; }
  mkdir -p "$dest"
  local d
  while IFS= read -r -d '' d; do
    local name; name="$(basename "$d")"
    mkdir -p "$dest/$name"
    cp "$d/SKILL.md" "$dest/$name/SKILL.md"
    (( count++ )) || true
  done < <(find "$src" -mindepth 1 -maxdepth 1 -type d -print0)
  ok "Antigravity: $count 个技能 -> $dest"
}

install_gemini_cli() {
  local src="$INTEGRATIONS/gemini-cli"
  local dest="${HOME}/.gemini/extensions/agency-agents"
  local count=0
  [[ -d "$src" ]] || { err "integrations/gemini-cli 缺失。先运行 convert.sh。"; return 1; }
  mkdir -p "$dest/skills"
  cp "$src/gemini-extension.json" "$dest/gemini-extension.json"
  local d
  while IFS= read -r -d '' d; do
    local name; name="$(basename "$d")"
    mkdir -p "$dest/skills/$name"
    cp "$d/SKILL.md" "$dest/skills/$name/SKILL.md"
    (( count++ )) || true
  done < <(find "$src/skills" -mindepth 1 -maxdepth 1 -type d -print0)
  ok "Gemini CLI: $count 个技能 -> $dest"
}

install_opencode() {
  local src="$INTEGRATIONS/opencode/agent"
  local dest="${PWD}/.opencode/agent"
  local count=0
  [[ -d "$src" ]] || { err "integrations/opencode 缺失。先运行 convert.sh。"; return 1; }
  mkdir -p "$dest"
  local f
  while IFS= read -r -d '' f; do
    cp "$f" "$dest/"; (( count++ )) || true
  done < <(find "$src" -maxdepth 1 -name "*.md" -print0)
  ok "OpenCode: $count 个 Agent -> $dest"
  warn "OpenCode: 项目级别。在项目根目录运行以安装到该项目。"
}

install_cursor() {
  local src="$INTEGRATIONS/cursor/rules"
  local dest="${PWD}/.cursor/rules"
  local count=0
  [[ -d "$src" ]] || { err "integrations/cursor 缺失。先运行 convert.sh。"; return 1; }
  mkdir -p "$dest"
  local f
  while IFS= read -r -d '' f; do
    cp "$f" "$dest/"; (( count++ )) || true
  done < <(find "$src" -maxdepth 1 -name "*.mdc" -print0)
  ok "Cursor: $count 个规则 -> $dest"
  warn "Cursor: 项目级别。在项目根目录运行以安装到该项目。"
}

install_aider() {
  local src="$INTEGRATIONS/aider/CONVENTIONS.md"
  local dest="${PWD}/CONVENTIONS.md"
  [[ -f "$src" ]] || { err "integrations/aider/CONVENTIONS.md 缺失。先运行 convert.sh。"; return 1; }
  if [[ -f "$dest" ]]; then
    warn "Aider: CONVENTIONS.md 已存在于 $dest（删除后重新安装）。"
    return 0
  fi
  cp "$src" "$dest"
  ok "Aider: 已安装 -> $dest"
  warn "Aider: 项目级别。在项目根目录运行以安装到该项目。"
}

install_windsurf() {
  local src="$INTEGRATIONS/windsurf/.windsurfrules"
  local dest="${PWD}/.windsurfrules"
  [[ -f "$src" ]] || { err "integrations/windsurf/.windsurfrules 缺失。先运行 convert.sh。"; return 1; }
  if [[ -f "$dest" ]]; then
    warn "Windsurf: .windsurfrules 已存在于 $dest（删除后重新安装）。"
    return 0
  fi
  cp "$src" "$dest"
  ok "Windsurf: 已安装 -> $dest"
  warn "Windsurf: 项目级别。在项目根目录运行以安装到该项目。"
}

install_tool() {
  case "$1" in
    claude-code) install_claude_code ;;
    antigravity) install_antigravity ;;
    gemini-cli)  install_gemini_cli  ;;
    opencode)    install_opencode    ;;
    cursor)      install_cursor      ;;
    aider)       install_aider       ;;
    windsurf)    install_windsurf    ;;
  esac
}

# ---------------------------------------------------------------------------
# 入口点
# ---------------------------------------------------------------------------
main() {
  local tool="all"
  local interactive_mode="auto"

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --tool)            tool="${2:?'--tool requires a value'}"; shift 2; interactive_mode="no" ;;
      --interactive)     interactive_mode="yes"; shift ;;
      --no-interactive)  interactive_mode="no"; shift ;;
      --help|-h)         usage ;;
      *)                 err "Unknown option: $1"; usage ;;
    esac
  done

  check_integrations

  # 验证显式工具
  if [[ "$tool" != "all" ]]; then
    local valid=false t
    for t in "${ALL_TOOLS[@]}"; do [[ "$t" == "$tool" ]] && valid=true && break; done
    if ! $valid; then
      err "未知工具 '$tool'。有效：${ALL_TOOLS[*]}"
      exit 1
    fi
  fi

  # 决定是否显示交互式界面
  local use_interactive=false
  if   [[ "$interactive_mode" == "yes" ]]; then
    use_interactive=true
  elif [[ "$interactive_mode" == "auto" && -t 0 && -t 1 && "$tool" == "all" ]]; then
    use_interactive=true
  fi

  SELECTED_TOOLS=()

  if $use_interactive; then
    interactive_select

  elif [[ "$tool" != "all" ]]; then
    SELECTED_TOOLS=("$tool")

  else
    # 非交互式：自动检测
    header "The Agency -- 扫描已安装的工具..."
    printf "\n"
    local t
    for t in "${ALL_TOOLS[@]}"; do
      if is_detected "$t" 2>/dev/null; then
        SELECTED_TOOLS+=("$t")
        printf "  ${C_GREEN}[*]${C_RESET}  %s  ${C_DIM}已检测到${C_RESET}\n" "$(tool_label "$t")"
      else
        printf "  ${C_DIM}[ ]  %s  未找到${C_RESET}\n" "$(tool_label "$t")"
      fi
    done
  fi

  if [[ ${#SELECTED_TOOLS[@]} -eq 0 ]]; then
    warn "未选择或检测到任何工具。无需安装。"
    printf "\n"
    dim "  提示：使用 --tool <name> 强制安装特定工具。"
    dim "  可用：${ALL_TOOLS[*]}"
    exit 0
  fi

  printf "\n"
  header "The Agency -- 安装 Agent"
  printf "  仓库：      %s\n" "$REPO_ROOT"
  printf "  安装：      %s\n" "${SELECTED_TOOLS[*]}"
  printf "\n"

  local installed=0 t
  for t in "${SELECTED_TOOLS[@]}"; do
    install_tool "$t"
    (( installed++ )) || true
  done

  # 完成框
  local msg="  完成！已安装 $installed 个工具。"
  printf "\n"
  box_top
  box_row "${C_GREEN}${C_BOLD}${msg}${C_RESET}"
  box_bot
  printf "\n"
  dim "  添加或编辑 Agent 后运行 ./scripts/convert.sh 重新生成。"
  printf "\n"
}

main "$@"
