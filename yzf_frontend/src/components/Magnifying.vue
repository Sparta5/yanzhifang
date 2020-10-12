<template>
  <div class="magnify">
    <div class="product_preview">
      <img src="/img/product/md/401m.jpg" alt="">
    </div>
    <div class="priduct_botton"> 
      <div class="previous"></div>
      <div>
        <ul>
          <li><img src="/img/product/sm/401s.jpg" alt=""></li>
          <li><img src="/img/product/sm/401s.jpg" alt=""></li>
          <li><img src="/img/product/sm/401s.jpg" alt=""></li>
          <li><img src="/img/product/sm/401s.jpg" alt=""></li>
          <li><img src="/img/product/sm/401s.jpg" alt=""></li>
          <li><img src="/img/product/sm/401s.jpg" alt=""></li>
        </ul>
      </div>
      <div class="next"></div>
    </div>
    <div class="lg_img">
      <img src="/img/product/lg/401l.jpg">
    </div>
  </div>
</template>
<script>
export default {
  props:["pics","fod"],
  data(){
    return{
      
    }
  },
  methods:{

  },
  created(){
    console.log(this.pics )
    
  }
}
</script>
<style lang="scss">
.magnify{
  position: relative;
  .priduct_botton{
    display: flex;
    // flex-flow: flex wrap-reverse;
    div:nth-child(2){
      padding-top: 10px;
      margin: 0px 16px;
      width: 360px;height: 70px;
      overflow: hidden;
      ul{
        //切换小图调整（间隔距离70px）
        margin-left: 0px;
        li{
          float: left;
          padding: 0px 5px;
          img{width: 60px;height: 60px;}
        }
      }
    }
    //左右箭头
    .previous{width: 16px;height: 64px;margin-top: 10px;background-color: rosybrown;}
    .next{width: 16px;height: 64px;margin-top: 10px;background-color: rosybrown;}
  }
  .lg_img{
    width: 300px;height: 300px;
    position: absolute;
    z-index: 5;
    top: 0px;left: 420px;
    border: 1px solid red;
    overflow: hidden;
  }
}
</style>