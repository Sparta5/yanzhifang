const { default: Axios } = require("axios")

import axios from "axios"
import {baseURL} from "../config.js"//抛出的是一个对象直接用解构方式

function getIndex(){
  return new Promise(
    function(resolve,reject){
      axios.get(baseURL+"/index")
      .then(result=>{
        resolve(result.data)
      })
    }
  )
}

export {
  getIndex
}