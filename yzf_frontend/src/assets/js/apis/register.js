/*********注册的axios**********/
import axios from "axios"
import {baseURL} from "../config.js"//是个对象所以用对象接
// axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
function getRegister(obj){
  return new Promise(
    function(resolve,reject){
// this.axios.get(`/user/register`,{//params参数必写 , 如果没有参数传{}也可以
						// 				params: {
						// 						phone:this.val
						// 				}
						// 			}//上面一段是没封装的写法
      axios.get(baseURL+"/user/register",{
        params://{
              obj
        // }
      }).then(result=>{
        resolve(result.data)
      })
    }
  )
}

export {//抛出的是一个对象就要用对象来接收
  getRegister
}