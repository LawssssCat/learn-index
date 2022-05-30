const resource = [

  /* --- CSS --- */
  '/learn-index/assets/css/style.css',

  /* --- PWA --- */
  '/learn-index/app.js',
  '/learn-index/sw.js',

  /* --- HTML --- */
  '/learn-index/index.html',
  '/learn-index/404.html',
  
    '/learn-index/categories/',
  
    '/learn-index/tags/',
  
    '/learn-index/archives/',
  
    '/learn-index/about/',
  

  /* --- Favicons & compressed JS --- */
  
  
    '/learn-index/assets/img/favicons/android-chrome-192x192.png',
    '/learn-index/assets/img/favicons/android-chrome-512x512.png',
    '/learn-index/assets/img/favicons/apple-touch-icon.png',
    '/learn-index/assets/img/favicons/favicon-16x16.png',
    '/learn-index/assets/img/favicons/favicon-32x32.png',
    '/learn-index/assets/img/favicons/favicon.ico',
    '/learn-index/assets/img/favicons/mstile-150x150.png',
    '/learn-index/assets/js/dist/categories.min.js',
    '/learn-index/assets/js/dist/commons.min.js',
    '/learn-index/assets/js/dist/home.min.js',
    '/learn-index/assets/js/dist/misc.min.js',
    '/learn-index/assets/js/dist/page.min.js',
    '/learn-index/assets/js/dist/post.min.js',
    '/learn-index/assets/js/dist/pvreport.min.js'

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

