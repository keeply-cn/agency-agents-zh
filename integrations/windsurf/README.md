# Windsurf 集成

全部 61 个 Agency Agent 合并到单个 `.windsurfrules` 文件中。规则是**项目级别**的——从项目根目录安装。

## 安装

```bash
# 从项目根目录运行
cd /your/project
/path/to/agency-agents/scripts/install.sh --tool windsurf
```

## 启用 Agent

在 Windsurf 中，在 prompt 中按名称引用 Agent：

```
使用前端开发者 Agent 构建这个组件。
```

## 重新生成

```bash
./scripts/convert.sh --tool windsurf
```
