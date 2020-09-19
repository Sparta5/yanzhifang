/*用户接口*/

//引入express
const express = require('express')

//引入连接池
const pool = require ('./pool.js')

//创建后端路由接口对象
const router = express.Router()

//用户登录接口post
router.get('/login',(req,res)=> {
    //获取用户提交信息
    var {uname,upwd}=req.query
    console.log(uname)
})

module.exports=router;