/* ======================================================== */
/* section: html parse */
/* ======================================================== */
var parser = new DOMParser();
var templates = {
  'index': parser.parseFromString(require('!raw-loader!./index.html'), 'text/html'),
};

/* ======================================================== */
/* section: SCROLL TOP HIGHER THAN */
/* ======================================================== */
window.addEventListener('scroll', function() {
  var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
  if (scrollTop > 150) {

  } else {

  }
});

/* ======================================================== */
/* section: SCROLL TOP */
/* ======================================================== */
window.scroll({
  top: 0,
  left: 0,
  behavior: 'smooth'
});

/* ======================================================== */
/* section: SCROLL INTO VIEW */
/* ======================================================== */
document.querySelector('.element').scrollIntoView({
  behavior: 'smooth',
  block: 'start'
});

/* ======================================================== */
/* section: VUE */
/* ======================================================== */
import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.config.productionTip = false;

new Vue({
  el: '#app',
  router: new VueRouter({
    routes: []
  }),
  template: '<app/>',
  components: { app }
})

/* fetch data before route update */
var movie_component = {
  template: '#movie',
  beforeRouteEnter: function(to, from, next) {
    Movie.get_by_id(to.params.movie_id, function(err, movie) {
      next(function(vm) {
        vm.movie = movie;
      });
    });
  },
  data: function() {
    return {
      movie: {}
    };
  }
};

/* ======================================================== */
/* section: MEDIA QUERY  */
/* ======================================================== */
var mediaQuery = window.matchMedia('(max-width: 767px)');
var mediaQueryListener = function(event) {
  console.log('SIZE HAS BEEN CHANGED', event.matches);
};
mediaQuery.addListener(mediaQueryListener);
mediaQuery.removeListener(mediaQueryListener);
/* ======================================================== */
/* section: FULLCALENDAR */
/* ======================================================== */
import 'fullcalendar/dist/fullcalendar.min';
import 'fullcalendar/dist/locale/et.js';
import 'fullcalendar/dist/fullcalendar.min.css';

/* ======================================================== */
/* section: PRISMJS | prismjs */
/* ======================================================== */
// <link rel="stylesheet" href="/node_modules/prismjs/themes/prism.css">
// <script src="/node_modules/prismjs/prism.js"></script>
// or
// <script src="/node_modules/prismjs/prism.js" data-manual></script>
import Prism from 'prismjs';

import 'prismjs/themes/prism-tomorrow.css';

import 'prismjs/components/prism-json';
import 'prismjs/components/prism-javascript';
import 'prismjs/components/prism-c';
import 'prismjs/components/prism-clike';

var Prism = require('prismjs');

Prism.highlight(code, Prism.languages.javascript)

/* ======================================================== */
/* section: ROLLUP */
/* ======================================================== */
// npm install --save rollup-plugin-babel
// npm install --save babel-preset-es2015-rollup
// npm install --save rollup-plugin-babel
// npm install --save babel-preset-es2015-rollup

import babel from 'rollup-plugin-babel';

export default {
  input: './src/index.js',
  output: {
    file: './dist/bundle.js',
    format: 'iife'
  },
  plugins: [
    babel({
      exclude: 'node_modules/**'
    })
  ]
};
/* ======================================================== */
/* section: WEBPACK */
/* ======================================================== */

/* ======================================================== */
/* section: codemirror */
/* ======================================================== */
import CodeMirror from 'codemirror';

import 'codemirror/addon/dialog/dialog';
import 'codemirror/addon/search/searchcursor';
import 'codemirror/keymap/vim';

import 'codemirror/lib/codemirror.css'
import 'codemirror/theme/ambiance.css'
import 'codemirror/addon/dialog/dialog.css'

import 'codemirror/mode/javascript/javascript';
import 'codemirror/mode/css/css';
import 'codemirror/mode/clike/clike';
import 'codemirror/mode/htmlmixed/htmlmixed';
import 'codemirror/mode/handlebars/handlebars';
import 'codemirror/mode/php/php';
import 'codemirror/mode/python/python';
import 'codemirror/mode/sql/sql';
import 'codemirror/mode/xml/xml';

var options = {
  lineNumbers: true,
  mode: 'text/x-mysql',
  theme: 'ambiance',
  keyMap: 'vim',
  indentUnit: 2,
  tabSize: 2,
  indentWithTabs: false,
};
var editor = CodeMirror.fromTextArea(textarea, options);

var options = {
  extraKeys: {
    Tab: function(cm) {
      if (cm.somethingSelected()) {
        cm.indentSelection("add");
      } else {
        cm.replaceSelection(cm.getOption("indentWithTabs")? "\t":
          Array(cm.getOption("indentUnit") + 1).join(" "), "end", "+input");
      }
    }
  }
};

function betterTab(cm) {
  if (cm.somethingSelected()) {
    cm.indentSelection("add");
  } else {
    cm.replaceSelection(cm.getOption("indentWithTabs")? "\t":
      Array(cm.getOption("indentUnit") + 1).join(" "), "end", "+input");
  }
}

CodeMirror.fromTextArea(document.getElementById("the-editor"), {
  extraKeys: { Tab: betterTab }
});

/* get codemirror dom element */
vm.cm.getWrapperElement()

/* vue component */
/* <editor-component :mode="'text/x-mariadb'" :source="new_code.source" @update:source="val => new_code.source = val"></editor-component> */
this.editor.on('change', cm => {
  this.$emit('update:source', cm.getValue());
});

/* section: express */
/* ----------------------------------- */
var express = require('express');

/* section: mongoose */
var user_schema = mongoose.Schema({
  name: String
});
var User = mongoose.model('User', user_schema);

/*--/--------------------------------------------------------------------\  */
/*-/                                                                      \ */
/*-\ section: bootstrap                                                   / */
/*--\--------------------------------------------------------------------/  */
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap';

/* simditor */
import 'simditor/styles/simditor.css';
import $ from 'jquery';
import 'simple-module/lib/module.js';
import 'simple-hotkeys/lib/hotkeys.js';
import 'simple-uploader/lib/uploader.js';
import Simditor from 'simditor';

var $preview, editor, mobileToolbar, toolbar;
Simditor.locale = 'en-US';
toolbar = ['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment'];
mobileToolbar = ["bold", "underline", "strikethrough", "color", "ul", "ol"];
if (mobilecheck()) {
  toolbar = mobileToolbar;
}
editor = new Simditor({
  textarea: $('#txt-content'),
  placeholder: '这里输入文字...',
  toolbar: toolbar,
  pasteImage: true,
  defaultImage: 'assets/images/image.png',
  upload: location.search === '?upload' ? {
    url: '/upload'
  } : false
});
$preview = $('#preview');
if ($preview.length > 0) {
  return editor.on('valuechanged', function(e) {
    return $preview.html(editor.getValue());
  });
}

