/* ================================================================= */
/* NODE REFERENCE */
/* ================================================================= */

/* ================================================================= */
/* SECTION: HTTP */
/* ================================================================= */
var server = http.createServer(app);

server.listen(port, host, function() {

});

/* ================================================================= */
/* SECTION: EXPRERSS APP */
/* ================================================================= */
var app = express();

app.get('/', function(req, res) {
});

/* ================================================================= */
/* SECTION: HTTP SERVER */
/* ================================================================= */
var { EventEmitter } = require('events');

/* create server */
/* ----------------------------------- */
http.createServer(function(req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write('<button>button</button>');
  res.end();
});

/* head */
/* ----------------------------------- */
res.writeHead(200, {'Content-Type': 'text/plain'});
res.writeHead(200, {'Content-Type': 'text/html'});

/* query */
/* ----------------------------------- */
var app = function(req, res) {
  var url = require('url');
  // http://[host]:[port]/?time=10
  var query = url.parse(req.url, true).query;
  var time = query.time;
};

/* path / method */
/* ----------------------------------- */
var app = function(req, res) {
  if (req.url == '/upload' && req.method == 'GET') {

  } else if (req.url == '/upload' && req.method == 'POST') {

  } else {

  }
};

/* form / upload */
/* ----------------------------------- */
var { IncomingForm } = require('formidable');
var app = function(req, res) {
  var form = new IncomingForm();
  form.parse(req, function(err, fields, files) {
    var oldPath = files.filetoupload.path;
    var fileName = files.filetoupload.name;
    var newPath = `/tmp/${fileName}`;

    res.write(`oldPath: ${oldPath}\n`);
    res.write(`newPath: ${newPath}\n`);

    fs.rename(oldPath, newPath, function(err) {
      if (err) {
        return res.end('Error occurred on upload.');
      }
      res.write('File uploaded!');
      res.end();
    });
  });
};

/* ================================================================= */
/* SECTION: BROWSER-SYNC */
/* ================================================================= */

var bs = require("browser-sync").create();

bx.init({

});

/* SECTION: WEBPACK */
/* ================================================================= */
const webpack = require('webpack');

var config = {

};

var config = [
  { /* webpack configuration one */ },
  { /* webpack configuration two */ },
  { /* webpack configuration three */ },
];

webpack(config, function(err, stats) {
  if (err || stats.hasErrors()) {
    console.log('ERROR OCCURRED');
  }
});

/* compiler */
const compiler = webpack(config);

/* watcher */
const watcher = compiler.watch({

}, function(err, stats) {
  console.log(stats.toString({
    colors: true,
  }));
});

/* ================================================================= */
/* SECTION: PASSPORT */
/* ================================================================= */
