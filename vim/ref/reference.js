/* ======================================================== */
/* SCROLL TOP HIGHER THAN */
/* ======================================================== */
window.addEventListener('scroll', function() {
  var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
  if (scrollTop > 150) {

  } else {

  }
});

/* ======================================================== */
/* SCROLL TOP */
/* ======================================================== */
window.scroll({
  top: 0,
  left: 0,
  behavior: 'smooth'
})

/* ======================================================== */
/* SCROLL INTO VIEW */
/* ======================================================== */
document.querySelector('.element').scrollIntoView({
  behavior: 'smooth',
  block: 'start'
});

/* ======================================================== */
/* VUE */
/* ======================================================== */
import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.config.productionTip = false

new Vue({
  el: '#app',
  router: new VueRouter({
    routes: []
  }),
  template: '<app/>',
  components: { app }
})
/* ======================================================== */
/* MEDIA QUERY  */
/* ======================================================== */
var mediaQuery = window.matchMedia('(max-width: 767px)');
var mediaQueryListener = function(event) {
  console.log('SIZE HAS BEEN CHANGED', event.matches);
};
mediaQuery.addListener(mediaQueryListener);
mediaQuery.removeListener(mediaQueryListener);
/* ======================================================== */
/* FULLCALENDAR */
/* ======================================================== */
import 'fullcalendar/dist/fullcalendar.min';
import 'fullcalendar/dist/locale/et.js';
import 'fullcalendar/dist/fullcalendar.min.css';

/* ======================================================== */
/* PRISMJS | prismjs */
/* ======================================================== */
// <link rel="stylesheet" href="/node_modules/prismjs/themes/prism.css">
// <script src="/node_modules/prismjs/prism.js"></script>
// or
// <script src="/node_modules/prismjs/prism.js" data-manual></script>
var Prism = require('prismjs');
Prism.highlight(code, Prism.languages.javascript)
