#!/usr/bin/env bash
#
# convert.sh — 将 agency agent .md 文件转换为特定工具格式。
#
# 从标准分类目录读取所有 Agent 文件，输出转换后的文件到 integrations/<tool>/。
# 添加或修改 Agent 后运行此脚本重新生成分发文件。
#
# 用法：
#   ./scripts/convert.sh [--tool <name>] [--out <dir>] [--help]
#
# 工具：
#   antigravity  — Antigravity 技能文件 (~/.gemini/antigravity/skills/)
#   gemini-cli   — Gemini CLI 扩展 (skills/ + gemini-extension.json)
#   opencode     — OpenCode Agent 文件 (.opencode/agent/*.md)
#   cursor       — Cursor 规则文件 (.cursor/rules/*.mdc)
#   aider        — 单个 CONVENTIONS.md 供 Aider 使用
#   windsurf     — 单个 .windsurfrules 供 Windsurf 使用
#   all          — 所有工具（默认）
#
# 输出写入相对于仓库根目录的 integrations/<tool>/。
# 此脚本从不触碰用户配置目录——安装请使用 install.sh。

set -euo pipefail

# --- 颜色辅助函数 ---
if [[ -t 1 ]]; then
  GREEN=$'\033[0;32m'; YELLOW=$'\033[1;33m'; RED=$'\033[0;31m'; BOLD=$'\033[1m'; RESET=$'\033[0m'
else
  GREEN=''; YELLOW=''; RED=''; BOLD=''; RESET=''
fi

info()    { printf "${GREEN}[OK]${RESET}  %s\n" "$*"; }
warn()    { printf "${YELLOW}[!!]${RESET}  %s\n" "$*"; }
error()   { printf "${RED}[ERR]${RESET} %s\n" "$*" >&2; }
header()  { echo -e "\n${BOLD}$*${RESET}"; }

# --- 路径 ---
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
OUT_DIR="$REPO_ROOT/integrations"
TODAY="$(date +%Y-%m-%d)"

AGENT_DIRS=(
  design engineering marketing product project-management
  testing support spatial-computing specialized
)

# --- 用法 ---
usage() {
  sed -n '3,22p' "$0" | sed 's/^# \{0,1\}//'
  exit 0
}

# --- Frontmatter 辅助函数 ---

# 从 YAML frontmatter 块提取单个字段值。
# 用法：get_field <field> <file>
get_field() {
  local field="$1" file="$2"
  awk -v f="$field" '
    /^---$/ { fm++; next }
    fm == 1 && $0 ~ "^" f ": " { sub("^" f ": ", ""); print; exit }
  ' "$file"
}

# 移除前导 frontmatter 块，仅返回正文。
# 用法：get_body <file>
get_body() {
  awk 'BEGIN{fm=0} /^---$/{fm++; next} fm>=2{print}' "$1"
}

# 将人类可读的 Agent 名称转换为小写短横线分隔的 slug。
# "Frontend Developer" → "frontend-developer"
slugify() {
  echo "$1" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//;s/-$//'
}

# --- 各工具转换器 ---

convert_antigravity() {
  local file="$1"
  local name description slug outdir outfile body

  name="$(get_field "name" "$file")"
  description="$(get_field "description" "$file")"
  slug="agency-$(slugify "$name")"
  body="$(get_body "$file")"

  outdir="$OUT_DIR/antigravity/$slug"
  outfile="$outdir/SKILL.md"
  mkdir -p "$outdir"

  # Antigravity SKILL.md 格式与 ~/.gemini/antigravity/skills/ 中的社区技能一致
  cat > "$outfile" <<HEREDOC
---
name: ${slug}
description: ${description}
risk: low
source: community
date_added: '${TODAY}'
---
${body}
HEREDOC
}

convert_gemini_cli() {
  local file="$1"
  local name description slug outdir outfile body

  name="$(get_field "name" "$file")"
  description="$(get_field "description" "$file")"
  slug="$(slugify "$name")"
  body="$(get_body "$file")"

  outdir="$OUT_DIR/gemini-cli/skills/$slug"
  outfile="$outdir/SKILL.md"
  mkdir -p "$outdir"

  # Gemini CLI 技能格式：最简 frontmatter（仅 name + description）
  cat > "$outfile" <<HEREDOC
---
name: ${slug}
description: ${description}
---
${body}
HEREDOC
}

convert_opencode() {
  local file="$1"
  local name description color slug outfile body

  name="$(get_field "name" "$file")"
  description="$(get_field "description" "$file")"
  color="$(get_field "color" "$file")"
  slug="$(slugify "$name")"
  body="$(get_body "$file")"

  outfile="$OUT_DIR/opencode/agent/${slug}.md"
  mkdir -p "$OUT_DIR/opencode/agent"

  # OpenCode Agent 格式：与源格式相同（带 frontmatter 的 .md）。
  # 支持 color 字段。除了目录放置外无需转换。
  cat > "$outfile" <<HEREDOC
---
name: ${name}
description: ${description}
color: ${color}
---
${body}
HEREDOC
}

convert_cursor() {
  local file="$1"
  local name description slug outfile body

  name="$(get_field "name" "$file")"
  description="$(get_field "description" "$file")"
  slug="$(slugify "$name")"
  body="$(get_body "$file")"

  outfile="$OUT_DIR/cursor/rules/${slug}.mdc"
  mkdir -p "$OUT_DIR/cursor/rules"

  # Cursor .mdc 格式：description + globs + alwaysApply frontmatter
  cat > "$outfile" <<HEREDOC
---
description: ${description}
globs: ""
alwaysApply: false
---
${body}
HEREDOC
}

# Aider 和 Windsurf 是单文件格式——先累积到临时文件，最后写入。
AIDER_TMP="$(mktemp)"
WINDSURF_TMP="$(mktemp)"
trap 'rm -f "$AIDER_TMP" "$WINDSURF_TMP"' EXIT

# 一次性写入 Aider/Windsurf 头部
cat > "$AIDER_TMP" <<'HEREDOC'
# The Agency — AI Agent Conventions
#
# 此文件为 Aider 提供 The Agency (https://github.com/msitarzewski/agency-agents)
# 的全部专业 AI Agent 名单。
#
# 要在 Aider 会话 prompt 中按名称引用 Agent 来启用它，例如：
#   "Use the Frontend Developer agent to review this component."
#
# 由 scripts/convert.sh 生成——请勿手动编辑。

HEREDOC

cat > "$WINDSURF_TMP" <<'HEREDOC'
# The Agency — Windsurf AI Agent Rules
#
# The Agency 的全部专业 AI Agent 名单。
# 要在 Windsurf 对话中按名称引用 Agent 来启用它。
#
# 由 scripts/convert.sh 生成——请勿手动编辑。

HEREDOC

accumulate_aider() {
  local file="$1"
  local name description body

  name="$(get_field "name" "$file")"
  description="$(get_field "description" "$file")"
  body="$(get_body "$file")"

  cat >> "$AIDER_TMP" <<HEREDOC

---

## ${name}

> ${description}

${body}
HEREDOC
}

accumulate_windsurf() {
  local file="$1"
  local name description body

  name="$(get_field "name" "$file")"
  description="$(get_field "description" "$file")"
  body="$(get_body "$file")"

  cat >> "$WINDSURF_TMP" <<HEREDOC

================================================================================
## ${name}
${description}
================================================================================

${body}

HEREDOC
}

# --- 主循环 ---

run_conversions() {
  local tool="$1"
  local count=0

  for dir in "${AGENT_DIRS[@]}"; do
    local dirpath="$REPO_ROOT/$dir"
    [[ -d "$dirpath" ]] || continue

    while IFS= read -r -d '' file; do
      # 跳过没有 frontmatter 的文件（非 Agent 文档如 QUICKSTART.md）
      local first_line
      first_line="$(head -1 "$file")"
      [[ "$first_line" == "---" ]] || continue

      local name
      name="$(get_field "name" "$file")"
      [[ -n "$name" ]] || continue

      case "$tool" in
        antigravity) convert_antigravity "$file" ;;
        gemini-cli)  convert_gemini_cli  "$file" ;;
        opencode)    convert_opencode    "$file" ;;
        cursor)      convert_cursor      "$file" ;;
        aider)       accumulate_aider    "$file" ;;
        windsurf)    accumulate_windsurf "$file" ;;
      esac

      (( count++ )) || true
    done < <(find "$dirpath" -maxdepth 1 -name "*.md" -type f -print0 | sort -z)
  done

  echo "$count"
}

write_single_file_outputs() {
  # Aider
  mkdir -p "$OUT_DIR/aider"
  cp "$AIDER_TMP" "$OUT_DIR/aider/CONVENTIONS.md"

  # Windsurf
  mkdir -p "$OUT_DIR/windsurf"
  cp "$WINDSURF_TMP" "$OUT_DIR/windsurf/.windsurfrules"
}

# --- 入口点 ---

main() {
  local tool="all"

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --tool) tool="${2:?'--tool requires a value'}"; shift 2 ;;
      --out)  OUT_DIR="${2:?'--out requires a value'}"; shift 2 ;;
      --help|-h) usage ;;
      *) error "Unknown option: $1"; usage ;;
    esac
  done

  local valid_tools=("antigravity" "gemini-cli" "opencode" "cursor" "aider" "windsurf" "all")
  local valid=false
  for t in "${valid_tools[@]}"; do [[ "$t" == "$tool" ]] && valid=true && break; done
  if ! $valid; then
    error "Unknown tool '$tool'. Valid: ${valid_tools[*]}"
    exit 1
  fi

  header "The Agency -- 转换 Agent 为特定工具格式"
  echo "  仓库：  $REPO_ROOT"
  echo "  输出：  $OUT_DIR"
  echo "  工具：  $tool"
  echo "  日期：  $TODAY"

  local tools_to_run=()
  if [[ "$tool" == "all" ]]; then
    tools_to_run=("antigravity" "gemini-cli" "opencode" "cursor" "aider" "windsurf")
  else
    tools_to_run=("$tool")
  fi

  local total=0
  for t in "${tools_to_run[@]}"; do
    header "转换中：$t"
    local count
    count="$(run_conversions "$t")"
    total=$(( total + count ))

    # Gemini CLI 还需要扩展清单
    if [[ "$t" == "gemini-cli" ]]; then
      mkdir -p "$OUT_DIR/gemini-cli"
      cat > "$OUT_DIR/gemini-cli/gemini-extension.json" <<'HEREDOC'
{
  "name": "agency-agents",
  "version": "1.0.0"
}
HEREDOC
      info "已写入 gemini-extension.json"
    fi

    info "已为 $t 转换 $count 个 Agent"
  done

  # 累积后写入单文件输出
  if [[ "$tool" == "all" || "$tool" == "aider" || "$tool" == "windsurf" ]]; then
    write_single_file_outputs
    info "已写入 integrations/aider/CONVENTIONS.md"
    info "已写入 integrations/windsurf/.windsurfrules"
  fi

  echo ""
  info "完成。总转换数：$total"
}

main "$@"
