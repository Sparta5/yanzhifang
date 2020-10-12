const express=require("express");
var router=express.Router();
var query=require("./query");

/****商品详情页******/
router.get("/",(req,res)=>{
  var did=req.query.did;
  console.log(did)
  var output={};
  var sql = "SELECT d.did,family_id,title,price,art_no,specification,fname FROM `yzf_food_details` AS d INNER JOIN yzf_food_family AS f ON fid = d.did WHERE d.did =?"
  query(sql,[did])
  .then(result=>{//接住open的值
    output.product=result[0];
    var fid = output.product.family_id;
    console.log(result)//查找需要的如：热门
    var sql="SELECT did,title,price FROM `yzf_food_details` WHERE family_id=?";
    return query(sql,[fid])
  })
  .then(result=>{
    output.specs=result;
    var sql="SELECT * FROM `yzf_food_pic` WHERE food_id=?";
    return query(sql,[did])
  })
  .then(result=>{
    output.pics=result;
    res.send(output)
  })
  .catch(error=>console.log(error))
})
module.exports=router;