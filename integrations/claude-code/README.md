# Claude Code 集成

The Agency 是为 Claude Code 构建的。无需转换——Agent 使用现有的 `.md` + YAML frontmatter 格式原生工作。

## 安装

```bash
# 复制所有 Agent 到 Claude Code Agent 目录
./scripts/install.sh --tool claude-code

# 或者手动复制一个分类
cp engineering/*.md ~/.claude/agents/
```

## 启用 Agent

在任何 Claude Code 会话中，按名称引用 Agent：

```
启用前端开发者，帮我构建一个 React 组件。
```

```
使用现实检查员 Agent 验证这个功能是生产就绪的。
```

## Agent 目录

Agent 按部门组织。详见 [主 README](../../README.md) 了解全部 61 位专家的完整名单。
