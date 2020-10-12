//引入express
const express = require('express')

//引入连接池
const pool = require ('../pool.js');
// const { route } = require('./users.js');

//创建后端路由接口对象
const router = express.Router()

/****首页商品分类******/
router.get('/family',(req,res)=>{
  let sql = 'select * from yzf_food_family';
  pool.query(sql,(err,result)=>{
    if(err) throw err
    res.send(result)
  })
})

/****首页产品*****/
router.get('/index',(req,res)=>{
  let sql = 'select  title,pic,href from yzf_index_product where family_id=1';
  pool.query(sql,(err,result)=>{
    if(err) throw err
    res.send(result)
  })
})

/****商品详情页******/
// router.get('/details',(req,res)=>{
//   let did = req.query.did
//   let sql = 'select * from yzf_food_details where did = ?';
//   pool.query(sql,[did],(err,result)=>{
//     if(err) throw err
//     res.send(result)
//   }) 
// })

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