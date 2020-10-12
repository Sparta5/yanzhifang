<template>
  <div class="home">
    <my-header></my-header>
    <div class="main">
      <carousel :value="banner"></carousel>
      <div class="mainNav">
        <!-- on1 -->
        <ul>
          <li>
            <div class="nav_l">
              <h5><router-link to="/">五谷禅食粉</router-link><span class="carego_link"></span></h5>
              <div>
                <a href="javascript:;">营养早餐</a>
                <a href="javascript:;">头等大事</a>
                <a href="javascript:;">粉嫩系列</a>
              </div>
            </div>
            <div class="cat_chldren_box">
              <div class="cat_item">
                <dl>
                  <dt><a href="javascript:;">营养早餐</a></dt>
                  <dd>
                    <a href="javascript:;"> 养元八宝粉</a>
                    <a href="javascript:;"> 芝麻核桃黑豆粉</a>
                    <a href="javascript:;"> 坚果代餐羹</a>
                    <a href="javascript:;"> 魔芋代餐粥</a>
                    <a href="javascript:;"> 红豆薏米枸杞粉</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">头顶大事</a></dt>
                  <dd>
                    <a href="javascript:;"> 熟黑芝麻</a>
                    <a href="javascript:;"> 黑芝麻禅食</a>
                    <a href="javascript:;"> 黑八宝450g</a>
                    <a href="javascript:;"> 黑五宝</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">纯粉系列</a></dt>
                  <dd>
                    <a href="javascript:;"> 山药粉</a>
                    <a href="javascript:;"> 茯苓粉</a>
                    <a href="javascript:;"> 魔芋粉山药粉</a>
                    <a href="javascript:;"> 青木瓜粉</a>
                    <a href="javascript:;"> 薏仁禅食500g</a>
                    <a href="javascript:;"> 杏仁禅食</a>
                    <a href="javascript:;"> 薏米粉葛根粉</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">粉粉伴侣</a></dt>
                  <dd>
                    <a href="javascript:;">鳌古黑糖</a>
                    <a href="javascript:;"> 燕麦伴侣</a>
                    <a href="javascript:;"> 清伴侣</a>
                    <a href="javascript:;"> 谷香小伴</a>
                    <a href="javascript:;"> 多晶冰糖</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">气质女神</a></dt>
                  <dd>
                    <a href="javascript:;"> 阿胶红枣枸杞粉</a>
                    <a href="javascript:;"> 葛根木瓜魔芋粉</a>
                    <a href="javascript:;"> 纤微粉</a>
                    <a href="javascript:;"> 益元多谷代餐粉</a>
                    <a href="javascript:;"> 阿胶糕</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">靓汤</a></dt>
                  <dd></dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">专柜同款</a></dt>
                  <dd>
                    <a href="javascript:;"> 益元八宝禅食</a>
                    <a href="javascript:;"> 黑八宝</a>
                    <a href="javascript:;"> 美八宝</a>
                    <a href="javascript:;"> 高布帕</a>
                    <a href="javascript:;"> 清润喜食</a>
                    <a href="javascript:;"> 固元膏</a>
                  </dd>
                </dl>
                <div class="back_img">
                  <ul>
                   <li><a href="javascript:;"><img src="../assets/imges/back_img/bg_img01.jpg"></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
        </ul>
        <!-- on2 -->
        <ul>
          <li>
            <div class="nav_l">
              <h5><router-link to="/">精选粗粮</router-link><span class="carego_link"></span></h5>
              <div>
                <a href="javascript:;">营养早餐</a>
                <a href="javascript:;">头等大事</a>
                <a href="javascript:;">粉嫩系列</a>
              </div>
            </div>
            <div class="cat_chldren_box">
              <div class="cat_item">
                <dl>
                  <dt><a href="javascript:;">营养早餐</a></dt>
                  <dd>
                    <a href="javascript:;"> 养元八宝粉</a>
                    <a href="javascript:;"> 芝麻核桃黑豆粉</a>
                    <a href="javascript:;"> 坚果代餐羹</a>
                    <a href="javascript:;"> 魔芋代餐粥</a>
                    <a href="javascript:;"> 红豆薏米枸杞粉</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">纯粉系列</a></dt>
                  <dd>
                    <a href="javascript:;"> 茯苓粉</a>
                    <a href="javascript:;"> 魔芋粉山药粉</a>
                    <a href="javascript:;"> 青木瓜粉</a>
                    <a href="javascript:;"> 薏米粉葛根粉</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">粉粉伴侣</a></dt>
                  <dd>
                    <a href="javascript:;">鳌古黑糖</a>
                    <a href="javascript:;"> 燕麦伴侣</a>
                    <a href="javascript:;"> 多晶冰糖</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">气质女神</a></dt>
                  <dd>
                    <a href="javascript:;"> 阿胶红枣枸杞粉</a>
                    <a href="javascript:;"> 阿胶糕</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">专柜同款</a></dt>
                  <dd>
                    <a href="javascript:;"> 益元八宝禅食</a>
                    <a href="javascript:;"> 黑八宝</a>
                    <a href="javascript:;"> 美八宝</a>
                    <a href="javascript:;"> 高布帕</a>
                    <a href="javascript:;"> 清润喜食</a>
                    <a href="javascript:;"> 固元膏</a>
                  </dd>
                </dl>
                <div class="back_img">
                  <ul>
                   <li><a href="javascript:;"><img src="../assets/imges/back_img/bg_img02.jpg"></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
        </ul>
        <!-- on3 -->
        <ul>
          <li>
            <div class="nav_l">
              <h5><router-link to="/">健康生活</router-link><span class="carego_link"></span></h5>
              <div>
                <a href="javascript:;">营养早餐</a>
                <a href="javascript:;">头等大事</a>
                <a href="javascript:;">粉嫩系列</a>
              </div>
            </div>
            <div class="cat_chldren_box">
              <div class="cat_item">
                <dl>
                  <dt><a href="javascript:;">营养早餐</a></dt>
                  <dd>
                    <a href="javascript:;"> 养元八宝粉</a>
                    <a href="javascript:;"> 芝麻核桃黑豆粉</a>
                    <a href="javascript:;"> 坚果代餐羹</a>
                    <a href="javascript:;"> 魔芋代餐粥</a>
                    <a href="javascript:;"> 红豆薏米枸杞粉</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">头顶大事</a></dt>
                  <dd>
                    <a href="javascript:;"> 熟黑芝麻</a>
                    <a href="javascript:;"> 黑芝麻禅食</a>
                    <a href="javascript:;"> 黑八宝450g</a>
                    <a href="javascript:;"> 黑五宝</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">纯粉系列</a></dt>
                  <dd>
                    <a href="javascript:;"> 山药粉</a>
                    <a href="javascript:;"> 茯苓粉</a>
                    <a href="javascript:;"> 魔芋粉山药粉</a>
                    <a href="javascript:;"> 青木瓜粉</a>
                    <a href="javascript:;"> 薏仁禅食500g</a>
                    <a href="javascript:;"> 杏仁禅食</a>
                    <a href="javascript:;"> 薏米粉葛根粉</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">粉粉伴侣</a></dt>
                  <dd>
                    <a href="javascript:;">鳌古黑糖</a>
                    <a href="javascript:;"> 燕麦伴侣</a>
                    <a href="javascript:;"> 谷香小伴</a>
                    <a href="javascript:;"> 多晶冰糖</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">气质女神</a></dt>
                  <dd>
                    <a href="javascript:;"> 阿胶红枣枸杞粉</a>
                    <a href="javascript:;"> 葛根木瓜魔芋粉</a>
                    <a href="javascript:;"> 益元多谷代餐粉</a>
                    <a href="javascript:;"> 阿胶糕</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">靓汤</a></dt>
                  <dd></dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">专柜同款</a></dt>
                  <dd>
                    <a href="javascript:;"> 益元八宝禅食</a>
                    <a href="javascript:;"> 黑八宝</a>
                    <a href="javascript:;"> 高布帕</a>
                    <a href="javascript:;"> 固元膏</a>
                  </dd>
                </dl>
                <div class="back_img">
                  <ul>
                   <li><a href="javascript:;"><img src="../assets/imges/back_img/bg_img03.jpg"></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
        </ul>
        <!-- on4 -->
        <ul>
          <li>
            <div class="nav_l">
              <h5><router-link to="/">礼盒专区</router-link><span class="carego_link"></span></h5>
              <div>
                <a href="javascript:;">营养早餐</a>
                <a href="javascript:;">头等大事</a>
                <a href="javascript:;">粉嫩系列</a>
              </div>
            </div>
            <div class="cat_chldren_box">
              <div class="cat_item">
                <dl>
                  <dt><a href="javascript:;">头顶大事</a></dt>
                  <dd>
                    <a href="javascript:;"> 熟黑芝麻</a>
                    <a href="javascript:;"> 黑芝麻禅食</a>
                    <a href="javascript:;"> 黑八宝450g</a>
                    <a href="javascript:;"> 黑五宝</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">纯粉系列</a></dt>
                  <dd>
                    <a href="javascript:;"> 山药粉</a>
                    <a href="javascript:;"> 茯苓粉</a>
                    <a href="javascript:;"> 魔芋粉山药粉</a>
                    <a href="javascript:;"> 青木瓜粉</a>
                    <a href="javascript:;"> 薏仁禅食500g</a>
                    <a href="javascript:;"> 杏仁禅食</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">粉粉伴侣</a></dt>
                  <dd>
                    <a href="javascript:;"> 清伴侣</a>
                    <a href="javascript:;"> 谷香小伴</a>
                    <a href="javascript:;"> 多晶冰糖</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">气质女神</a></dt>
                  <dd>
                    <a href="javascript:;"> 纤微粉</a>
                    <a href="javascript:;"> 益元多谷代餐粉</a>
                    <a href="javascript:;"> 阿胶糕</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">专柜同款</a></dt>
                  <dd>
                    <a href="javascript:;"> 益元八宝禅食</a>
                    <a href="javascript:;"> 黑八宝</a>
                    <a href="javascript:;"> 清润喜食</a>
                    <a href="javascript:;"> 固元膏</a>
                  </dd>
                </dl>
                <div class="back_img">
                  <ul>
                   <li><a href="javascript:;"><img src="../assets/imges/back_img/bg_img04.jpg"></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
        </ul>
        <!-- on5 -->
        <ul>
          <li>
            <div class="nav_l">
              <h5><router-link to="/">南北干货</router-link><span class="carego_link"></span></h5>
              <div>
                <a href="javascript:;">营养早餐</a>
                <a href="javascript:;">头等大事</a>
                <a href="javascript:;">粉嫩系列</a>
              </div>
            </div>
            <div class="cat_chldren_box">
              <div class="cat_item">
                <dl>
                  <dt><a href="javascript:;">营养早餐</a></dt>
                  <dd>
                    <a href="javascript:;"> 养元八宝粉</a>
                    <a href="javascript:;"> 芝麻核桃黑豆粉</a>
                    <a href="javascript:;"> 魔芋代餐粥</a>
                    <a href="javascript:;"> 红豆薏米枸杞粉</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">头顶大事</a></dt>
                  <dd>
                    <a href="javascript:;"> 熟黑芝麻</a>
                    <a href="javascript:;"> 黑芝麻禅食</a>
                    <a href="javascript:;"> 黑八宝450g</a>
                    <a href="javascript:;"> 黑五宝</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">纯粉系列</a></dt>
                  <dd>
                    <a href="javascript:;"> 山药粉</a>
                    <a href="javascript:;"> 茯苓粉</a>
                    <a href="javascript:;"> 魔芋粉山药粉</a>
                    <a href="javascript:;"> 薏仁禅食500g</a>
                    <a href="javascript:;"> 杏仁禅食</a>
                    <a href="javascript:;"> 薏米粉葛根粉</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">粉粉伴侣</a></dt>
                  <dd>
                    <a href="javascript:;">鳌古黑糖</a>
                    <a href="javascript:;"> 燕麦伴侣</a>
                    <a href="javascript:;"> 清伴侣</a>
                    <a href="javascript:;"> 谷香小伴</a>
                    <a href="javascript:;"> 多晶冰糖</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">气质女神</a></dt>
                  <dd>
                    <a href="javascript:;"> 阿胶红枣枸杞粉</a>
                    <a href="javascript:;"> 葛根木瓜魔芋粉</a>
                    <a href="javascript:;"> 纤微粉</a>
                    <a href="javascript:;"> 益元多谷代餐粉</a>
                    <a href="javascript:;"> 阿胶糕</a>
                  </dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">靓汤</a></dt>
                  <dd></dd>
                </dl>
                <dl>
                  <dt><a href="javascript:;">专柜同款</a></dt>
                  <dd>
                    <a href="javascript:;"> 益元八宝禅食</a>
                    <a href="javascript:;"> 黑八宝</a>
                    <a href="javascript:;"> 美八宝</a>
                    <a href="javascript:;"> 高布帕</a>
                    <a href="javascript:;"> 清润喜食</a>
                    <a href="javascript:;"> 固元膏</a>
                  </dd>
                </dl>
                <div class="back_img">
                  <ul>
                   <li><a href="javascript:;"><img src="../assets/imges/back_img/bg_img01.jpg"></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class="main_content">
       <img src="../assets/imges/signup/mydcZ.jpg">
    </div>
    <div class="index_list">
      <index-list></index-list>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import myHeader from "../components/Header"
import Carousel from "../components/carousel/Carousel"
import indexList from "../components/index/indexList"
import {getIndex} from "../assets/js/apis/index";
export default {
  components: {
    myHeader,Carousel,indexList
  },
  data(){
    return {
      banner:[]
    }
  },
  methods:{

  },
  mounted(){
    
  }
}
</script>
<style lang="scss">
  .home{
    padding-top: 20px;
    .main{
      width: 1200px;
      background-color: rgba(139, 135, 168, 0.1);
      margin: 0px auto;
      position: relative;
      .mainNav{
        width: 230px;height: 480px;
        background-color: rgba($color: #000000, $alpha: 0.4);
        position: absolute;
        top: 0px;left:0px;
        z-index: 10;
        ul{
            margin-bottom: 0px;
            &:first-child{padding-top: 10px;}
            &:last-child .cat_chldren_box{top: 42px;}
            &:nth-child(4) .cat_chldren_box{top: 25px;}
          li{
            height: 93px;
            border-bottom: 1px solid rgba(116, 111, 153, 0.3); 
            &:hover{
              .cat_chldren_box{visibility: visible;}
              .nav_l{
                background-color: white;
                a{color: black;}
              }
            }
            h5{
              padding-top: 20px;
              a{color: white;}
              &:hover>a{color: black;}
              .carego_link{
                color: #aea7a5;
                float: right;
                font-size: 24px;
                padding-right: 23px;
                height: 25px;
                background: url(../assets/imges/signup/jtou.png) no-repeat 0;
              }
            }
            .nav_l{
              width: 230px;height: 93px;
              padding-left: 15px;
              div{
                a{padding: 0px 4px;color: #aea7a5;}
              }
            }
            .cat_chldren_box{
              left: 230px;top: 0px;
              visibility: hidden;
              position: absolute;
              z-index: 0;
              background: #FFF;
              width: 585px;
              min-height: 300px;
              padding: 0 20px;
              opacity: 0.98;
              z-index: 12;
              border: 1px solid #ececec;
              border-left: none;
              &:hover{visibility: visible;}
              dl{
                width: 550px;
                clear: both;
                dt{
                  padding-right: 10px;
                  float: left;
                  text-align: right;
                  height: 18px;
                  line-height: 18px;
                  margin: 4px 0px;
                  color: #615959;
                  a{
                    color: #615959;
                    font-weight: bold;
                    font-size: 14px;
                  }
                }
                dd{
                    display: block;
                    width: 428px;
                    float: left;
                  a{
                    float: left;
                    white-space: nowrap;
                    display: block;
                    text-decoration: none;
                    font-size: 12px;
                    line-height: 18px;
                    margin: 4px 0px;
                    text-align: left;
                    padding: 0px 6px;
                    border-left: 1px solid #ccc;
                    color: #666;
                    &:hover{color: #c7000b;}
                  }
                }
              }
              .back_img>ul>li{height: auto;}
            }
          }
        }
      }
    }
    .main_content{
      width: 1200px;
      margin: 36px auto 8px;
    }
  }
</style>
