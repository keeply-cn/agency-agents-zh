# Cursor 集成

将全部 61 个 Agency Agent 转换为 Cursor `.mdc` 规则文件。规则是**项目级别**的——从项目根目录安装。

## 安装

```bash
# 从项目根目录运行
cd /your/project
/path/to/agency-agents/scripts/install.sh --tool cursor
```

这会在项目中创建 `.cursor/rules/<agent-slug>.mdc` 文件。

## 启用规则

在 Cursor 中，在 prompt 中引用 Agent：

```
@frontend-developer 审查这个 React 组件的性能问题。
```

或者通过编辑 frontmatter 将规则设为始终启用：

```yaml
---
description: 专业前端开发者...
globs: "**/*.tsx,**/*.ts"
alwaysApply: true
---
```

## 重新生成

```bash
./scripts/convert.sh --tool cursor
```
