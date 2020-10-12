<template>
  <div class="passport">
    <div class="login">
      <router-link to="/"><img src="/img/logo.png" alt=""></router-link>
    </div>
    <!-- content -->
    <div id="content">
      <div class="inner-wrap">
        <!-- 引入成功的提示框绝对定位在这个div上 -->
        <massage ref="child"></massage>
        <div class="back_img" :style="{'background-image':'url('+require('@/assets/imges/signup/bg.jpg')+')'}">
          <div class="signin-wrap">
            <h2>用户登录</h2>
            <!-- 表单 -->
            <form action="">
              <ul>
                <li>
                  <span>
                    <input type="text" v-model="uname" class="x-input" placeholder="用户名/邮箱/手机号">
                    <span class="reg" v-show="nameHidden">
							      	<q class="iconfont icon-tanhao"></q>
								      <span v-text="nameStatus"></span>
                    </span>
                  </span>
                </li>
                <li>
                  <span>
                    <input type="password" v-model="upwd" class="x-input" placeholder="填写密码" autocomplete="off">
                    <span class="reg" v-show="upwdHidden">
							      	<q class="iconfont icon-tanhao"></q>
								      <span v-text="upwdStatus"></span>
                    </span>
                  </span>
                </li>
                <li>
                  <span>
                    <input type="checkbox" v-model="is_remember"><label for="">记住账号</label>
                    <input type="checkbox" v-model="is_autologin" ><label for="">两周内自动登录</label>
                  </span>
                </li>
                <li>
                  <span><button type="button" class="btn" @click="Login">登录</button><a href="javasctript:;">忘记密码？</a></span>
                </li>
              </ul>
            </form>
            <!-- 网站合作 -->
            <teamList></teamList>
            <!-- inner-wrap底部 -->
            <div class="isSignup"><h6>还不是会员?<button class="btn"><router-link to="register">免费注册</router-link></button></h6></div>
          </div>
        </div>
      </div>
    </div>
    <!-- 底部导航(已经设为全局) -->
  </div>
</template>
<script>
import teamList from "../components/Login/team_list";//引入合作账号登录组件
import Massage from "../components/Login/message";//引入成功提示框组件
import {postLogin} from "../assets/js/apis/register";//封装axis注册登录api
export default {
    components:{teamList,Massage},
    data(){
      return{
      uname:null,
      upwd:null,
      is_remember:true,
      is_autologin:null,
      nameHidden:false,
      upwdHidden:false,
      nameStatus:null,
      upwdStatus:null
      }
    },
    methods:{
      Login(){//提交登录
          //判断各项是否为空
          if(this.uname==null){this.nameHidden=true;this.nameStatus="请填写登录账号"};
          if(this.upwd==null){this.upwdHidden=true;this.upwdStatus="请填写密码"; return };
          var phoneRegExp = /^1[34578]\d{9}$/
          if(phoneRegExp.test(this.uname)){//手机提交
            let obj = {phone:this.uname,upwd:this.upwd}
            postLogin(obj).then(result=>{
                if(result.code == 1){
                  var val='登陆成功' //传给子组件提示框内容
                  this.$refs.child.threeGo(val)//调用子组件(massage)成功的方法
                }else{
                  this.$refs.child.errMassge()//调用子组件(massage)失败的方法
                }
            })
          }else if(this.uname.match(/@.+\./i)){//邮箱提交
            let obj = {email:this.uname,upwd:this.upwd}
            console.log('454')
            postLogin(obj).then(result=>{
                if(result.code == 1){
                    console.log('邮箱登录成功')
                    this.$refs.child.threeGo()
                }else{
                  this.$refs.child.errMassge()
                }
            })  
          }else{//用户名提交
            let obj = {uname:this.uname,upwd:this.upwd}
            postLogin(obj).then(result=>{
                if(result.code == 1){
                    this.$refs.child.threeGo()
                }else{
                  this.$refs.child.errMassge()
                }
            })  
          }
      }
    }
 }
</script>
<style lang="scss">
.passport{
    .login{
       width: 1000px;margin:0 auto;
       padding-top: 25px;
       margin-bottom: 5px;
     }
    .back_img{
       background: url(../assets/imges/signup/placeholder.gif) no-repeat 0 center;width: 100%;min-height: 560px;
       .signin-wrap{
          width: 328px;min-height: 400px;//+----
          border: 6px solid #f5f5f5;
          margin-left: 615px;
          >h2{border-bottom: 1px solid rgb(194, 183, 183);
             padding-left: 20px;margin-bottom: 10px;
             font: 400 24px/44px 'Microsoft Yahei';
          };
          ul>li{
              height: 51px;
              padding-left: 20px;margin-bottom: 10px;
              position: relative;
              //验证码+++++
              //.verify-input{
              //   width: 106px;height: 38px;
              //   line-height: 10px;
              //   padding: 8px 5px;
              // }
              .reg{
                  display: inline-block;
                  position: absolute;
                  top:30px;left: 20px;
                }
              label{margin: 10px;}
              a{color: #666;margin-left: 8px;}
              .btn{width: 200px; height: 38px;border-radius: 3px;}
            };
          .isSignup{
            padding: 10px 20px;background-color: #e6e6e6;
            h6{
              font-size: 15px;color: #fa9600;
              .btn{
                  width: 68px;height: 23px;font-size: 12px;
                  padding: 0px;border-radius: 3px;
                  float: right;
                  a{color: white;text-decoration: none;}
                }
            }  
          }
       }

    }
}

</style>