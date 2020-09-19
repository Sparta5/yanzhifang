/*用户接口*/

//引入express
const express = require('express')

//引入连接池
const pool = require ('./pool.js')

//创建后端路由接口对象
const router = express.Router()

//用户登录接口post
router.get('/login/:uname&:upwd',(req,res)=> {
    //获取用户提交信息
    var {uname,upwd}=req.params
    var sql="select * from user where uname=? and upwd"

    //设置服务器响应头信息 解决跨域问题
    // res.set('Access-Control-Allow-Origin', 'http://localhost:8080')
    pool.query(sql,[uname,upwd],(err,result)=>{
      if(err) throw err
      console.log(result)
    res.send(`用户${uname}密码${upwd}`)
    })
})

module.exports=router;