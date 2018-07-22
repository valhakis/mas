/* ================================================================= */
/* NODE REFERENCE */
/* ================================================================= */

/* ================================================================= */
/* section: http */
/* ================================================================= */
var server = http.createServer(app);

server.listen(port, host, function() {

});

/* ================================================================= */
/* section: express */
/* ================================================================= */
var app = express();

/* redirect back with delay */
app.get('/', function(req, res) {
  res.set({
    // 'Location': '/login',
    'Location': 'javascript://history.go(-1)',
    'Content-Type': 'application/json',
    'refresh': 2,
  }).send({
    message: 'YOU TRIED TO REGISTER'
  });
});

/* ================================================================= */
/* section: http server */
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
/* section: BROWSER-SYNC */
/* ================================================================= */

var bs = require("browser-sync").create();

bx.init({

});

/* section: WEBPACK */
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
/* section: MORGAN */
/* ================================================================= */
var morgan = require('morgan');
app.use(morgan('dev'));

/* ================================================================= */
/* section: SESSION */
/* ================================================================= */
var session = require('express-session');

var sessionOptions = {
  resave: false,
  secret: 'woodman',
  saveUninitialized: false
};

app.use(session(sessionOptions));

/* ================================================================= */
/* section: cookie cookies cookie-parser */
/* ================================================================= */

/* ================================================================= */
/* section: passport */
/* ================================================================= */
var passport = require('passport');

passport.use(require('./local-storage'));
app.use(passport.initialize());
app.use(passport.session());

passport.serializeUser(function(user, done) {
  done(null, user.id);
});

passport.deserializeUser(function(id, done) {
  User.findById(id, function(err, user) {
    done(err, user);
  });
});

/* ================================================================= */
/* section: sequelize */
/* ================================================================= */

/* ================================================================= */
/* section: socket socketio socket.io */
/* ================================================================= */

/* ================================================================= */
/* section: caman */
/* ================================================================= */

/* ================================================================= */
/* section: fs */
/* ================================================================= */
var fs = require('fs');

/* create directory */
fs.mkdir('directory', function(error) {
  if (error) {
    /* directory creation error */
    return console.log(error);
  }
  /* directory creation successful */
});

/* check directory exists */
fs.stat('directory', function(error, stats) {

});

/* check file exits */
fs.stat('foo.txt', function(error, stats) {
  if (error == null) {
    /* file exists */
  } else if (error.code == 'ENOENT') {
    /* file does not exist */
  } else {
    /* some other error */
    console.log('some other error', error.code);
  }
});

/* ================================================================= */
/* section: mongoose */
/* ================================================================= */
var mongoose = require('mongoose');
mongoose.connect('mongodb://192.168.0.2/motizium');

// NOTE: methods must be added to the schema before compiling it with mongoose.model()
kittySchema.methods.speak = function () {
  var greeting = this.name
    ? "Meow name is " + this.name
    : "I don't have a name";
  console.log(greeting);
}

var Kitten = mongoose.model('Kitten', kittySchema);

/* kitten */
var kittySchema = mongoose.Schema({
  name: String
});

var Kitten = mongoose.model('Kitten', kittySchema);

var silence = new Kitten({ name: 'Silence' });
console.log(silence.name); // 'Silence'

/*--/--------------------------------------------------------------------\  */
/*-/                                                                      \ */
/*-\ section: gulp
/*--\--------------------------------------------------------------------/  */
var gulp = require('gulp')
var webpack = require('webpack');
var bs = require('browser-sync').create();
var sass = require('gulp-sass');
var nodemon = require('gulp-nodemon');
gulp.task('sass', function() {
  return gulp
    .src('src/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('dist'))
    .pipe(bs.stream());
});

gulp.task('webpack', function() {
  var config = {
    devtool: 'eval',
    entry: './src/index.js',
    output: {
      filename: "./dist/store.bundle.js"
    },
    resolve: { 
      // modules: [__root + 'node_modules'],
      modules: [__dirname + '/' + 'node_modules', __root + 'node_modules', __dirname],
      alias: {
        motizium: __root + 'motizium/client.js',
      }
    }
  };
  var compiler = webpack(config);
  const watcher = compiler.watch({

  }, function(err, stats) {
    console.log(stats.toString({
      colors: true,
    }));
  });
});
gulp.task('bs', function() {
  var options = {
    port: 8010,
    proxy: 'localhost:8000'
  };

  bs.init(options);

  bs.watch('./dist/*.js').on('change', bs.reload);
});
gulp.task("start", ['sass', 'webpack', 'bs'], function() {
  var stream = nodemon({
    script: "./bin/www",
    ext: "js",
    env: { 
      'PORT': '8000',
      'NODE_ENV': 'development' 
    },
    quiet: true,
    tasks: [],
    watch: [
      'app',
      'routes',
      'bin/www'
    ],
    // stdout: true,
    // readable: false,
  });

  stream
    .on('restart', function() {
      console.log('gulp nodemon restarted!');
    })
    .on('crash', function() {
      console.log('gulp nodemon crashed');
      stream.emit('restart', 10);
    });

  gulp.watch('views/**/*.{pug,jade}').on('change', bs.reload);;
  gulp.watch('src/*.scss', ['sass']);
  // gulp.watch('src/*.js', ['javascript']);
});

/*--/--------------------------------------------------------------------\  */
/*-/                                                                      \ */
/*-\ section: body-parser
/*--\--------------------------------------------------------------------/  */
var bodyParser = require('body-parser')
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())

/*--/--------------------------------------------------------------------\  */
/*-/ section: unique-filename
/*-\ random unique filename
/*--\--------------------------------------------------------------------/  */
var uniqueFilename = require('unique-filename');
var uniqueFile = uniqueFilename('/tmp', 'testing', '/what/the/hell');
/*--/--------------------------------------------------------------------\  */
/*-/ section: js-beautify
/*-\ beautify html css or javascript
/*--\--------------------------------------------------------------------/  */
var beautifier = require('js-beautify');
beautifier.html_beautify(data, {});

/* handlebars */
// npm install express-handlebars
var expressHandlebars  = require('express-handlebars');
app.engine('.hbs', expressHandlebars({extname: '.hbs'}));
app.set('view engine', '.hbs');

