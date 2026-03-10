# 🔌 集成

本目录包含 The Agency 的 61 个 AI Agent 转换后的格式，兼容流行的 Agent 编程工具。

## 支持的工具

- **[Claude Code](#claude-code)** — `.md` Agent 文件，直接使用仓库
- **[Antigravity](#antigravity)** — `antigravity/` 中每个 Agent 一个 `SKILL.md`
- **[Gemini CLI](#gemini-cli)** — 扩展 + `gemini-cli/` 中的 `SKILL.md` 文件
- **[OpenCode](#opencode)** — `opencode/` 中的 `.md` Agent 文件
- **[Cursor](#cursor)** — `cursor/` 中的 `.mdc` 规则文件
- **[Aider](#aider)** — `aider/` 中的 `CONVENTIONS.md`
- **[Windsurf](#windsurf)** — `windsurf/` 中的 `.windsurfrules`

## 快速安装

```bash
# 自动安装到所有检测到的工具
./scripts/install.sh

# 安装到特定工具
./scripts/install.sh --tool antigravity
./scripts/install.sh --tool gemini-cli
./scripts/install.sh --tool cursor
./scripts/install.sh --tool aider
./scripts/install.sh --tool windsurf
./scripts/install.sh --tool claude-code
```

## 重新生成分发文件

如果添加或修改了 Agent，重新生成所有分发文件：

```bash
./scripts/convert.sh
```

---

## Claude Code

The Agency 最初就是为 Claude Code 设计的。Agent 无需转换即可原生使用。

```bash
cp -r <category>/*.md ~/.claude/agents/
# 或者一次性安装所有内容：
./scripts/install.sh --tool claude-code
```

详见 [claude-code/README.md](claude-code/README.md)。

---

## Antigravity

技能安装到 `~/.gemini/antigravity/skills/`。每个 Agent 成为一个独立的技能，
以 `agency-` 前缀命名以避免冲突。

```bash
./scripts/install.sh --tool antigravity
```

详见 [antigravity/README.md](antigravity/README.md)。

---

## Gemini CLI

Agent 打包为 Gemini CLI 扩展，包含独立的技能文件。
扩展安装到 `~/.gemini/extensions/agency-agents/`。

```bash
./scripts/install.sh --tool gemini-cli
```

详见 [gemini-cli/README.md](gemini-cli/README.md)。

---

## Cursor

每个 Agent 成为一个 `.mdc` 规则文件。规则是项目级别的——从项目根目录运行安装程序。

```bash
cd /your/project && /path/to/agency-agents/scripts/install.sh --tool cursor
```

详见 [cursor/README.md](cursor/README.md)。

---

## Aider

所有 Agent 合并到单个 `CONVENTIONS.md` 文件中，Aider 在项目根目录检测到此文件时会自动读取。

```bash
cd /your/project && /path/to/agency-agents/scripts/install.sh --tool aider
```

详见 [aider/README.md](aider/README.md)。

---

## Windsurf

所有 Agent 合并到单个 `.windsurfrules` 文件中，放在项目根目录。

```bash
cd /your/project && /path/to/agency-agents/scripts/install.sh --tool windsurf
```

详见 [windsurf/README.md](windsurf/README.md)。
