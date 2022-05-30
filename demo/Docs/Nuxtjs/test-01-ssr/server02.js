const Vue = require('vue')
const server = require('express')()

server.get('/', (req, res) => {
    const app = new Vue({
        template: `
        <html>
        <head></head>
        <body>
            <div>hello</div>
        </body>
        </html>
        `
    })

    const renderer = require('vue-server-renderer').createRenderer()

    renderer.renderToString(app).then(html => {
        res.send(html)
    }).catch(err => {
        console.log(err)
    })

})

let port = 8008
server.listen(port)
console.log('http://localhost:'+port)
