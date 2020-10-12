<template>
  <div class="detials">
    <my-header></my-header>
    <div class="conten">
      <div class="breadcrumbs">
        <span><router-link to="/">首页 </router-link></span>>
        <span><a href="javscript:;" v-text="product.fname"></a></span> >
        <span><a href="javscript:;" v-text="product.title"></a></span>
      </div>
      <div class="product">
        <div class="magnifying">
          <!-- 放大镜预留 -->
          <my-magnifying :pics="pics" v-if="flag"></my-magnifying>
        </div>
        <div class="conten_r">
          <div class="detail">
            <div>
              <h6 v-text="product.title"></h6>
              <p v-text="product.specification"></p>
            </div>
            <ul>
              <li><span>销售价格：</span><b v-text="`¥${product.price}`"> </b></li><br>
              <li>
                <span>商品评分：</span>
                <span class="grade">
                  <span>
                    <i class="iconfont icon-pingfen"></i>
                    <i class="iconfont icon-pingfen"></i>
                    <i class="iconfont icon-pingfen"></i>
                    <i class="iconfont icon-pingfen"></i>
                    <i class="iconfont icon-pingfen"></i>
                  </span>
                  <a href="javascript:;">(共1人评论)</a>
                </span>
              </li>
            </ul>
            <table>
              <tbody>
                <tr>
                  <td>货品编号:</td>
                  <td v-text="product.art_no"></td>
                </tr>
              </tbody>
            </table>
            <div class="product_action">
              <ul>
                <li>
                  <label>数量：</label>
                  <span class="quantity">
                    <input type="text" value="1" min="1" max="99">
                    <a href="javascript:;">－</a>
                    <a href="javascript:;">＋</a>
                  </span>
                  <span>罐</span>
                </li>
                <li class="go_car">
                  <button><span> 立即购买</span></button>
                  <button><span>加入购物车</span></button>
                  <span>
                    <button>扫一扫购买<i class="iconfont icon-erweima"></i><img src="" alt=""></button>
                  </span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import myHeader from '../components/Header'
import myMagnifying from '../components/Magnifying'
export default {
  components:{
    myHeader,myMagnifying
  },
  props:["did"],//undifinde??
  data(){
    return {
      product:{price:0},//防止还没加载完报错(接受详情所有)
      specs:[],//占时不用(按热门条件查询--待添加)
      pics:[
        {md:"",lg:""}
      ],
      flag:false
      // times:0,//记录点击的次数
      // i:0,//记录位置控制中图和大图
    }
  },
  methods:{

    myload(){
      // console.log(this.did)//udefind??
      let did = this.$route.params.did;
      console.log(did)
      this.axios.get("/details",{
        params:{did:did}
      }).then(result=>{
        console.log(result.data);
        var {product,specs,pics}=result.data
        this.product=product;
        this.specs=specs;
        this.pics=pics;//当前商品的图片列表
        this.flag=true;
      })
    }
  },
  created(){
    this.myload();
  },
  watch:{
    did(){
      this.myload();
    }
  }
}
</script>
<style lang="scss">
.detials{
  .conten{
    a{
      text-decoration: none;
      color: #666;
    }
    width: 1200px;margin: 0px auto;
    .breadcrumbs{
      padding: 10px 0px;
      a{font-size: 14px;}
      span:first-child a{
        font-family: "Microsoft YaHei";
        font-size: 14px;
        color: #434a54;
        padding: 0 7px 0 10px;
        font-weight: bold;
      }
      span a{font-family: Simsun;}
    }
    .product{
      display: flex;
      width: 968px;
      border: 1px solid #fefefe;
      box-shadow: 0 0 4px #33323293;
      .magnifying{
        width: 420px;height: 550px;background-color: rgb(167, 157, 156);
        }
      .conten_r{
        width: 100%;
        .detail{
          
          >div{
            padding: 10px 0px;
            h6{
              color: #191c1f;
              font: 600 18px 微软雅黑;
            }
            p{color:#fa8e19;margin-bottom: 0px;}
          }
          >ul{
            width: 100%px;height: 130px;
            border-bottom:1px solid #ddd;
            margin-bottom: 10px;
            li{
              display: inline-block;
              display: inline-block;
              >span{
                text-align: center;
                color: black;
                margin: 0px 0px;
                float: left;
              }
            }
            
            b{
              font-size: 166.66667%;
              padding-left: 10px;
              @extend span
            }
            .grade{
              i{color: rgb(226, 226, 10);}
            }
          }
          table td{width: 300px;}
          .product_action{
            border-top:1px solid #ddd;
            margin-top: 10px;
            ul{
              li{
                height: 55px;
                display: block;
                label{
                  line-height: 55px;
                  width: 6em;
                  margin-right: 1em;
                  text-align: right;
                }
                .quantity{
                  width: 65px;
                  display: inline-block;
                  vertical-align: middle;
                  a{
                    border: 1px solid #dfdfdf;
                    background: #fbfbfb;
                    height: 25px;width: 20px;
                    margin-bottom: 3px;
                    display: inline-block;
                    text-align: center;
                    font: 14px/22px simsun,serif;
                    &:hover{background-color: rgb(180, 23, 23);color: white;}
                  }
                  input{
                    width: 35px;
                    height: 55px;
                    margin-right: 2px;
                    border: 1px solid #dfdfdf;
                    text-align: center;
                    float: left;
                  }
                }
              }
              .go_car{
                padding-top: 5px;
                button{margin: 15px;}
                >button span{
                  width: 160px;height: 45px;
                  display: block;
                  text-align: center;
                  color: white;
                  border: 1px solid #c7000b;
                  font-family: "Microsoft YaHei";
                  font-size: 18px;
                  line-height: 45px;
                  position: relative;
                  cursor: pointer;
                  display: inline-block;
                  border-radius: 2px;
                  padding-left: 30px;
                  background: #c7000b url(../assets/imges/signup/productinfo.png) no-repeat scroll -255px -60px;
                }
                >button:first-child span{
                  width: 130px;
                  background-color: white;
                  color: #c7000b;
                  padding-left: 0px;
                }
                >span{

                }
              }
            }
          }
        }
          
      }
    }
  }
}
</style>