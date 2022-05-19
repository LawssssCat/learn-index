# ESLint 学习笔记

> 需要注意的是：ESLint 有两个工具，一个是 模块包 ，一个是 VSCode 的扩展工具

## ESLint 模块包

>官网：<https://eslint.bootcss.com/>
>
>“ESLint最初是由Nicholas C. Zakas 于2013年6月创建的开源项目。它的目标是提供一个插件化的javascript代码检测工具。”
>
>ESLint 是在 ECMAScript/JavaScript 代码中识别和报告模式匹配的工具，它的目标是保证代码的一致性和避免错误。在许多方面，它和 JSLint、JSHint 相似，除了少数的例外：
>
>+ ESLint 使用 Espree 解析 JavaScript。
>+ ESLint 使用 AST 去分析代码中的模式
>+ ESLint 是完全插件化的。每一个规则都是一个插件并且你可以在运行时添加更多的规则。

安装

```bash
npm init -y
npm i eslint -D
```

>注意安装结果：node_moduels 中下载了很多包
>
>+ `.bin/eslint.cmd` 内部通过 nodejs 执行 eslint运行包 的代码
>
>+ `@eslint` 用来规范 eslint配置文件
>
>+ `eslint开头的包` 是 eslint运行包，包含eslint代码

<img src="images/auto-20220519183830.png" width=60%/>
