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

下面是一个页面的布局示例

<style>
  #divhome * {
    box-sizing: border-box;
  }
  #divhome .header, #divhome .footer{
    background-color: grey;
    color: white;
    padding: 15px;
  }
  #divhome .column {
    padding: 15px;
    float: left;    
  }
  #divhome .clearfix {
    overflow: auto;
    display: flex;
  }
  #divhome .content {
    width: 75%;
  }
  #divhome .menu {
    width: 25%;
  }
  #divhome .menu ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
  }
  #divhome .menu ul li {
    background-color: #33b5e5;
    color: #fff;
    padding: 8px;
    margin-bottom: 8px;
    text-align: center;
  }
  #divhome .menu ul li:hover {
    background-color: #0099cc;
  }
</style>

<div id='divhome'>
  <div class='header'><h1>Shanghai</h1></div>
  <div class='clearfix'>
    <div class='column menu'>
      <ul>
        <li>The Flight</li>
        <li>The Flight</li>
        <li>The Flight</li>
        <li>The Flight</li>
      </ul>
    </div>
    <div class='column content'>
      <h1>The City</h1>
      <p>Shanghai is one of the four direct-administered municipalities of the People's Republic of China. Welcome to Shanghai!</p>
      <p>You will learn more about web layout and responsive web pages in a later chapter.</p>
    </div>
  </div>
  <div class='footer'>
    <p>Footer Text</p>
  </div>
</div>