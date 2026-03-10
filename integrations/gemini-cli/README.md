# Gemini CLI 集成

将全部 61 个 Agency Agent 打包为 Gemini CLI 扩展。扩展安装到 `~/.gemini/extensions/agency-agents/`。

## 安装

```bash
./scripts/install.sh --tool gemini-cli
```

## 启用技能

在 Gemini CLI 中，按名称引用 Agent：

```
使用 frontend-developer 技能帮我构建这个 UI。
```

## 扩展结构

```
~/.gemini/extensions/agency-agents/
  gemini-extension.json
  skills/
    frontend-developer/SKILL.md
    backend-architect/SKILL.md
    reality-checker/SKILL.md
    ...
```

## 重新生成

```bash
./scripts/convert.sh --tool gemini-cli
```
