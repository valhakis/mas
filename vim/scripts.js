// <script src="/node_modules/vue/dist/vue.js"></script>
// <script src="/node_modules/axios/dist/axios.js"></script>
// <script src="/node_modules/vue-router/dist/vue-router.js"></script>
// <script src="/node_modules/moment/moment.js"></script>
// <script src="/node_modules/moment/locale/et.js"></script>
// <meta name="viewport" content="width=device-width, initial-scale=1">
var colors = [
  { hex: '#77B28C' },
  { hex: '#499F68' },
  { hex: '#B4654A' },
  { hex: '#54494B' },
  { hex: '#A7D49B' },
  { hex: '#E3C567' },
  { hex: '#D9AE61' },
  { hex: '#D1462F' },
  { hex: '#8CD867' },
  { hex: '#363537' },
  { hex: '#2FBF71' },
  { hex: '#EFEA5A' },
  { hex: '#048BA8' },
  { hex: '#188FA7' },
  { hex: '#F0CF65' },
];
/* ========================================================= */
/* bodyParser */
/* ========================================================= */

var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

/* ========================================================= */
/* VUE */
/* ========================================================= */

Vue.config.productionTip = false;

var app = new Vue({
  el: '#app',
  data: {
    message: 'WELCOME TO VUE APP MESSAGE'
  },
  created: function() {

  }
});

/* ========================================================= */
/* VUE ROUTER */
/* ========================================================= */

var router = new VueRouter({
  linkActiveClass: 'active',
  linkExactActiveClass: 'active',
  routes: [
    { path: '/', component: Home }
  ]
});

/* ========================================================= */
/* WEBPACK */
/* ========================================================= */

module.exports = {
  devServer: {
    allowedHosts: [
      'kodu.me',
      'kodu.webhop.me',
    ],
    proxy: [
      {
        secure: false,
        changeOrigin: true,
        context: ['/backend', '/api'],
        target: 'http://localhost:4000'
      }
    ]
  }
};

/* ========================================================= */
/* MONGOOSE */
/* ========================================================= */

// connection to the database
var mongoose = require('mongoose');
var config = require('../../config');
mongoose.Promise = global.Promise;

mongoose.connect(config.mongo.remote, { useMongoClient: true });

// fetching all the items
exports.index = function(req, res) {
  Item.find(function(err, items) {
    if (err)
      return res.status(500).send(err);
    res.send(items);
  });
};

// new item creation
exports.create = function(req, res) {
  var newItem = new Item(req.body);

  newItem.save(function(err, item) {
    if (err)
      return res.status(500).send(err);
    res.send(item);
  });
};

// post schema
var postSchema = new Schema({
  title: {
    type: String,
    required: true,
    trim: true,
  },
  body: {
    type: String,
    trim: true
  },
  createdAt: {
    type: Date,
    default: Date.now
  },
  modifiedAt: {
    type: Date,
    default: Date.now
  }
});

// post model
var Post = module.exports = mongoose.model('Post', postSchema);

/* simditor */
import 'simditor/styles/simditor.css';
import $ from 'jquery';
import 'simple-module/lib/module.js';
import 'simple-hotkeys/lib/hotkeys.js';
import 'simple-uploader/lib/uploader.js';
import Simditor from 'simditor';
