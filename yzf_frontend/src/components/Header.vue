<template>
  <div class="header">
    <!-- 导航栏菜单开始 -->
    <div class="topMenu">
      <div class="wrap">
        <!-- 导航左边 -->
        <span v-if="loginBar">嘿，欢迎光临燕之坊网上商城！&nbsp;
          <router-link to="/login">请登录</router-link>&nbsp;&nbsp;
          <router-link to="/register">免费注册</router-link>&nbsp;&nbsp;
        </span>
        <span v-else>您好&nbsp;<span>1076545848@qq.com</span>！
          <router-link to="/">[会员中心]</router-link>&nbsp;&nbsp;
          <router-link to="/">退出</router-link>
        </span>
        <!-- 导航右边 -->
        <ul>
          <li>
            <a href="javascript:;">我的订单</a>
          </li>
          <li>
            <div class="top_nav">
              <div><a href="javascript:;">会员中心</a>
                <b></b>  
              </div>
              <div class="top_nav_list">
                <div><a href="javascript:;">我的订单</a></div>
                <div><a href="javascript:;">我的收藏</a></div>
                <div><a href="javascript:;">我的预存款</a></div>
                <div><a href="javascript:;">充值卡充值</a></div>
              </div>
            </div>
          </li>
          <li>
            <div class="top_nav">
              <div><a href="Javascript:;">帮助中心</a>
                <b></b>  
              </div>
              <div class="top_nav_list">
                <li><a href="javascript:;">安全中心</a></li>
                <div><a href="javascript:;">个人信息</a></div>
                <div><a href="javascript:;">收货地址</a></div>
                <div><a href="javascript:;">商品收藏</a></div>
                <div><a href="javascript:;">评价与咨询</a></div>
              </div>              
            </div>
          </li>
          <li>
            <div class="top_nav">
              <div>
                <a href="Javascript:;">网站导航</a>
                <b></b>  
              </div>
              <div class="top_nav_floor">
                <div>
                  <h6>商品分类</h6>
                  <div>
                    <a href="javascript:;">五谷禅食粉</a>
                    <a href="javascript:;">精选粗粮</a>
                    <a href="javascript:;">健康生活</a>
                    <a href="javascript:;">礼盒专区</a>
                    <a href="javascript:;">南北干货</a>
                  </div>
                </div>
                <span class="line"></span>
                <div>
                  <h5>商品分类</h5>
                  <div>
                    <a href="javascript:;">五谷禅食粉</a>
                    <a href="javascript:;">精选粗粮</a>
                    <a href="javascript:;">健康生活</a>
                    <a href="javascript:;">礼盒专区</a>
                    <a href="javascript:;">南北干货</a>
                  </div>
                </div>
                <span class="line"></span>
                <div>
                  <div>
                    <br>
                    <a href="javascript:;">触屏版</a>
                    <a href="javascript:;">关注我们</a><br>
                    <div>客服电话：400-9966-315</div>
                  </div>
                </div>
              </div>
           </div>
          </li>
          <li>
            <span><a class="top_wb" href="javascript:;" title="关注官方微博"></a></span>
            <span><a class="top_wx" href="javascript:;" ></a>
              <div>
                <div>
                  <div class="arrows"></div>
                  <div><a class="top_wxtp" href="javascript:;"></a></div>
                </div>
              </div>
            </span>
          </li>
        </ul>
      </div>
    </div>
    <!-- 搜索--小购物车 -->
    <div class="top_content">
      <div class="top_content_wrap">
        <div><router-link to="/"><img src="/img/logo.png"></router-link></div>
        <div class="search">
          <div>
            <input type="text" class="search_input" value="红豆薏米枸杞粉"
                   onfocus="this.value=(this.value=='红豆薏米枸杞粉')?'':this.value;"
                   onblur="this.value=(this.value=='')?'红豆薏米枸杞粉':this.value;">
            <button type="submit"><img src="../assets/imges/signup/search.png"></button>
            <div class="hots">
              <span>热门关键词:</span>
              <a href="javascript:;">益元八宝禅食</a>
              <a href="javascript:;">红豆薏米</a>
              <a href="javascript:;">熟黑芝麻</a>    
              <a href="javascript:;">黑木耳</a>
              <a href="javascript:;">黄小米</a>
              <a href="javascript:;">心意</a>  
            </div>
          </div>
        </div>
        <div class="minicart">
          <div>
            <a href="javascript:;">
              <i class="setCart"></i>
              <span>我的购物车</span>
              <em>2</em>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!-- 底部导航栏 -->
    <div class="btmMenu bg_red">
      <div class="mainNav">
        <span>所有商品分类</span>
        <ul>
          <li><router-link to="/">首页</router-link></li>
          <li><router-link to="/">新闻公告</router-link></li>
          <li><router-link to="/">帮助中心</router-link></li>
          <li><router-link to="/">帮助中心</router-link></li>
        </ul>
        <router-link to="/"><img src="../assets/imges/signup/yhkcz.jpg"></router-link>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      loginBar:true,
    }
  },
  methods:{
      
    }
}
</script>script
<style lang="scss">
.header{
  .topMenu{
    width: 100%;
    background-color: #f7f7f7;
    color: #999;
    .wrap{
      z-index: 3;
      width: 1200px;height: 33px;line-height: 33px;
      margin: 0 auto;
      position: relative;
      a{
        color: #969696;
        text-decoration: none;
        &:hover{color: #c7000a}
      }
      // <!-- 导航右边 -->
      ul{
         display: flex;
         position: absolute;
         top: 0px;right: 0px;
         >li{ 
            display: block;
            padding: 0 5px;
            width: 80.25px;
            &:hover b{transform: rotate(180deg);}
            //目录变化
            .top_nav{
              margin-top: 8px;
              padding-bottom: 4px;
              width: 80px;
              position: relative;
              >div:first-child{
                width: 71px;height: 21px;line-height: 21px;
                text-align: center;
                a{width: 80px;height: 25px;display: block;}
              }
              &:hover{
                background-color: white;
                box-shadow: 0 0 8px #777;
                background-color: white;
                .top_nav_list{display: block;}
                .top_nav_floor{visibility: visible;}
              }
            }
            .top_nav_list{
              display: none;
              z-index: 3;
              text-align: center;
              border-top: 1px solid #eee ;
              >div{width: 80px;height: 22px;line-height: 22px;}
            }
            b{
              width: 8px;height: 4px;display: block;
              background-color: red;
              position: absolute;
              top: 8px;left: 68px;
              background: url('../assets/imges/signup/header.png') no-repeat -86px -130px;
              transition: 0.3s linear;
            }
            //第三个样式
            .top_nav_floor{
              width: 817px;height: 164px;
              position: absolute;
              visibility: hidden;
              top: 25px;right: 0px;
              background-color: white;
              box-shadow: -3px 4px 8px #777;
              display: flex;
              h6{color: #aa1a22;font: 600 16px 微软雅黑;}
              h5{color: #e98323;font: 600 16px 微软雅黑;}
              >div{
                margin-bottom: 10px;
                padding: 15px 0px 0 25px;
                width: 400px;
                a{
                  display: block;
                  float: left;
                  width: 75px;height: 30px;
                  text-align: left;
                  }
                p{clear: both;display: block;}
              }
              .line{
                background: url('../assets/imges/signup/line.jpg') center repeat-y;
                height: 90px;width: 5px;
                margin: 25px 0px;
              }
            }
            &:last-child {
              width: 75px;height: 30px;
              span a{
                margin: 10px 3px;
                display: block;
                background: url('../assets/imges/signup/header.png') center repeat-y;
                background-position: -55px 0;
                width: 19px;height: 16px;
                float: left;
              }
              .top_wx{
                background-position: -74px 0!important;
              }
              .top_wxtp{
                display: none;
                background: url('../assets/imges/signup/header.png') no-repeat -2px -94px;
                width: 69px;
                height: 72px;
                position: absolute;
                top: 22px;right: 0px;
                }
              .arrows{
                background: url('../assets/imges/signup/header.png') no-repeat -169px -2px;
                width: 8px;
                height: 4px;
                position: absolute;
                top: 28px;right: 28px;
                display: none;
                }
              >span{
                &:hover .top_wxtp{display: block;}
                &:hover .arrows{display: block;}
                }
            }
          }
        }
    }
  }

  //搜索--小购物车
  .top_content{
    width: 1200px;
    margin: auto;
    .search_input{
      border: 1px solid #c7000b;
      width: 425px;height: 36px;
      padding: 0 0 0 4px;
      vertical-align: middle;
      color: #999;
    }
    .top_content_wrap{
      width: 1200px;height: 104px;
      padding: 20px 0px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      .search{
        a{
          color: #aaa;margin: 0px 5px;
          &:hover{text-decoration:none;color: #c7000b;}
          }
      }
      .minicart{
        width: 194px;
        height: 33px;
        top: 28px;
        right: 0px;
        border: 1px solid #efefef;
        font-size: 12px;
        text-align: mi;
        a{
          display: inline-block;
          position: relative;
          text-align: center;
          line-height: 33px;
          color: #666;margin: 0px 5px;
          text-align: center;
          &:hover{text-decoration:none;color: #c7000b;}
          i{
            background: url('../assets/imges/signup/header.png') no-repeat -102px -235px;
            display: inline-block;
            margin: 4px 5px 0px 0px;
            width: 23px;
            height: 21px;
            position: absolute;
            top: 2px;left: 2px;
          }
          span{padding-left: 36px;}
          em{
            position: absolute;
            top: 0;
            left: 154px;
            width: 40px;
            height: 31px;
            text-align: center;
            line-height: 33px;
            background-color: #e40101;
            color: #fff;
            font-size: 16px;
            font-weight: 600;
          }
        }
      }
    }
  }

  // 底部导航栏
  .btmMenu{
    width: 100%;height: 42px;
    .mainNav{
      width: 1200px;height: 40px;
      margin: 0px auto;
      span{
        background-color: rgba($color: #000000, $alpha: 0.36);
        width: 230px;height: 42px;line-height: 42px;
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
        display: block;
        float: left;
      }
      ul{
        li{
          float: left;
          text-align: center;
          a{
            padding: 0px 44px;
            // text-align: center;
            text-decoration: none;
            display: block;
            height: 42px;line-height: 42px;
            font-size: 16px;
            color: white;
          }
        }
      }
      img{float: right;}
    }
  }
}
</style>