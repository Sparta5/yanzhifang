/**数据连接池**/
const mysql = require('mysql')

//const pool = mysql.createPool({
 //   host: '127.0.0.1',
 //   port: '3306',
 //   user: 'root',
 //  password: '',
 //   database: 'yzf',
//    connectTimeout: 20 
//})
const pool = mysql.createPool({
    host: 'r.rdc.sae.sina.com.cn',
    port: '3306',
    user: 'lz1ww2o35n',
    password: 'zmyzl35yxlj1ljwm35wmijijziz3ljzxkjmj1zyw',
    database: 'app_useryzf3',
    connectTimeout: 20 
})

module.exports = pool