# Aider 集成

全部 61 个 Agency Agent 合并到单个 `CONVENTIONS.md` 文件中。
Aider 在项目根目录检测到此文件时会自动读取。

## 安装

```bash
# 从项目根目录运行
cd /your/project
/path/to/agency-agents/scripts/install.sh --tool aider
```

## 启用 Agent

在 Aider 会话中，按名称引用 Agent：

```
使用前端开发者 Agent 重构这个组件。
```

```
应用现实检查员 Agent 验证这是生产就绪的。
```

## 手动使用

也可以直接传入 conventions 文件：

```bash
aider --read CONVENTIONS.md
```

## 重新生成

```bash
./scripts/convert.sh --tool aider
```
