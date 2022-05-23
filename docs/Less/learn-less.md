官网：<https://less.bootcss.com/>
视频：<https://www.bilibili.com/video/BV1H341187st?p=1>

Less 是 CSS 预处理器。脚本语言，扩展CSS语法形成可管理、可重用的样式表。

解决CSS存在的问题：
CSS不方便阅读、维护（希望用类似html结构化方式表示）

安装

```bash
# 全局
npm install less -g 
# 开发
npm install less -D
```
编译

```bash
lessc [option] [destination]

e.g. 

lessc stylesheet.less stylesheet.css
# -x 压缩
lessc stylesheet.less stylesheet.css -x
```

浏览器编译

```html
<script src="less.min.js"></script>

<link href="styles.less" rel="stylesheet/less" type="text/css"/>
```

## 尝试

用css实现垂直水平居中

<img src="images/auto-learn-less-20220523202535.png" width=100%/>

[01-css实现垂直水平居中.html](./test-01/01-tranform%E5%AE%9E%E7%8E%B0%E5%9E%82%E7%9B%B4%E6%B0%B4%E5%B9%B3%E5%B1%85%E4%B8%AD%20copy.html)

上面的功能 `transform` 不兼容老版本浏览器

通过绝对定位实现

[02-绝对定位实现垂直水平居中](./test-01/02-%E7%BB%9D%E5%AF%B9%E5%AE%9A%E4%BD%8D%E5%AE%9E%E7%8E%B0%E5%9E%82%E7%9B%B4%E6%B0%B4%E5%B9%B3%E5%B1%85%E4%B8%AD.html)

下面用less转换成上面代码

方法1. 浏览器编译
[03-lsee-绝对定位实现垂直水平居中](./test-01/03-lsee-%E7%BB%9D%E5%AF%B9%E5%AE%9A%E4%BD%8D%E5%AE%9E%E7%8E%B0%E5%9E%82%E7%9B%B4%E6%B0%B4%E5%B9%B3%E5%B1%85%E4%B8%AD.html)
（运行时编译，慢、耗资源）

方法2： node编译

```bash
cd test-01
lessc 01.less 01.css -x
```

[04-lsee-绝对定位实现垂直水平居中](./test-01/04-lsee-%E7%BB%9D%E5%AF%B9%E5%AE%9A%E4%BD%8D%E5%AE%9E%E7%8E%B0%E5%9E%82%E7%9B%B4%E6%B0%B4%E5%B9%B3%E5%B1%85%E4%B8%AD.html)

## less 注释

## less 变量

## less 嵌套规则

## less 混合

## less 运算

## less 避免编译

## less 继承
