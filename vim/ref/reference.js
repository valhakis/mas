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

/* mem */
new Date();
el.innerHTML;
el.style.fontSize = '14px';
el.style.display = 'none';
onclick="example()"
document.write('LOREM TEXT');
window.alert('LOREM TEXT');
console.log('LOREM TEXT');
instanceof
  typeof
  new String(), new Number(), new Boolean();

onchange, onclick, onmouseover, onmouseout, onkeydown, onload

/* lite-server / bs-config */
module.exports = {
  server: {
    files: ['./*.{html,js,scss}'],
    baseDir: {
      './'
    },
    middleware: {
      // overrides the second middleware default with new settings
      1: require('connect-history-api-fallback')({index: '/index.html', verbose: true})
    }
  }
};

/* dotenv */

var dotenv = require('dotenv');

dotenv.config();

dotenv.config({ path: '/full/path' });

/* test */
var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
      /*when an item is clicked, update the original select box,
        and the selected item:*/
      var y, i, k, s, h;
      s = this.parentNode.parentNode.getElementsByTagName("select")[0];
      h = this.parentNode.previousSibling;
      for (i = 0; i < s.length; i++) {
        if (s.options[i].innerHTML == this.innerHTML) {
          s.selectedIndex = i;
          h.innerHTML = this.innerHTML;
          y = this.parentNode.getElementsByClassName("same-as-selected");
          for (k = 0; k < y.length; k++) {
            y[k].removeAttribute("class");
          }
          this.setAttribute("class", "same-as-selected");
          break;
        }
      }
      h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
    /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
    e.stopPropagation();
    closeAllSelect(this);
    this.nextSibling.classList.toggle("select-hide");
    this.classList.toggle("select-arrow-active");
  });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);

/* quill */
