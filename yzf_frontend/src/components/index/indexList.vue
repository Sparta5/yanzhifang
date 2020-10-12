<template>
<div>
  <div class="indexList" v-for="(item, k) of sortProOne" :key="k">
    <div class="floor1"><router-link :to="`/details/7`"><img :src="item.img"></router-link></div>
    <div class="floor2">
        <div>
          <h6 class="font_14"> <b>{{item.fname}}</b> </h6>
          <ul>
            <li v-for="(itemList,i) of sortList" :key="i">
              <div class="shoping">
                <router-link :to="`/details/${itemList.href}`"><img :src="itemList.pic" alt=""></router-link>
                <div class="shoping_car"><a href="javascript:;">加入购物车</a></div>
              </div>
              <div class="info">
                <h3><router-link :to="`/details/${itemList.href}`">{{itemList.title}}</router-link></h3>
              </div>
            </li>
          </ul>
        </div>
    </div>
    <div class="floor3">
      <div></div>
      <router-link to="/"><img :src="item.img_s"></router-link>
    </div>
  </div>  
</div>

</template>
<script>
export default {
  data(){
    return{
      sortProOne:"", //产品分类
      sortList:""
    }

  },
  methods:{
    
  },
  mounted(){
    this.axios.get('/family').then(result=>{
      this.sortProOne=result.data;
      console.log(result.data)
    });
    this.axios.get('/index').then(result=>{
      this.sortList=result.data
      console.log(result.data)
      console.log(this.sortList.href)
    })
  }
}
</script>
<style lang="scss">
.indexList{
  width: 1200px;
  margin: 0px auto;
  display: flex;
  justify-content: space-around;
  .floor2{
    padding: 7px 10px 9px 10px;
    width: 710px;
    border-bottom: 1px solid #f4f4f4;
    ul{
     li{
        width: 160px;height: 210px;
        padding: 8px;
        float: left;
        position: relative;
        margin-left: 6px;
        .shoping{
          img{width: 160px;height: 180px;}
          &:hover .shoping_car{display: block!important;}
          >.shoping_car{
            display: none;
            width: 160px;
            background: url(../../assets/imges/signup/indexsprite.png) no-repeat -30px -175px;
            height: 30px;
            line-height: 30px;
            background-color: rgb(215, 36, 38);
            cursor: pointer;
            text-align: center;
            position: absolute;
            top: 130px;
            text-align: center;
            padding-left: 10px;
            >a{color: white;text-decoration: none;}
          }
        }
        .info{
          h3{
            font-size: 12px;
            white-space: normal;
            overflow: hidden;
            white-space: normal;
            text-overflow: ellipsis;
            width: 160px;
            a{color: #666;height: 14px;}
          }
        }
      }
    }
  }
  .floor3{
    background-color: #f4f4f4;
    
    >div{
      padding: 25px;
      height: 189px;  
      overflow: hidden;
    }
  }
  &:first-child .floor3,&:first-child .floor2{border-top:1px solid red;}
  &:nth-child(2) .floor3,&:nth-child(2) .floor2{border-top:1px solid rgb(214, 178, 19);}
  &:nth-child(3) .floor3,&:nth-child(3) .floor2{border-top:1px solid rgb(24, 97, 165);}
  &:nth-child(4) .floor3,&:nth-child(4) .floor2{border-top:1px solid rgb(180, 32, 180);}
  
}
</style>