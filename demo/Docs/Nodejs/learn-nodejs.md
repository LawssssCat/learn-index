### module.exports和exports的区别

####  CommonJS模块规范

CommonJS模块规范，Node是由一个个模块组成。

根据这个规范，每个文件就是一个模块，有自己的作用域。在一个文件里面定义的变量、函数、类，都是私有的，对其他文件不可见。

CommonJS规范规定，<font color='red'>每个模块内部，module变量代表当前模块</font>。这个变量是一个对象，它的`exports`属性（即`module.exports`）是对外的接口。加载某个模块，其实是加载该模块的`module.exports`属性。并且Node为每个模块提供一个`exports`变量，指向`module.exports`。

> + `module.exports` 初始值为一个空对象 `{}`
> + `exports` 是指向的 `module.exports` 的引用，`exports`该对象将函数内部的局部变量或函数暴露到外面；
> + `require()` 返回的是 `module.exports` 而不是 `exports`，最终所共享的结果是以module.exports所指向的对象为准。
>
> 也就是: `exports = module.exports = {}`, `exports`和`module.exports`都指向一个引用地址`{}`，如果`exports.name = 'yyy`，那`module.exports = {name:'yyy'}`

```js
console.log(module.exports === exports);
 
//输出结果为：true
```

> 区别：在其他文件中 `require` 得到的是 `module.exports` 的引用。


#### ES6模块规范

不同于CommonJS，ES6使用 export 和 import 来导出、导入模块。

```js
// profile.js
var firstName = 'Michael';
var lastName = 'Jackson';
var year = 1958;
 
export {firstName, lastName, year};
```

导入：

```js
import {firstName, lastName, year} from 'profile.js'
```

需要特别注意的是，`export` 命令规定的是对外的接口，必须与模块内部的变量建立一一对应关系。

```js
// 写法一
export var m = 1;
 
// 写法二
var m = 1;
export {m};
 
// 写法三
var n = 1;
export {n as m};
```

export default 命令

使用export default命令，为模块指定默认输出。

```js
// export-default.js
export default function () {
  console.log('foo');
}
```
