//引入express
const express = require('express')

//引入连接池
const pool = require ('../pool.js');
const { route } = require('./users.js');

//创建后端路由接口对象
const router = express.Router()

/****轮播图******/
router.get('/carousel',(req,res) => {
  // var data = req.query
  console.log(1)
  var sql= `select cil,img,title,href from yzf_index_carousel`;
  pool.query(sql,(err,result)=>{
    res.send(result)
    console.log(result)
  })
})

module.exports = router;