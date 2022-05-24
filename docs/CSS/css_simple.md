### 恢复默认样式

+ initial
  
  修改所有元素属性为初始化值

  可作用于任何 CSS 样式（IE 不支持该关键字）

+ inherit
  
  修改所有元素属性为其父元素的值(向上继承)

  > 每一个 CSS 属性都有一个特性就是，这个属性必然是默认继承的 (inherited: Yes) 或者是默认不继承的 (inherited: no)其中之一，我们可以在 MDN[1] 上通过这个索引查找，判断一个属性的是否继承特性。
  > 
  > 譬如，以 `background-color` 为例，由下图所示，表明它并不会继承父元素的 `background-color`

+ unset

  修改所有元素属性的值为其父元素的值(如果有继承)或其初始值

  名如其意，unset 关键字我们可以简单理解为不设置。其实，它是关键字 initial 和 inherit 的组合：

  + 如果该属性是默认继承属性，该值等同于 inherit
  + 如果该属性是非继承属性，该值等同于 initial

```html
<!-- 恢复 li默认样式 -->
<style type="text/css">
    li {
         list-style: unset;
     }
 </style>
```

### 【未完】@media 用法

<https://blog.csdn.net/u010510187/article/details/82790963>


#### text-align: justify

（左右）对齐

<img src="images/auto-css_simple-20220524232213.png" width=100%/>

<img src="images/auto-css_simple-20220524232235.png" width=100%/>

#### 【未完】display: table-cell

table-cell是display属性的值，可以给出类似于table标记的子元素的样式。

但我认为它看起来像“元素可以轻松并排排列”。

