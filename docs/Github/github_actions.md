
### CI/CD 触发器

GitHub Actions是一个独立的系统：它提供了 CI/CD 构建功能──能够构建和测试 Pull Request 并合并到你的master分支中──但它不只限于构建系统。 它已经集成到GitHub中，并且只要你的项目库中发生任何事件（例如正在创建发行版或正在评论问题），都可以触发并运行工作流。

<font color='green'>GitHub Actions 允许你定义一个触发器来控制工作流程的运行时间。每当你的项目库中发生与该触发器匹配的操作时，工作流运行都会进入排队队列中准备。</font>

对于 CI/CD 工作流，我喜欢使用 `push` 和 `pull_request` 触发器，并将其范围限定在我感兴趣的分支上。例如：
```bash
on:
  push:
    branches:
    - master
  pull_request:
    branches:
    - master
```

这个触发器将在对master分支进行任何更改时运行你的工作流（即使它的名字是 push 触发器，也将在你运行 git push 或将 pull request 合并到 master 分支时运行）。对于针对master分支打开的任何 pull request，工作流也将运行，并且将在 pull request 中向你显示验证。

> 参考：
>+ GitHub Actions使用学习最全文档
 <https://blog.csdn.net/Ber_Bai/article/details/120303880>