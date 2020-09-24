/********用户接口*******/
//引入express
const express = require('express')

//引入连接池
const pool = require ('../pool.js')

//创建后端路由接口对象
const router = express.Router()

//测试
router.get('/cs',(req,res)=> {res.send(`接收到了${req.quey}`)})


/****用户登录接口post****/
router.get('/login',(req,res)=> {
    //获取用户提交信息
    var {uname,email,phone}=req.query
    var $upwd=req.query.upwd
    var $data="";
    var $value="";
    if(uname){
      $data="uname"
      $value=uname
    }else if(email){
      $data="email"
      $value=email
    }else{
      $data="phone"
      $value=phone
    }
    console.log($data,$value)
    var sql=`select * from user where ${$data}=? and upwd=?`

    //设置服务器响应头信息 解决跨域问题
    // res.set('Access-Control-Allow-Origin', 'http://localhost:8080')
    pool.query(sql,[$value,$upwd],(err,result)=>{
      if(err) throw err
      console.log(result)
    res.send(`用户${$value}密码${$upwd}`)
    })
  })

/****用户注册检测插入接口post****/
router.get('/register',(req,res)=>{
    console.log(`接受到了数据`)
    //获得用户提交信息
    var {uname,email,phone}=req.query
    var $upwd=req.query.upwd
    var $obj=req.query
    console.log($obj)
    //判断用那种方式注册保存不同的属性名和属性值
    var $data="";
    var $value="";
    if(uname){
      $data="uname"
      $value=uname
    }else if(email){
      $data="email"
      $value=email
    }else{
      $data="phone"
      $value=phone
    }
    console.log($data,$value)
    let sql=`select * from user where ${$data}=?`
    pool.query(sql,[$value],(err,result)=>{
        if(err) throw err
        console.log(result)
        //用户名|邮箱|电话 是否已注册
        if(result.length>0){
          console.log('已占用')
          res.send({code:0, msg: 'fail'})
          return
        }else if($upwd){
          // res.send({code:1 , msg: 'ok'})
          //如果有密码就插入
            let sql=`insert into user set ?`
            pool.query(sql,[$obj],(err,result)=>{
              if(err) throw result;
              console.log(result)
              if(result.affectedRows==1){
                //设置服务器响应头信息 解决跨域问题
                // res.set('Access-Cotrol-Allow-Origin','http://localhost:8080')
                  res.send({code:200, msg: 'success'})
                  console.log(`success`)
               }
            })
        }else{
          res.send({code:-1, msg: 'fail'})
        }
    })
})


module.exports=router;