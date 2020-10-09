<template>
  <div class="indexList">
     <div class="floor1"><router-link to="/"><img src="/img/index_img/index01.png"></router-link></div>
     <div class="floor2">
        <div>
          <h6 class="font_14"> <b>五谷营养膳食</b> </h6>
          <ul>
            <li>
              <div class="shoping">
                <router-link to="4"><img src="/img/index_img/1L01.jpg" alt=""></router-link>
                <div class="shoping_car"><a href="javascript:;">加入购物车</a></div>
              </div>
              <div class="info">
                <h3><router-link to="4">燕之坊 黑八宝禅食450g 芝...</router-link></h3>
              </div>
            </li>
          </ul>
        </div>
     </div>
     <div class="floor3">
       <div></div>
       <router-link to="/"><img src="/img/index_img/index01_1.png" alt=""></router-link>
     </div>
  </div>
</template>
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
  
}
</style>