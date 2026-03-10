# Antigravity 集成

安装全部 61 个 Agency Agent 作为 Antigravity 技能。每个 Agent 以 `agency-` 前缀命名以避免与现有技能冲突。

## 安装

```bash
./scripts/install.sh --tool antigravity
```

这会将文件从 `integrations/antigravity/` 复制到 `~/.gemini/antigravity/skills/`。

## 启用技能

在 Antigravity 中，通过 slug 启用 Agent：

```
使用 agency-frontend-developer 技能审查这个组件。
```

可用的 slug 遵循 `agency-<agent-name>` 模式，例如：
- `agency-frontend-developer`
- `agency-backend-architect`
- `agency-reality-checker`
- `agency-growth-hacker`

## 重新生成

修改 Agent 后，重新生成技能文件：

```bash
./scripts/convert.sh --tool antigravity
```

## 文件格式

每个技能是一个 `SKILL.md` 文件，带有 Antigravity 兼容的 frontmatter：

```yaml
---
name: agency-frontend-developer
description: 专业前端开发者，专注于...
risk: low
source: community
date_added: '2026-03-08'
---
```
