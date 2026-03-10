# 🌐 NEXUS — 专家网络，战略统一

## 多智能体编排的完整运营手册

> **NEXUS** 将 The Agency 的独立 AI 专家转变为同步智能网络。这不是提示词集合——而是一套**部署准则**，可将 The Agency 转变为任何项目、产品或组织的力量倍增器。

---

## 目录

1. [战略基础](#1-战略基础)
2. [NEXUS 运营模型](#2-the-nexus-运营模型)
3. [Phase 0 — 情报与发现](#3-phase-0--情报与发现)
4. [Phase 1 — 战略与架构](#4-phase-1--战略与架构)
5. [Phase 2 — 基础与脚手架](#5-phase-2--基础与脚手架)
6. [Phase 3 — 构建与迭代](#6-phase-3--构建与迭代)
7. [Phase 4 — 质量与加固](#7-phase-4--质量与加固)
8. [Phase 5 — 发布与增长](#8-phase-5--发布与增长)
9. [Phase 6 — 运营与演进](#9-phase-6--运营与演进)
10. [智能体协调矩阵](#10-智能体协调矩阵)
11. [交接协议](#11-交接协议)
12. [质量关卡](#12-质量关卡)
13. [风险管理](#13-风险管理)
14. [成功指标](#14-成功指标)
15. [快速入门激活指南](#15-快速入门激活指南)

---

## 1. 战略基础

### 1.1 NEXUS 解决的问题

单个智能体很强大。但缺乏协调时，它们会产生：
- 冲突的架构决策
- 跨部门重复劳动
- 交接边界的质量缺口
- 没有共享上下文或机构记忆

**NEXUS 消除这些失败模式**，通过定义：
- **谁** 在每个阶段激活
- **什么** 他们产出以及为谁
- **何时** 交接以及交给谁
- **如何** 在推进前验证质量
- **为什么** 每个智能体存在于管道中（没有乘客）

### 1.2 核心原则

| 原则 | 描述 |
|-----------|-------------|
| **管道完整性** | 没有通过质量关卡，阶段不得推进 |
| **上下文连续性** | 每次交接携带完整上下文——没有智能体冷启动 |
| **并行执行** | 独立工作流并发运行以压缩时间线 |
| **证据胜于声明** | 所有质量评估需要证明，而非断言 |
| **快速失败，快速修复** | 每个任务最多 3 次重试，然后升级 |
| **单一事实来源** | 一个规范、一个任务列表、一个架构文档 |

### 1.3 按部门划分的智能体名单

| 部门 | 智能体 | 主要 NEXUS 角色 |
|----------|--------|--------------------|
| **工程部** | Frontend Developer, Backend Architect, Mobile App Builder, AI Engineer, DevOps Automator, Rapid Prototyper, Senior Developer | 构建、部署和维护所有技术系统 |
| **设计部** | UI Designer, UX Researcher, UX Architect, Brand Guardian, Visual Storyteller, Whimsy Injector, Image Prompt Engineer | 定义视觉标识、用户体验和品牌一致性 |
| **营销部** | Growth Hacker, Content Creator, Twitter Engager, TikTok Strategist, Instagram Curator, Reddit Community Builder, App Store Optimizer, Social Media Strategist | 驱动获客、参与度和市场存在感 |
| **产品部** | Sprint Prioritizer, Trend Researcher, Feedback Synthesizer | 定义构建什么、何时以及为什么 |
| **项目管理部** | Studio Producer, Project Shepherd, Studio Operations, Experiment Tracker, Senior Project Manager | 编排时间线、资源和跨职能协调 |
| **测试部** | Evidence Collector, Reality Checker, Test Results Analyzer, Performance Benchmarker, API Tester, Tool Evaluator, Workflow Optimizer | 通过基于证据的评估验证质量 |
| **支持部** | Support Responder, Analytics Reporter, Finance Tracker, Infrastructure Maintainer, Legal Compliance Checker, Executive Summary Generator | 维持运营、合规性和业务智能 |
| **空间计算部** | XR Interface Architect, macOS Spatial/Metal Engineer, XR Immersive Developer, XR Cockpit Interaction Specialist, visionOS Spatial Engineer, Terminal Integration Specialist | 构建沉浸式和空间计算体验 |
| **专项部** | Agents Orchestrator, Data Analytics Reporter, LSP/Index Engineer, Sales Data Extraction Agent, Data Consolidation Agent, Report Distribution Agent | 跨领域协调、深度分析和代码智能 |

---

## 2. NEXUS 运营模型

### 2.1 七阶段管道

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        NEXUS 管道                                       │
│                                                                         │
│  Phase 0        Phase 1         Phase 2          Phase 3                │
│  发现      ───▶ 战略规划 ───▶ 搭建基础   ───▶  构建                    │
│  情报         架构           基础           Dev ↔ QA 循环               │
│                                                                         │
│  Phase 4        Phase 5         Phase 6                                 │
│  加固     ───▶  发布      ───▶  运营                                   │
│  质量关卡      进入市场       持续运营                                  │
│                                                                         │
│  ◆ 每个阶段之间有质量关卡                                                │
│  ◆ 阶段内并行轨道                                                        │
│  ◆ 每个边界都有反馈循环                                                  │
└─────────────────────────────────────────────────────────────────────────┘
```

### 2.2 指挥结构

```
                    ┌──────────────────────┐
                    │  Agents Orchestrator  │  ◄── 管道控制器
                    │  (专项部)            │
                    └──────────┬───────────┘
                               │
              ┌────────────────┼────────────────┐
              │                │                │
     ┌────────▼──────┐ ┌──────▼───────┐ ┌──────▼──────────┐
     │ Studio        │ │ Project      │ │ Senior Project   │
     │ Producer      │ │ Shepherd     │ │ Manager          │
     │ (产品组合)     │ │ (执行)       │ │ (任务范围)       │
     └───────────────┘ └──────────────┘ └─────────────────┘
              │                │                │
              ▼                ▼                ▼
     ┌─────────────────────────────────────────────────┐
     │           部门主管（每个阶段）                    │
     │  工程 │ 设计 │ 营销 │ 产品 │ QA                  │
     └─────────────────────────────────────────────────┘
```

### 2.3 激活模式

NEXUS 支持三种部署配置：

| 模式 | 激活的智能体 | 用例 | 时间线 |
|------|--------------|----------|----------|
| **NEXUS-Full** | 全部 | 企业产品发布、完整生命周期 | 12-24 周 |
| **NEXUS-Sprint** | 15-25 | 功能开发、MVP 构建 | 2-6 周 |
| **NEXUS-Micro** | 5-10 | Bug 修复、内容活动、单一交付物 | 1-5 天 |

---

## 3. Phase 0 — 情报与发现

> **目标**：在投入资源之前了解形势。问题验证之前不构建。

### 3.1 活跃智能体

| 智能体 | 阶段角色 | 主要产出 |
|-------|--------------|----------------|
| **Trend Researcher** | 市场情报负责人 | 市场规模分析报告（TAM/SAM/SOM） |
| **Feedback Synthesizer** | 用户需求分析 | 综合反馈报告（痛点） |
| **UX Researcher** | 用户行为分析 | 研究结果（角色和旅程地图） |
| **Analytics Reporter** | 数据 landscape 评估 | 数据审计报告（可用信号） |
| **Legal Compliance Checker** | 监管扫描 | 合规要求矩阵 |
| **Tool Evaluator** | 技术 landscape | 技术栈评估 |

### 3.2 并行工作流

```
工作流 A：市场情报                    工作流 B：用户情报
├── Trend Researcher                       ├── Feedback Synthesizer
│   ├── 竞争格局                              │   ├── 多渠道反馈收集
│   ├── 市场规模（TAM/SAM/SOM）               │   ├── 情感分析
│   └── 趋势生命周期映射                       │   └── 痛点优先级排序
│                                          │
├── Analytics Reporter                     ├── UX Researcher
│   ├── 现有数据审计                          │   ├── 用户访谈/调查
│   ├── 信号识别                             │   ├── 角色开发
│   └── 基线指标                             │   └── 旅程映射
│                                          │
└── Legal Compliance Checker               └── Tool Evaluator
    ├── 监管要求                                ├── 技术评估
    ├── 数据处理约束                            ├── 自建 vs 购买分析
    └── 管辖映射                               └── 集成可行性
```

### 3.3 Phase 0 质量关卡

**关卡守护者**：Executive Summary Generator

| 标准 | 阈值 | 所需证据 |
|-----------|-----------|-------------------|
| 市场机会验证 | TAM > 最低可行阈值 | Trend Researcher 报告（含来源） |
| 用户需求确认 | ≥3 个已验证痛点 | Feedback Synthesizer + UX Researcher 数据 |
| 监管路径清晰 | 无阻塞合规问题 | Legal Compliance Checker 矩阵 |
| 数据基础评估 | 关键指标已识别 | Analytics Reporter 审计 |
| 技术可行性确认 | 栈已验证 | Tool Evaluator 评估 |

**产出**：执行摘要（≤500 字，SCQA 格式）→ 决策：GO / NO-GO / PIVOT

---

## 4. Phase 1 — 战略与架构

> **目标**：定义我们要构建什么、如何结构化，以及成功是什么样子——在写第一行代码之前。

### 4.1 活跃智能体

| 智能体 | 阶段角色 | 主要产出 |
|-------|--------------|----------------|
| **Studio Producer** | 战略产品组合对齐 | 战略产品组合计划 |
| **Senior Project Manager** | 规格到任务转换 | 综合任务列表 |
| **Sprint Prioritizer** | 功能优先级排序 | 优先级待办事项（RICE 评分） |
| **UX Architect** | 技术架构 + UX 基础 | 架构规范 + CSS 设计系统 |
| **Brand Guardian** | 品牌标识系统 | 品牌基础文档 |
| **Backend Architect** | 系统架构 | 系统架构规范 |
| **AI Engineer** | AI/ML 架构（如适用） | ML 系统设计 |
| **Finance Tracker** | 预算和资源规划 | 财务计划（含 ROI 预测） |

### 4.2 执行序列

```
步骤 1：战略框架（并行）
├── Studio Producer → 战略产品组合计划（愿景、目标、ROI 目标）
├── Brand Guardian → 品牌基础（目的、价值观、视觉标识系统）
└── Finance Tracker → 预算框架（资源分配、成本预测）

步骤 2：技术架构（并行，步骤 1 之后）
├── UX Architect → CSS 设计系统 + 布局框架 + UX 结构
├── Backend Architect → 系统架构（服务、数据库、API）
├── AI Engineer → ML 架构（模型、管道、推理策略）
└── Senior Project Manager → 任务列表（规格 → 任务、精确要求）

步骤 3：优先级排序（顺序，步骤 2 之后）
└── Sprint Prioritizer → RICE 评分待办事项（含冲刺分配）
    ├── 输入：任务列表 + 架构规范 + 预算框架
    ├── 输出：优先级冲刺计划（含依赖映射）
    └── 验证：Studio Producer 确认战略对齐
```

### 4.3 Phase 1 质量关卡

**关卡守护者**：Studio Producer + Reality Checker（双重签署）

| 标准 | 阈值 | 所需证据 |
|-----------|-----------|-------------------|
| 架构覆盖所有需求 | 100% 规格覆盖 | Senior PM 任务列表交叉引用 |
| 品牌系统完整 | Logo、颜色、字体、语气已定义 | Brand Guardian 交付物 |
| 技术可行性验证 | 所有组件有实现路径 | Backend Architect + UX Architect 规范 |
| 预算批准 | 在组织约束内 | Finance Tracker 计划 |
| 冲刺计划现实 | 基于速度的估算 | Sprint Prioritizer 待办事项 |

**产出**：已批准的架构包 → Phase 2 激活

---

## 5. Phase 2 — 基础与脚手架

> **目标**：构建所有后续工作依赖的技术和运营基础。在添加肌肉之前先让骨架站立。

### 5.1 活跃智能体

| 智能体 | 阶段角色 | 主要产出 |
|-------|--------------|----------------|
| **DevOps Automator** | CI/CD 管道 + 基础设施 | 部署管道 + IaC 模板 |
| **Frontend Developer** | 项目脚手架 + 组件库 | 应用骨架 + 设计系统实现 |
| **Backend Architect** | 数据库 + API 基础 | 模式 + API 脚手架 + 认证系统 |
| **UX Architect** | CSS 系统实现 | 设计令牌 + 布局框架 |
| **Infrastructure Maintainer** | 云基础设施设置 | 监控 + 日志 + 告警 |
| **Studio Operations** | 流程设置 | 协作工具 + 工作流 |

### 5.2 并行工作流

```
工作流 A：基础设施                    工作流 B：应用基础
├── DevOps Automator                      ├── Frontend Developer
│   ├── CI/CD 管道（GitHub Actions）       │   ├── 项目脚手架
│   ├── 容器编排                           │   ├── 组件库设置
│   └── 环境配置                           │   └── 设计系统集成
│                                         │
├── Infrastructure Maintainer             ├── Backend Architect
│   ├── 云资源配置                         │   ├── 数据库模式部署
│   ├── 监控（Prometheus/Grafana）         │   ├── API 脚手架 + 认证
│   └── 安全加固                           │   └── 服务通信层
│                                         │
└── Studio Operations                     └── UX Architect
    ├── Git 工作流 + 分支策略                 ├── CSS 设计令牌
    ├── 沟通渠道                             ├── 响应式布局系统
    └── 文档模板                             └── 主题系统（浅色/深色/系统）
```

### 5.3 Phase 2 质量关卡

**关卡守护者**：DevOps Automator + Evidence Collector

| 标准 | 阈值 | 所需证据 |
|-----------|-----------|-------------------|
| CI/CD 管道运行 | 构建 + 测试 + 部署工作 | 管道执行日志 |
| 数据库模式部署 | 所有表/索引已创建 | 迁移成功 + 模式转储 |
| API 脚手架响应 | 健康检查端点上线 | curl 响应截图 |
| 前端渲染 | 骨架应用在浏览器中加载 | Evidence Collector 截图 |
| 监控激活 | 仪表板显示指标 | Grafana/监控截图 |
| 设计系统实现 | 令牌 + 组件可用 | 组件库演示 |

**产出**：带有完整 DevOps 管道的工作骨架应用 → Phase 3 激活

---

## 6. Phase 3 — 构建与迭代

> **目标**：通过持续 Dev↔QA 循环实现功能。每个任务在下一个开始之前都要验证。这是大部分工作发生的地方。

### 6.1 Dev↔QA 循环

这是 NEXUS 的核心。Agents Orchestrator 管理**逐个任务的质量循环**：

```
┌─────────────────────────────────────────────────────────┐
│                   DEV ↔ QA 循环                          │
│                                                          │
│  ┌──────────┐    ┌──────────┐    ┌──────────────────┐   │
│  │ Developer │───▶│ Evidence │───▶│ 决策逻辑          │   │
│  │ Agent     │    │ Collector│    │                   │   │
│  │           │    │ (QA)     │    │ 通过 → 下一个任务  │   │
│  │ 实施       │    │          │    │ 失败 → 重试（≤3）  │   │
│  │ 任务 N     │    │ 测试      │    │ 阻塞 → 升级        │   │
│  │           │◀───│ 任务 N   │◀───│                   │   │
│  └──────────┘    └──────────┘    └──────────────────┘   │
│       ▲                                    │             │
│       │            QA 反馈                  │             │
│       └────────────────────────────────────┘             │
│                                                          │
│  Orchestrator 跟踪：尝试次数、QA 反馈、                    │
│  任务状态、累计质量指标                                   │
└─────────────────────────────────────────────────────────┘
```

### 6.2 按任务类型的智能体分配

| 任务类型 | 主要开发者 | QA 智能体 | 专项支持 |
|-----------|------------------|----------|-------------------|
| 前端 UI | Frontend Developer | Evidence Collector | UI Designer, Whimsy Injector |
| 后端 API | Backend Architect | API Tester | Performance Benchmarker |
| 数据库 | Backend Architect | API Tester | Analytics Reporter |
| 移动端 | Mobile App Builder | Evidence Collector | UX Researcher |
| AI/ML 功能 | AI Engineer | Test Results Analyzer | Data Analytics Reporter |
| 基础设施 | DevOps Automator | Performance Benchmarker | Infrastructure Maintainer |
| 高级打磨 | Senior Developer | Evidence Collector | Visual Storyteller |
| 快速原型 | Rapid Prototyper | Evidence Collector | Experiment Tracker |
| 空间/XR | XR Immersive Developer | Evidence Collector | XR Interface Architect |
| visionOS | visionOS Spatial Engineer | Evidence Collector | macOS Spatial/Metal Engineer |
| 驾驶舱 UI | XR Cockpit Interaction Specialist | Evidence Collector | XR Interface Architect |
| CLI/终端 | Terminal Integration Specialist | API Tester | LSP/Index Engineer |
| 代码智能 | LSP/Index Engineer | Test Results Analyzer | Senior Developer |

### 6.3 并行构建轨道

对于复杂项目，多个轨道同时运行：

```
轨道 A：核心产品                      轨道 B：增长与营销
├── Frontend Developer                   ├── Growth Hacker
│   └── UI 实现                            │   └── 病毒循环 + 推荐系统
├── Backend Architect                    ├── Content Creator
│   └── API + 业务逻辑                     │   └── 发布内容 + 编辑日历
├── AI Engineer                          ├── Social Media Strategist
│   └── ML 功能 + 管道                     │   └── 跨平台活动
│                                        ├── App Store Optimizer（如移动端）
│                                        │   └── ASO 策略 + 元数据
│                                        │
轨道 C：质量与运营                  轨道 D：品牌与体验
├── Evidence Collector                   ├── UI Designer
│   └── 持续 QA 截图                       │   └── 组件优化
├── API Tester                           ├── Brand Guardian
│   └── 端点验证                          │   └── 品牌一致性审计
├── Performance Benchmarker              ├── Visual Storyteller
│   └── 负载测试 + 优化                   │   └── 视觉叙事资产
├── Workflow Optimizer                   └── Whimsy Injector
│   └── 流程改进                          └── 愉悦时刻 + 微交互
└── Experiment Tracker
    └── A/B 测试管理
```

### 6.4 Phase 3 质量关卡

**关卡守护者**：Agents Orchestrator

| 标准 | 阈值 | 所需证据 |
|-----------|-----------|-------------------|
| 所有任务通过 QA | 100% 任务完成 | 每个任务的 Evidence Collector 截图 |
| API 端点验证 | 所有端点已测试 | API Tester 报告 |
| 性能基线达标 | P95 < 200ms, LCP < 2.5s | Performance Benchmarker 报告 |
| 品牌一致性验证 | 95%+ 遵守 | Brand Guardian 审计 |
| 无关键 bug | 零 P0/P1 未解决问题 | Test Results Analyzer 摘要 |

**产出**：功能完整的应用 → Phase 4 激活

---

## 7. Phase 4 — 质量与加固

> **目标**：最终质量考验。Reality Checker 默认"需要改进"——你必须用压倒性证据证明生产就绪。

### 7.1 活跃智能体

| 智能体 | 阶段角色 | 主要产出 |
|-------|--------------|----------------|
| **Reality Checker** | 最终集成测试（默认 NEEDS WORK） | 基于现实的集成报告 |
| **Evidence Collector** | 综合视觉证据 | 截图证据包 |
| **Performance Benchmarker** | 负载测试 + 优化 | 性能认证 |
| **API Tester** | 完整 API 回归套件 | API 测试报告 |
| **Test Results Analyzer** | 聚合质量指标 | 质量指标仪表板 |
| **Legal Compliance Checker** | 最终合规审计 | 合规认证 |
| **Infrastructure Maintainer** | 生产就绪检查 | 基础设施就绪报告 |
| **Workflow Optimizer** | 流程效率审查 | 优化建议 |

### 7.2 加固序列

```
步骤 1：证据收集（并行）
├── Evidence Collector → 完整截图套件（桌面、平板、移动）
├── API Tester → 完整端点回归
├── Performance Benchmarker → 10 倍预期流量负载测试
└── Legal Compliance Checker → 最终监管审计

步骤 2：分析（并行，步骤 1 之后）
├── Test Results Analyzer → 将所有测试数据聚合到质量仪表板
├── Workflow Optimizer → 识别剩余流程低效
└── Infrastructure Maintainer → 生产环境验证

步骤 3：最终判断（顺序，步骤 2 之后）
└── Reality Checker → 集成报告
    ├── 交叉验证所有先前的 QA 发现
    ├── 用截图证据测试完整用户旅程
    ├── 逐点验证规范合规性
    ├── 默认裁决：NEEDS WORK
    └── 仅当所有标准都有压倒性证据时才 READY
```

### 7.3 Phase 4 质量关卡（最终关卡）

**关卡守护者**：Reality Checker（唯一权威）

| 标准 | 阈值 | 所需证据 |
|-----------|-----------|-------------------|
| 用户旅程完整 | 所有关键路径工作 | 端到端截图 |
| 跨设备一致性 | 桌面 + 平板 + 移动 | 响应式截图 |
| 性能认证 | P95 < 200ms, 正常运行时间 > 99.9% | 负载测试结果 |
| 安全验证 | 零关键漏洞 | 安全扫描报告 |
| 合规认证 | 满足所有监管要求 | Legal Compliance Checker 报告 |
| 规范合规 | 100% 规范要求 | 逐点验证 |

**裁决选项**：
- **READY** — 进入发布（首次通过罕见）
- **NEEDS WORK** — 返回 Phase 3（附具体修复列表）（预期）
- **NOT READY** — 重大架构问题，返回 Phase 1/2

**预期**：首次实现通常需要 2-3 轮修订。B/B+ 评级是正常且健康的。

---

## 8. Phase 5 — 发布与增长

> **目标**：在所有渠道同时协调进入市场执行。发布时最大化影响。

### 8.1 活跃智能体

| 智能体 | 阶段角色 | 主要产出 |
|-------|--------------|----------------|
| **Growth Hacker** | 发布战略负责人 | 增长剧本（含病毒循环） |
| **Content Creator** | 发布内容 | 博客文章、视频、社交内容 |
| **Social Media Strategist** | 跨平台活动 | 活动日历 + 内容 |
| **Twitter Engager** | Twitter/X 发布活动 | 线程策略 + 参与计划 |
| **TikTok Strategist** | TikTok 病毒内容 | 短视频策略 |
| **Instagram Curator** | 视觉发布活动 | 视觉内容 + 快拍 |
| **Reddit Community Builder** | 真实社区发布 | 社区参与计划 |
| **App Store Optimizer** | 商店优化（如移动端） | ASO 包 |
| **Executive Summary Generator** | 利益相关者沟通 | 发布执行摘要 |
| **Project Shepherd** | 发布协调 | 发布清单 + 时间线 |
| **DevOps Automator** | 部署执行 | 零停机部署 |
| **Infrastructure Maintainer** | 发布监控 | 实时仪表板 |

### 8.2 发布序列

```
T-7 天：发布前
├── Content Creator → 发布内容排队并安排
├── Social Media Strategist → 活动资产定稿
├── Growth Hacker → 病毒机制测试并武装
├── App Store Optimizer → 商店列表优化
├── DevOps Automator → 蓝绿部署准备
└── Infrastructure Maintainer → 10 倍自动扩展配置

T-0：发布日
├── DevOps Automator → 执行部署
├── Infrastructure Maintainer → 监控所有系统
├── Twitter Engager → 发布线程 + 实时参与
├── Reddit Community Builder → 真实社区帖子
├── Instagram Curator → 视觉发布内容
├── TikTok Strategist → 发布视频发布
├── Support Responder → 客户支持激活
└── Analytics Reporter → 实时指标仪表板

T+1 至 T+7：发布后
├── Growth Hacker → 分析获客数据，优化漏斗
├── Feedback Synthesizer → 收集和分析早期用户反馈
├── Analytics Reporter → 每日指标报告
├── Content Creator → 根据反馈创作响应内容
├── Experiment Tracker → 启动 A/B 测试
└── Executive Summary Generator → 每日利益相关者简报
```

### 8.3 Phase 5 质量关卡

**关卡守护者**：Studio Producer + Analytics Reporter

| 标准 | 阈值 | 所需证据 |
|-----------|-----------|-------------------|
| 部署成功 | 零停机，所有健康检查通过 | DevOps 部署日志 |
| 系统稳定 | 前 48 小时无 P0/P1 事件 | 基础设施监控 |
| 用户获客激活 | 渠道驱动流量 | Analytics Reporter 仪表板 |
| 反馈循环运行 | 用户反馈正在收集 | Feedback Synthesizer 报告 |
| 利益相关者知情 | 执行摘要已交付 | Executive Summary Generator 输出 |

**产出**：稳定发布的产品（含活跃增长渠道）→ Phase 6 激活

---

## 9. Phase 6 — 运营与演进

> **目标**：持续改进的持续运营。产品已上线——现在让它蓬勃发展。

### 9.1 活跃智能体（持续）

| 智能体 | 频率 | 职责 |
|-------|---------|---------------|
| **Infrastructure Maintainer** | 持续 | 系统可靠性、正常运行时间、性能 |
| **Support Responder** | 持续 | 客户支持和问题解决 |
| **Analytics Reporter** | 每周 | KPI 跟踪、仪表板、洞察 |
| **Feedback Synthesizer** | 每两周 | 用户反馈分析和综合 |
| **Finance Tracker** | 每月 | 财务表现、预算跟踪 |
| **Legal Compliance Checker** | 每月 | 监管监控和合规 |
| **Trend Researcher** | 每月 | 市场情报和竞争分析 |
| **Executive Summary Generator** | 每月 | C-suite 报告 |
| **Sprint Prioritizer** | 每冲刺 | 待办事项梳理和冲刺规划 |
| **Experiment Tracker** | 每实验 | A/B 测试管理和分析 |
| **Growth Hacker** | 持续 | 获客优化和增长实验 |
| **Workflow Optimizer** | 每季度 | 流程改进和效率提升 |

### 9.2 持续改进循环

```
┌──────────────────────────────────────────────────────────┐
│              持续改进循环                                  │
│                                                           │
│  测量           分析            计划          执行         │
│  ┌─────────┐     ┌──────────┐     ┌─────────┐   ┌─────┐ │
│  │Analytics │────▶│Feedback  │────▶│Sprint   │──▶│构建 │ │
│  │Reporter  │     │Synthesizer│    │Prioritizer│  │循环 │ │
│  └─────────┘     └──────────┘     └─────────┘   └─────┘ │
│       ▲                                            │      │
│       │              实验                          │      │
│       │              Tracker                       │      │
│       └────────────────────────────────────────────┘      │
│                                                           │
│  每月：Executive Summary Generator → C-suite 报告          │
│  每月：Finance Tracker → 财务表现                         │
│  每月：Legal Compliance Checker → 监管更新                │
│  每月：Trend Researcher → 市场情报                        │
│  每季度：Workflow Optimizer → 流程改进                    │
└──────────────────────────────────────────────────────────┘
```

---

## 10. 智能体协调矩阵

### 10.1 全跨部门依赖映射

此矩阵显示哪些智能体产出被其他智能体消费。解读为：**行智能体产出 → 列智能体消费**。

```
产出者 →          │ 工程 │ 设计 │ 营销 │ 产品 │ 项目管理 │ 测试 │ 支持 │ 空间 │ 专项
────────────────────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼────
工程部              │  ●  │     │     │     │     │  ●  │  ●  │  ●  │
设计部              │  ●  │  ●  │  ●  │     │     │  ●  │     │  ●  │
营销部              │     │     │  ●  │  ●  │     │     │  ●  │     │
产品部              │  ●  │  ●  │  ●  │  ●  │  ●  │     │     │     │  ●
项目管理            │  ●  │  ●  │  ●  │  ●  │  ●  │  ●  │  ●  │  ●  │  ●
测试部              │  ●  │  ●  │     │  ●  │  ●  │  ●  │     │  ●  │
支持部              │  ●  │     │  ●  │  ●  │  ●  │     │  ●  │     │  ●
空间计算            │  ●  │  ●  │     │     │     │  ●  │     │  ●  │
专项部              │  ●  │     │     │  ●  │  ●  │  ●  │  ●  │     │  ●

● = 活跃依赖（产出者创建由此部门消费的工件）
```

### 10.2 关键交接对

这些是 NEXUS 中流量最高的交接关系：

| 从 | 到 | 工件 | 频率 |
|------|----|----------|-----------|
| Senior Project Manager | 所有开发者 | 任务列表 | 每冲刺 |
| UX Architect | Frontend Developer | CSS 设计系统 + 布局规范 | 每项目 |
| Backend Architect | Frontend Developer | API 规范 | 每功能 |
| Frontend Developer | Evidence Collector | 实现的功能 | 每任务 |
| Evidence Collector | Agents Orchestrator | QA 裁决（通过/失败） | 每任务 |
| Agents Orchestrator | 开发者（任意） | QA 反馈 + 重试指令 | 每次失败 |
| Brand Guardian | 所有设计 + 营销 | 品牌指南 | 每项目 |
| Analytics Reporter | Sprint Prioritizer | 性能数据 | 每冲刺 |
| Feedback Synthesizer | Sprint Prioritizer | 用户洞察 | 每冲刺 |
| Trend Researcher | Studio Producer | 市场情报 | 每月 |
| Reality Checker | Agents Orchestrator | 集成裁决 | 每阶段 |
| Executive Summary Generator | Studio Producer | 执行简报 | 每里程碑 |

---

## 11. 交接协议

### 11.1 标准交接模板

每个智能体到智能体的交接必须包括：

```markdown
## NEXUS 交接文档

### 元数据
- **从**：[智能体名称]（[部门]）
- **到**：[智能体名称]（[部门]）
- **阶段**：[当前 NEXUS 阶段]
- **任务参考**：[Sprint Prioritizer 待办事项中的任务 ID]
- **优先级**：[关键 / 高 / 中 / 低]
- **时间戳**：[ISO 8601]

### 上下文
- **项目**：[项目名称和简要描述]
- **当前状态**：[到目前为止已完成的内容]
- **相关文件**：[要审查的文件/工件列表]
- **依赖项**：[此工作依赖的内容]

### 交付物请求
- **需要什么**：[具体、可衡量的交付物]
- **验收标准**：[如何衡量成功]
- **约束**：[技术、时间线或资源约束]
- **参考资料**：[链接到规范、设计、先前工作]

### 质量期望
- **必须通过**：[具体质量标准]
- **所需证据**：[完成证明的样子]
- **交接给下一个**：[谁接收输出以及他们需要什么]
```

### 11.2 QA 反馈循环协议

当任务 QA 失败时，反馈必须是可操作的：

```markdown
## QA 失败反馈

### 任务：[任务 ID 和描述]
### 尝试：[1/2/3] / 3 次最大
### 裁决：失败

### 发现的具体问题
1. **[问题类别]**：[确切描述（含截图参考）]
   - 预期：[应该发生什么]
   - 实际：[实际发生什么]
   - 证据：[截图文件名或测试输出]

2. **[问题类别]**：[确切描述]
   - 预期：[...]
   - 实际：[...]
   - 证据：[...]

### 修复指令
- [具体、可操作的修复指令 1]
- [具体、可操作的修复指令 2]

### 要修改的文件
- [文件路径 1]：[需要更改的内容]
- [文件路径 2]：[需要更改的内容]

### 重试期望
- 修复上述问题并重新提交 QA
- 不要引入新功能——仅修复
- 尝试 [N+1] / 3 次最大
```

### 11.3 升级协议

当任务超过 3 次重试尝试时：

```markdown
## 升级报告

### 任务：[任务 ID]
### 尝试耗尽：3/3
### 升级级别：[到 Agents Orchestrator / 到 Studio Producer]

### 失败历史
- 尝试 1：[问题摘要和已尝试的修复]
- 尝试 2：[问题摘要和已尝试的修复]
- 尝试 3：[问题摘要和已尝试的修复]

### 根本原因分析
- [为什么任务持续失败]
- [什么系统性问题阻止解决]

### 建议解决方案
- [ ] 重新分配给不同的开发者智能体
- [ ] 将任务分解为更小的子任务
- [ ] 修订架构/方法
- [ ] 接受当前状态（已知限制）
- [ ] 推迟到未来冲刺

### 影响评估
- **阻塞**：[哪些其他任务被此阻塞]
- **时间线影响**：[这如何影响整体进度]
- **质量影响**：[存在什么质量妥协]
```

---

## 12. 质量关卡

### 12.1 关卡摘要

| 阶段 | 关卡名称 | 关卡守护者 | 通过标准 |
|-------|-----------|-------------|---------------|
| 0 → 1 | 发现关卡 | Executive Summary Generator | 市场验证、用户需求确认、监管路径清晰 |
| 1 → 2 | 架构关卡 | Studio Producer + Reality Checker | 架构完整、品牌定义、预算批准、冲刺计划现实 |
| 2 → 3 | 基础关卡 | DevOps Automator + Evidence Collector | CI/CD 工作、骨架应用运行、监控激活 |
| 3 → 4 | 功能关卡 | Agents Orchestrator | 所有任务通过 QA、无关键 bug、性能基线达标 |
| 4 → 5 | 生产关卡 | Reality Checker（唯一权威） | 用户旅程完整、跨设备一致、安全验证、规范合规 |
| 5 → 6 | 发布关卡 | Studio Producer + Analytics Reporter | 部署成功、系统稳定、增长渠道活跃 |

### 12.2 关卡失败处理

```
如果关卡失败：
  ├── 关卡守护者生成具体失败报告
  ├── Agents Orchestrator 将失败路由到负责智能体
  ├── 失败项进入 Dev↔QA 循环（Phase 3 机制）
  ├── 最多 3 次关卡重试，然后升级到 Studio Producer
  └── Studio Producer 决定：修复、缩减范围或有风险接受
```

---

## 13. 风险管理

### 13.1 风险类别和负责人

| 风险类别 | 主要负责人 | 缓解智能体 | 升级路径 |
|---------------|--------------|-------------------|-----------------|
| 技术债务 | Backend Architect | Workflow Optimizer | Senior Developer |
| 安全漏洞 | Legal Compliance Checker | Infrastructure Maintainer | DevOps Automator |
| 性能下降 | Performance Benchmarker | Infrastructure Maintainer | Backend Architect |
| 品牌不一致 | Brand Guardian | UI Designer | Studio Producer |
| 范围蔓延 | Senior Project Manager | Sprint Prioritizer | Project Shepherd |
| 预算超支 | Finance Tracker | Studio Operations | Studio Producer |
| 监管不合规 | Legal Compliance Checker | Support Responder | Studio Producer |
| 市场变化 | Trend Researcher | Growth Hacker | Studio Producer |
| 团队瓶颈 | Project Shepherd | Studio Operations | Studio Producer |
| 质量回归 | Reality Checker | Evidence Collector | Agents Orchestrator |

### 13.2 风险响应矩阵

| 严重性 | 响应时间 | 决策权威 | 行动 |
|----------|--------------|-------------------|--------|
| **关键** (P0) | 立即 | Studio Producer | 全员参与，停止其他工作 |
| **高** (P1) | < 4 小时 | Project Shepherd | 专用智能体分配 |
| **中** (P2) | < 24 小时 | Agents Orchestrator | 下一冲刺优先级 |
| **低** (P3) | < 1 周 | Sprint Prioritizer | 待办事项 |

---

## 14. 成功指标

### 14.1 管道指标

| 指标 | 目标 | 测量智能体 |
|--------|--------|-------------------|
| 阶段完成率 | 首次尝试 95% | Agents Orchestrator |
| 任务首次 QA 通过率 | 70%+ | Evidence Collector |
| 每任务平均重试次数 | < 1.5 | Agents Orchestrator |
| 管道周期时间 | 冲刺估算 ±15% 内 | Project Shepherd |
| 质量关卡首次通过率 | 80%+ | Reality Checker |

### 14.2 产品指标

| 指标 | 目标 | 测量智能体 |
|--------|--------|-------------------|
| API 响应时间 (P95) | < 200ms | Performance Benchmarker |
| 页面加载时间 (LCP) | < 2.5s | Performance Benchmarker |
| 系统正常运行时间 | > 99.9% | Infrastructure Maintainer |
| Lighthouse 分数 | > 90（性能 + 可访问性） | Frontend Developer |
| 安全漏洞 | 零关键 | Legal Compliance Checker |
| 规范合规 | 100% | Reality Checker |

### 14.3 业务指标

| 指标 | 目标 | 测量智能体 |
|--------|--------|-------------------|
| 用户获客（环比） | 20%+ 增长 | Growth Hacker |
| 激活率 | 第一周 60%+ | Analytics Reporter |
| 留存率（第 7 天 / 第 30 天） | 40% / 20% | Analytics Reporter |
| LTV:CAC 比率 | > 3:1 | Finance Tracker |
| NPS 分数 | > 50 | Feedback Synthesizer |
| 产品组合 ROI | > 25% | Studio Producer |

### 14.4 运营指标

| 指标 | 目标 | 测量智能体 |
|--------|--------|-------------------|
| 部署频率 | 每天多次 | DevOps Automator |
| 平均恢复时间 | < 30 分钟 | Infrastructure Maintainer |
| 合规遵守 | 98%+ | Legal Compliance Checker |
| 利益相关者满意度 | 4.5/5 | Executive Summary Generator |
| 流程效率提升 | 每季度 20%+ | Workflow Optimizer |

---

## 15. 快速入门激活指南

### 15.1 NEXUS-Full 激活（企业）

```bash
# 步骤 1：初始化 NEXUS 管道
"为 [项目名称] 以 NEXUS-Full 模式激活 Agents Orchestrator。
 项目规格：[规格文件路径]。
 执行完整的 7 阶段管道（含所有质量关卡）。"

# Orchestrator 将：
# 1. 读取项目规格
# 2. 激活 Phase 0 智能体进行发现
# 3. 通过所有阶段（含质量关卡）
# 4. 自动管理 Dev↔QA 循环
# 5. 在每个阶段边界报告状态
```

### 15.2 NEXUS-Sprint 激活（功能/MVP）

```bash
# 步骤 1：初始化冲刺管道
"为 [功能/MVP 名称] 以 NEXUS-Sprint 模式激活 Agents Orchestrator。
 需求：[简要描述或规格路径]。
 跳过 Phase 0（市场已验证）。
 从 Phase 1 开始（架构和冲刺规划）。"

# 推荐智能体子集（15-25）：
# PM：Senior Project Manager、Sprint Prioritizer、Project Shepherd
# 设计：UX Architect、UI Designer、Brand Guardian
# 工程：Frontend Developer、Backend Architect、DevOps Automator
# + AI Engineer 或 Mobile App Builder（如适用）
# 测试：Evidence Collector、Reality Checker、API Tester、Performance Benchmarker
# 支持：Analytics Reporter、Infrastructure Maintainer
# 专项：Agents Orchestrator
```

### 15.3 NEXUS-Micro 激活（定向任务）

```bash
# 步骤 1：直接智能体激活
"为 [任务描述] 激活 [特定智能体]。
 上下文：[相关背景]。
 交付物：[预期具体输出]。
 质量检查：Evidence Collector 在完成后验证。"

# 常见 NEXUS-Micro 配置：
#
# Bug 修复：
#   Backend Architect → API Tester → Evidence Collector
#
# 内容活动：
#   Content Creator → Social Media Strategist → Twitter Engager
#   + Instagram Curator + Reddit Community Builder
#
# 性能问题：
#   Performance Benchmarker → Infrastructure Maintainer → DevOps Automator
#
# 合规审计：
#   Legal Compliance Checker → Executive Summary Generator
#
# 市场调研：
#   Trend Researcher → Analytics Reporter → Executive Summary Generator
#
# UX 改进：
#   UX Researcher → UX Architect → Frontend Developer → Evidence Collector
```

### 15.4 智能体激活提示词模板

#### 用于 Orchestrator（管道启动）
```
你是为 [项目] 运行 NEXUS 管道的 Agents Orchestrator。

项目规格：[路径]
模式：[Full/Sprint/Micro]
当前阶段：[Phase N]

执行 NEXUS 协议：
1. 读取项目规格
2. 根据 NEXUS 战略激活 Phase [N] 智能体
3. 使用 NEXUS 交接模板管理交接
4. 在阶段推进前强制执行质量关卡
5. 跟踪所有任务的状态报告
6. 为所有实现任务运行 Dev↔QA 循环
7. 每个任务 3 次失败尝试后升级

报告格式：NEXUS 管道状态报告（见战略文档中的模板）
```

#### 用于开发者智能体（任务实现）
```
你是 [智能体名称]，在 NEXUS 管道内工作。

阶段：[当前阶段]
任务：[Sprint Prioritizer 待办事项中的任务 ID 和描述]
架构参考：[架构文档路径]
设计系统：[CSS/设计令牌路径]
品牌指南：[品牌文档路径]

实现此任务时遵循：
1. 架构规范（精确）
2. 设计系统令牌和模式
3. 品牌指南（视觉一致性）
4. 可访问性标准（WCAG 2.1 AA）

完成后，你的工作将由 Evidence Collector 审查。
验收标准：[任务列表中的具体标准]
```

#### 用于 QA 智能体（任务验证）
```
你是 [QA 智能体]，在 NEXUS 管道内验证工作。

阶段：[当前阶段]
任务：[任务 ID 和描述]
开发者：[哪个智能体实现了这个]
尝试：[N] / 3 次最大

验证依据：
1. 任务验收标准：[具体标准]
2. 架构规范：[路径]
3. 品牌指南：[路径]
4. 性能要求：[具体阈值]

提供裁决：通过 或 失败
如失败：包括具体问题、证据和修复指令
使用 NEXUS QA 反馈循环协议格式
```

---

## 附录 A：部门快速参考

### 工程部 — "正确构建"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| Frontend Developer | React/Vue/Angular、Core Web Vitals、可访问性 | 任何 UI 实现任务 |
| Backend Architect | 可扩展系统、数据库设计、API 架构 | 服务端架构或 API 工作 |
| Mobile App Builder | iOS/Android、React Native、Flutter | 移动应用开发 |
| AI Engineer | ML 模型、LLM、RAG 系统、数据管道 | 任何 AI/ML 功能 |
| DevOps Automator | CI/CD、IaC、Kubernetes、监控 | 基础设施或部署工作 |
| Rapid Prototyper | Next.js、Supabase、3 天 MVP | 快速验证或概念验证 |
| Senior Developer | Laravel/Livewire、高级实现 | 复杂或高级功能工作 |

### 设计部 — "让它美丽"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| UI Designer | 视觉设计系统、组件库 | 界面设计或组件创建 |
| UX Researcher | 用户测试、行为分析、角色 | 用户研究或可用性测试 |
| UX Architect | CSS 系统、布局框架、技术 UX | 技术基础或架构 |
| Brand Guardian | 品牌标识、一致性、定位 | 品牌战略或一致性审计 |
| Visual Storyteller | 视觉叙事、多媒体内容 | 视觉内容或叙事需求 |
| Whimsy Injector | 微交互、愉悦、个性 | 为 UX 添加乐趣和个性 |
| Image Prompt Engineer | AI 图像生成提示词、摄影 | 为 AI 工具创建摄影提示词 |

### 营销部 — "快速增长"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| Growth Hacker | 病毒循环、漏斗优化、实验 | 用户获客或增长战略 |
| Content Creator | 多平台内容、编辑日历 | 内容战略或创建 |
| Twitter Engager | 实时参与、思想领袖 | Twitter/X 活动 |
| TikTok Strategist | 病毒短视频、算法优化 | TikTok 增长战略 |
| Instagram Curator | 视觉叙事、美学开发 | Instagram 活动 |
| Reddit Community Builder | 真实参与、价值驱动内容 | Reddit 社区战略 |
| App Store Optimizer | ASO、转化优化 | 移动应用商店存在 |
| Social Media Strategist | 跨平台战略、活动 | 多平台社交活动 |

### 产品部 — "构建正确的东西"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| Sprint Prioritizer | RICE 评分、敏捷规划、速度 | 冲刺规划或待办事项梳理 |
| Trend Researcher | 市场情报、竞争分析 | 市场调研或机会评估 |
| Feedback Synthesizer | 用户反馈分析、情感分析 | 用户反馈处理 |

### 项目管理部 — "保持正轨"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| Studio Producer | 产品组合战略、高管编排 | 战略规划或产品组合管理 |
| Project Shepherd | 跨职能协调、利益相关者对齐 | 复杂项目协调 |
| Studio Operations | 日常效率、流程优化 | 运营支持 |
| Experiment Tracker | A/B 测试、假设验证 | 实验管理 |
| Senior Project Manager | 规格到任务转换、现实范围 | 任务规划或范围管理 |

### 测试部 — "证明它有效"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| Evidence Collector | 基于截图的 QA、视觉证明 | 任何视觉验证需求 |
| Reality Checker | 基于证据的认证、怀疑评估 | 最终集成测试 |
| Test Results Analyzer | 测试评估、质量指标 | 测试输出分析 |
| Performance Benchmarker | 负载测试、性能优化 | 性能测试 |
| API Tester | API 验证、集成测试 | API 端点测试 |
| Tool Evaluator | 技术评估、工具选择 | 技术评估 |
| Workflow Optimizer | 流程分析、效率改进 | 流程优化 |

### 支持部 — "维持它"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| Support Responder | 客户服务、问题解决 | 客户支持需求 |
| Analytics Reporter | 数据分析、仪表板、KPI 跟踪 | 商业智能或报告 |
| Finance Tracker | 财务规划、预算管理 | 财务分析或预算 |
| Infrastructure Maintainer | 系统可靠性、性能优化 | 基础设施管理 |
| Legal Compliance Checker | 合规、法规、法律审查 | 法律或合规需求 |
| Executive Summary Generator | C-suite 沟通、SCQA 框架 | 高管报告 |

### 空间计算部 — "让他们沉浸"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| XR Interface Architect | 空间交互设计 | AR/VR/XR 界面设计 |
| macOS Spatial/Metal Engineer | Swift、Metal、高性能 3D | macOS 空间计算 |
| XR Immersive Developer | WebXR、基于浏览器的 AR/VR | 基于浏览器的沉浸式体验 |
| XR Cockpit Interaction Specialist | 基于驾驶舱的控制 | 沉浸式控制界面 |
| visionOS Spatial Engineer | Apple Vision Pro 开发 | Vision Pro 应用 |
| Terminal Integration Specialist | CLI 工具、终端工作流 | 开发者工具集成 |

### 专项部 — "连接一切"
| 智能体 | 超能力 | 激活触发 |
|-------|-----------|-------------------|
| Agents Orchestrator | 多智能体管道管理 | 任何多智能体工作流 |
| Data Analytics Reporter | 商业智能、深度分析 | 深度数据分析 |
| LSP/Index Engineer | 语言服务器协议、代码智能 | 代码智能系统 |
| Sales Data Extraction Agent | Excel 监控、销售指标提取 | 销售数据摄取 |
| Data Consolidation Agent | 销售数据聚合、仪表板报告 | 区域和代表报告 |
| Report Distribution Agent | 自动报告交付 | 计划报告分发 |

---

## 附录 B：NEXUS 管道状态报告模板

```markdown
# NEXUS 管道状态报告

## 管道元数据
- **项目**：[名称]
- **模式**：[Full / Sprint / Micro]
- **当前阶段**：[0-6]
- **开始时间**：[时间戳]
- **预计完成**：[时间戳]

## 阶段进度
| 阶段 | 状态 | 完成度 | 关卡结果 |
|-------|--------|------------|-------------|
| 0 - 发现 | ✅ 完成 | 100% | 通过 |
| 1 - 战略 | ✅ 完成 | 100% | 通过 |
| 2 - 基础 | 🔄 进行中 | 75% | 待定 |
| 3 - 构建 | ⏳ 待定 | 0% | — |
| 4 - 加固 | ⏳ 待定 | 0% | — |
| 5 - 发布 | ⏳ 待定 | 0% | — |
| 6 - 运营 | ⏳ 待定 | 0% | — |

## 当前阶段详情
**阶段**：[N] - [名称]
**活跃智能体**：[列表]
**任务**：[已完成/总数]
**当前任务**：[ID] - [描述]
**QA 状态**：[通过/失败/进行中]
**重试次数**：[N/3]

## 质量指标
- 首次尝试通过的任务：[X/Y] ([Z]%)
- 每任务平均重试次数：[N]
- 发现的关键问题：[数量]
- 解决的关键问题：[数量]

## 风险登记
| 风险 | 严重性 | 状态 | 负责人 |
|------|----------|--------|-------|
| [描述] | [P0-P3] | [活跃/缓解/关闭] | [智能体] |

## 下一步行动
1. [立即下一步]
2. [后续步骤]
3. [即将到来的里程碑]

---
**报告生成时间**：[时间戳]
**Orchestrator**：Agents Orchestrator
**管道健康度**：[ON_TRACK / AT_RISK / BLOCKED]
```

---

## 附录 C：NEXUS 术语表

| 术语 | 定义 |
|------|-----------|
| **NEXUS** | Network of EXperts, Unified in Strategy（专家网络，战略统一） |
| **质量关卡** | 阶段之间的强制检查点，需要基于证据的批准 |
| **Dev↔QA 循环** | 持续开发 - 测试循环，每个任务必须在继续之前通过 QA |
| **交接** | 智能体之间的工作和上下文的结构化转移 |
| **关卡守护者** | 有权批准或拒绝阶段推进的智能体 |
| **升级** | 重试耗尽后将阻塞任务路由到更高权威 |
| **NEXUS-Full** | 所有智能体的完整管道激活 |
| **NEXUS-Sprint** | 15-25 个智能体的专注管道，用于功能/MVP 工作 |
| **NEXUS-Micro** | 5-10 个智能体的定向激活，用于特定任务 |
| **管道完整性** | 没有通过质量关卡阶段不得推进的原则 |
| **上下文连续性** | 每次交接携带完整上下文的原则 |
| **证据胜于声明** | 质量评估需要证明而非断言的原则 |

---

<div align="center">

**🌐 NEXUS：9 个部门，7 个阶段，一个统一战略。🌐**

*从发现到持续运营——每个智能体都知道自己的角色、时机和交接。*

</div>
