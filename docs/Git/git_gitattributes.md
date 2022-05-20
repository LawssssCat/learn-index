官方介绍：<https://git-scm.com/docs/gitattributes>

Git 的 .gitattributes 文件是一个文本文件，文件中的一行定义一个路径的若干个属性。

### 格式

以行为单位设置一个路径下所有文件的属性

```bash
要匹配的文件模式 属性1 属性2 ...
```

“`#`” 为注释

### 属性状态

一行中，一个属性（以text属性为例）可能有4种状态：

1. 设置text

2. 不设置-text

3. 设置值text=string

未声明，通常不出现该属性即可；但是为了覆盖其他文件中的声明，也可以!text

### 文件示例

```bash
*               text=auto
*.txt		text
*.jpg		-text
*.vcproj	text eol=crlf
*.sh		text eol=lf
*.py		eol=lf
```

说明：

+ 第1行，对任何文件，设置 `text=auto`，表示文件的行尾自动转换。如果是文本文件，则在文件入Git库时，行尾自动转换为LF。如果已经在入Git库中的文件的行尾为CRLF，则该文件在入Git库时，不再转换为LF。

+ 第2行，对于txt文件，标记为文本文件，并进行行尾规范化。

+ 第3行，对于jpg文件，标记为非文本文件，不进行任何的行尾转换。

+ 第4行，对于vcproj文件，标记为文本文件，在文件入Git库时进行规范化，即行尾为LF。但是在检出到工作目录时，行尾自动转换为CRLF。

+ 第5行，对于sh文件，标记为文本文件，在文件入Git库时进行规范化，即行尾为LF。在检出到工作目录时，行尾也不会转换为CRLF（即保持LF）。

+ 第6行，对于py文件，只针对工作目录中的文件，行尾为LF。

### 优先级

在一个Git库中可以有多个gitattributes文件。不同gitattributes文件中，属性设置的优先级(从高到低)：
```bash
$GIT_DIR/info/attributes文件
$GIT_DIR/my_path/.gitattributes文件
$GIT_DIR/.gitattributes文件
```
同一个gitattributes文件中，按照行的先后顺序，如果一个文件的某个属性被多次设置，则后序的设置优先

### 统一的gitattributes文件

也可以为所有Git库设置统一的gitattributes文件：

```bash
git config --get core.attributesFile
git config --global --get core.attributesFile
```


更多参考：Git中文开发手册 <https://www.php.cn/manual/view/34943.html>

### 其他

#### # 检测 GitHub repository语言

首先GitHub使用linguist library来检测你所上传的代码是用什么语言来写的。

我们可以通过 `.gitattributes` 更改检测规则

e.g. 

1. 使用linguist-language进行语言转换
    
    ```bash
    *.css linguist-language=PHP // 把css 改成 PHP语言
	.rb linguist-language=Java
    ```
2. 要对整个语言进行启用和弃用
    ```bash
    *.md linguist-detectable=true
    *.sql linguist-detectable=false//弃用SQl语言统计
    *.html linguist-detectable=true//启用html语言统计
    ```
3. 要对部分文件夹进行不统计
    ```bash
    Visualization/out/*.html linguist-vendored
    ```