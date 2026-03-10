# OpenCode 集成

OpenCode 使用与 Claude Code 相同的 Agent 格式——`.md` 文件带 YAML frontmatter，存储在 `.opencode/agent/` 中。技术上无需转换，但此集成将 Agent 打包为正确的目录结构以便直接使用。

## 安装

```bash
# 从项目根目录运行
cd /your/project
/path/to/agency-agents/scripts/install.sh --tool opencode
```

这会在项目目录中创建 `.opencode/agent/<slug>.md` 文件。

## 启用 Agent

在 OpenCode 中，按名称或描述引用 Agent：

```
使用前端开发者 Agent 帮助构建这个组件。
```

```
启用现实检查员 Agent 并审查这个 PR。
```

也可以从 OpenCode UI 的 Agent 选择器中选择 Agent。

## Agent 格式

OpenCode Agent 使用与 Claude Code 相同的 frontmatter：

```yaml
---
name: 前端开发者
description: 专业前端开发者，专注于现代 Web 技术...
color: cyan
---
```

## 项目级 vs 全局

`.opencode/agent/` 中的 Agent 是**项目级别**的。要在所有项目中全局可用，将它们复制到 OpenCode 配置目录：

```bash
mkdir -p ~/.config/opencode/agent
cp integrations/opencode/agent/*.md ~/.config/opencode/agent/
```

## 重新生成

```bash
./scripts/convert.sh --tool opencode
```
