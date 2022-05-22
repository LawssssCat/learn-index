const Vue = require('vue')

const app = new Vue({
    template: `<div>hello</div>`
})

const renderer = require('vue-server-renderer').createRenderer()

// renderer.renderToString(app, (err, html) => {
//     if(err) throw err
//     console.log(html)
// })

renderer.renderToString(app).then(html => {
    console.log(html)
}).catch(err => {
    console.log(err)
})