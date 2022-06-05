div 并排会出现下面问题

<style>
#aa div {
  background-color: #0fc;
  display: inline-block;
  color: black;
}
</style>
<div id="aa">
  <div>qqqqq</div>
  <div>vvvvvvvvvvvvv</div>
</div>

```html
<style>
#bb div {
  background-color: #0fc;
  display: inline-block;
}
</style>
<div id="aa">
  <div>qqqqq</div>
  <div>vvvvvvvvvvvvv</div>
</div>
```

这是因为两个div之间换行了，有个换行空格。把它们放在一行就ok了。

<style>
#bb div {
  background-color: #0fc;
  display: inline-block;
  color: black;
}
</style>
<div id="aa">
  <div>qqqqq</div><div>vvvvvvvvvvvvv</div>
</div>

```html
<div id="aa">
  <div>qqqqq</div><div>vvvvvvvvvvvvv</div>
</div>
```

当然这是很反人类的，因此有下面两种处理

第一种加一个退位

```css
#aa {
  word-spacing: -1em;
} 
```

第二种，用flex

<style>
#bbqq {
  /* flex-wrap: nowrap; */
  display: inline-flex;
  /* display: flex; */
}
#bbqq div {
  color: black;
  background-color: pink;
}
</style>

<div id="bbqq">
  <div>11111111111</div>
  <div>33333333333333</div>
</div>

```html
<style>
#bbqq {
    /* flex-wrap: nowrap; */
    display: flex;
  }
  #bbqq div {
    background-color: pink;
  }
</style>

<div id="bbqq">
  <div>11111111111</div>
  <div>33333333333333</div>
</div>
```

例子：导航栏

<style>

  #navvs ul {
    list-style-type: none; /* 去除左边点 */
    margin: 0;
    padding: 0;
    /* overflow: hidden; */
  }
  #navvs ul li {
    float: left; /* 横向排列，且没有换行符 */
  }
  #navvs ul li a {
    color: #fff;
    background: #333;
    text-decoration: none; /* 去除下划线 */
    text-align: center;
    padding: 14px 16px;
    display: inline-block; /* 外边距不与上面合并 */
  }
  #navvs ul li a:hover {
    background-color: #111;
  }
  #navvs .active {
    background-color: #aa0000;
  }
</style>
<div id='navvs'>
  <ul>
    <li><a href='#home' class='active'>hhhh</a></li>
    <li><a href='#home'>hhhh</a></li>
    <li><a href='#home'>hhhh</a></li>
    <li><a href='#home'>hhhh</a></li>
    <li><a href='#home'>hhhh</a></li>
  </ul>
</div>

<div style='clear: both;'></div><!--清楚浮动-->

```html
<style>
  #navvs ul {
    list-style-type: none; /* 去除左边点 */
    margin: 0;
    padding: 0;
    /* overflow: hidden; */
  }
  #navvs ul li {
    float: left; /* 横向排列，且没有换行符 */
  }
  #navvs ul li a {
    color: #fff;
    background: #333;
    text-decoration: none; /* 去除下划线 */
    text-align: center;
    padding: 14px 16px;
    display: inline-block; /* 外边距不与上面合并 */
  }
  #navvs ul li a:hover {
    background-color: #111;
  }
  #navvs .active {
    background-color: #aa0000;
  }
</style>
<div id='navvs'>
  <ul>
    <li><a href='#home' class='active'>hhhh</a></li>
    <li><a href='#home'>hhhh</a></li>
    <li><a href='#home'>hhhh</a></li>
    <li><a href='#home'>hhhh</a></li>
    <li><a href='#home'>hhhh</a></li>
  </ul>
</div>

<div style='clear: both;'></div><!--清楚浮动-->
```


例子：面包屑

<style>
  #exmp-breadcrumb01 .breadcrumb {
    color: #000;
    padding: 8px 16px;
    background-color: #eee;
  }
  #exmp-breadcrumb01 .breadcrumb li {
    display: inline;
  }
  #exmp-breadcrumb01 .breadcrumb li+li:before {
    content: '/';
    padding: 8px;
  }
  #exmp-breadcrumb01 .breadcrumb li a {
    color: green;
  }
</style>
<div id='exmp-breadcrumb01'> 
  <ul class='breadcrumb'>
    <li><a href='#'>Home</a></li>
    <li><a href='#'>Books</a></li>
    <li><a href='#'>Guide</a></li>
    <li>How to ....</li>
  </ul>
</div>

```html
<style>
  #exmp-breadcrumb01 .breadcrumb {
    color: #000;
    padding: 8px 16px;
    background-color: #eee;
  }
  #exmp-breadcrumb01 .breadcrumb li {
    display: inline;
  }
  #exmp-breadcrumb01 .breadcrumb li+li:before {
    content: '/';
    padding: 8px;
  }
  #exmp-breadcrumb01 .breadcrumb li a {
    color: green;
  }
</style>
<div id='exmp-breadcrumb01'> 
  <ul class='breadcrumb'>
    <li><a href='#'>Home</a></li>
    <li><a href='#'>Books</a></li>
    <li><a href='#'>Guide</a></li>
    <li>How to ....</li>
  </ul>
</div>
```