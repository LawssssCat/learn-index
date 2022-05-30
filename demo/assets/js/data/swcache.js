const resource = [

  /* --- CSS --- */
  '/demo/assets/css/style.css',

  /* --- PWA --- */
  '/demo/app.js',
  '/demo/sw.js',

  /* --- HTML --- */
  '/demo/index.html',
  '/demo/404.html',
  
    '/demo/categories/',
  
    '/demo/tags/',
  
    '/demo/archives/',
  
    '/demo/about/',
  

  /* --- Favicons & compressed JS --- */
  
  
    '/demo/assets/img/favicons/android-chrome-192x192.png',
    '/demo/assets/img/favicons/android-chrome-512x512.png',
    '/demo/assets/img/favicons/apple-touch-icon.png',
    '/demo/assets/img/favicons/favicon-16x16.png',
    '/demo/assets/img/favicons/favicon-32x32.png',
    '/demo/assets/img/favicons/favicon.ico',
    '/demo/assets/img/favicons/mstile-150x150.png',
    '/demo/assets/js/dist/categories.min.js',
    '/demo/assets/js/dist/commons.min.js',
    '/demo/assets/js/dist/home.min.js',
    '/demo/assets/js/dist/misc.min.js',
    '/demo/assets/js/dist/page.min.js',
    '/demo/assets/js/dist/post.min.js',
    '/demo/assets/js/dist/pvreport.min.js'

];

/* The request url with below domain will be cached */
const allowedDomains = [
  

  '',

  
    'raw.githubusercontent.com',
  

  'fonts.gstatic.com',
  'fonts.googleapis.com',
  'cdn.jsdelivr.net',
  'polyfill.io'
];

/* Requests that include the following path will be banned */
const denyUrls = [
  
];

