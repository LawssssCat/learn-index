console.log(module.exports == exports); // true

module.exports.array = [];
console.log(module.exports == exports); // true

exports.array = [];
console.log(module.exports == exports); // true

// ===================== 

let some = exports;

exports = {};
console.log(module.exports == exports); // false

// reset
exports = some;
console.log(module.exports == exports); // true

module.exports = {}; 
console.log(module.exports == exports); // false

// reset
module.exports = some;
console.log(module.exports == exports); // true

module.exports.array = [];
console.log(module.exports == exports); // true