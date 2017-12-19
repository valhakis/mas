// <script src="/node_modules/vue/dist/vue.js"></script>
// <script src="/node_modules/axios/dist/axios.js"></script>
// <script src="/node_modules/vue-router/dist/vue-router.js"></script>
//
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

var options = {
  linkActiveClass: 'active',
  linkExactActiveClass: 'active'
}

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
