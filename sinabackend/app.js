var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
//引入body-parser 获取post方式传递的数据
var bodyParser = require('body-parser')
//引入cors中间件解决跨域
var cors=require("cors")

// var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var indexRouter = require('./routes/index');
var detailsRouter = require('./routes/details');

var app = express();

app.use(cors({      
  origin:[ //允许跨域的客户端源头有哪些
    'http://localhost:8080', //vue脚手架
    'http://localhost:8081', //vue脚手架
    "http://127.0.0.1:5050", //live server
    "http://xzvue.applinzi.com" //新浪云上的vue项目
  ],
  credentials:true //要求允许携带cookie
}))

// 使用中间件，将post请求的数据解析为对象
app.use(bodyParser.urlencoded({
  extended: false
}))
//删除这三句话//配置ejs视图的目录
// view engine setup
// app.set('views', path.join(__dirname, 'views'));
// app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
// app.use( express.static('public') );

app.use('/users', usersRouter);
app.use('/', indexRouter);
app.use("/details",detailsRouter);

// catch 404 and forward to error handler
// app.use(function(req, res, next) {
//   next(createError(404));
// });

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
