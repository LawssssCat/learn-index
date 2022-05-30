let t0 = require("./t0");
console.log(t0)
let t1 = require("./t1"); // module.exports = null;
console.log(t1)
let t2 = require("./t2"); // exports = null;
console.log(t2)

/* 结果
{}
null
{}
*/