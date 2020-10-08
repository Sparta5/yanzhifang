<template>
  <div class="passport">
		<div>
			<div class="login">
				<router-link to="/"><img src="img/logo.png"></router-link>
			</div>
		</div>
		<!-- content -->
		<div id="container">
			<div class="inner-wrap">
				<!-- 引入成功的提示框绝对定位在这个div上 -->
        <massage ref="child"/>
				<!-- content--left -->
				<div class="signup-content">
					<div><h4>用户注册</h4></div>
					<ul class="user_reg mt-2">
						<li><label class="float-left">
						<em>* </em>登录账号：&nbsp;</label>
						<span>
							<input type="text" v-model="userName" @blur="checkName"  class="x-input" placeholder="用户名/邮箱/手机号,最少4个字符">
							<span class="reg" v-show="nameHidden">
								<!-- <q class="iconfont" :class="isuname==''?'default':isuname==true?'icon-gou':'icon-tanhao'"></q> -->
								<q class="iconfont" :class="[isName?'icon-gou':'icon-tanhao']" ></q>
								<span v-text="nameStatus"></span>
							</span>
						</span>
						</li>
						<!-- 密码验证 -->
						<li><label>
						<em>* </em>密码：&nbsp;</label>
						<span>
							<input type="password"  class="x-input" @blur="checkUpwd" v-model="userUpwd" placeholder="6-20个字符" maxlength="20" autocomplete='off'>
							<span class="reg">
								<q class="iconfont" :class="{'icon-tanhao':isUpwd}"></q>
								<span v-text="upwdStatus"></span>
							</span>
							<span class="d-inline-block">
								<span>密码强度：</span><em class="font_small">{{securityStatus}}</em>
								<span class="progress"><span :style="security"></span></span>
							</span>
						</span>
						</li>
						<li><label>
						<em>* </em>确认密码：&nbsp;</label>
						<span>
							<input type="password" class="x-input"  @blur="checkConupwd" v-model="userConupwd" placeholder="再次填写密码" maxlength="20" autocomplete="off">
							<span class="reg">
								<q class="iconfont" :class="{'icon-tanhao':isConupwd}"></q>
								<span v-text="conupwdStatus"></span>
							</span>
						</span>
						</li>
						<!-- <li><label>
						<em>* </em>验证码：&nbsp;</label>
						<span>
							<input type="text" class="x-input" placeholder="填写验证码">
							<span class="reg">*</span>
						</span>
						</li> -->
						<li>
							<label>&nbsp;</label>
						<p class="">
							<input type="checkbox"  v-model="userAgree"/>
							&nbsp;我已阅读并同意 
							<a href="#" class="text-danger"> 会员注册协议</a> 和 
							<a href="#" class="text-danger">隐私保护政策</a>
							<span class="reg">
								<q class="iconfont" :class="{'icon-tanhao':isAgree}"></q>
								<span v-text="agreeStatus"></span>
							</span>
						</p>
						</li>
						<li>
							<label>&nbsp;</label>
							<button type="button"><span class="btn" @click="register">注册</span></button>
						</li>
					</ul>
				</div>
				<!-- content--right -->
				<div class="signup-quit font_small li">
					<span>已有会员账号直接登录</span>
					<router-link to="/login"><span class="btn ml-2">转到登录页</span></router-link>
				</div>
			</div>
		</div>
    <!-- 底部导航 -->
    <div class="theme-footer">
      <p style="text-align: center;margin:35px auto 3px;">
        <a href="/" type="url" title="燕之坊官网" target="_blank">官方网站</a><strong> &nbsp; |  &nbsp;</strong>
        <a href="javascript:;" title="/">联系我们</a><strong> &nbsp; |</strong>
        <a href="javascript:;" title="/"> ;人才招聘</a><strong> &nbsp; | &nbsp;</strong>
        <a href="http://localhost/ecstore/" type="url" title="/">免责声明</a><strong> &nbsp; &nbsp;|</strong>
        <a href="javascript:;" title="/"> &nbsp; 网站统计</a>
      </p>
      <p style="text-align: center;margin-bottom:3px;"> 燕之坊商城 shop.yanzhifang.com 版权所有 ;皖ICP备05009983号</p>
      <div style="text-align: center;">本商店logo和图片都已经申请保护，未经授权不得使用</div>
      <div style="text-align: center;"> 有任何购物问题请联系我们在线客服 | 电话：400-1527-315 | 工作时间：周一至周六8:30－17:30</div>
    </div>
</div>
</template>
<script>
import Massage from "../components/Login/message";//引入成功提示框组件
import "../assets/css/common.css"//已转到App.vue共有样式
import {postRegister} from "../assets/js/apis/register"//因为用对象抛出所以用对象接
export default {
		components:{Massage},
		data(){
				return{
				userName:"",
				userUpwd:"",
				userConupwd:"",
				userAgree:true,//同意
				nameHidden:false,
				// scucceedHidden:false,//成功提示框(已修改为组件)
				// count:"",//倒计时(已修改为组件)
				isName:null,
				isUpwd:false,
				isConupwd:false,
				isChecked:false,
				isAgree:false,
				nameStatus:null,
				upwdStatus:null,
				conupwdStatus:null,
				agreeStatus:null,
				securityStatus:'差',//检测密码强
				security:{},
				objs:{}
			}
		},
		methods:{
				// ------用户账号验证-------
				/*手机-->用户名-->邮箱-->长度-->纯数字*/
				checkName(){
					var obj;
					var phoneRegExp = /^1[34578]\d{9}$/
					var unameRegExp = /^\d+$/
					var unameRegExp2 = /[#\$%\^&\*@]/
					var emailRegExp = /^[0-9a-zA-Z_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]{3,})$/ 
					//判断手机号
					if(phoneRegExp.test(this.userName)){
						// this.axios.get(`/user/register?phone=${this.userName}`)
						// this.axios.get(`/user/register`,{//params参数必写 , 如果没有参数传{}也可以
						// 				params: {
						// 						phone:this.userName
						// 				}
						// 			}
						// 	)//为了方便全局统一调用封装的axios，我一般采用（推荐）
						this.nameHidden=true;
						obj={phone:this.userName.trim()};
						postRegister(obj)//axios在assets/js/apis封装了直接调用函数
						.then(result=>{
							if(result.code != 0){
								this.nameStatus="该手机可用注册";
								this.isName=true;
							}else{
								this.nameStatus="手机号已被占用";
								this.isName=false;
							}
						})
					}else if(!unameRegExp.test(this.userName) && (/\w{4,12}/).test(this.userName) && this.userName.search(unameRegExp2)==-1){
						this.nameHidden=true;
							obj={uname:this.userName.trim()};
							postRegister(obj).then(result=>{
								result.code != 0?(this.nameStatus="用户名可以使用",this.isName=true)
														:(this.nameStatus="该用户名已被占用",this.isName=false)
							})
					//判断邮箱
					}else if(emailRegExp.test(this.userName)){
						this.nameHidden=true;
						obj={email:this.userName.trim()};
						postRegister(obj).then(result=>{
							result.code != 0?(this.nameStatus="该邮箱可以用",this.isName=true)
													:(this.nameStatus="该邮箱已被占用",this.isName=false)
						})
					//验证长度和手否为纯数字
					}else{
						 this.nameHidden=true;
						 this.isName=false;
						 (/@/).test(this.userName)?(this.nameStatus="邮箱格式不正确")
						 :!(/^\w{4,}$/).test(this.userName)?(this.nameStatus="登录账号至少4位")
						 :this.nameStatus="登录账号不能为纯数字";
						 return
					};
					//为要插入用户名称动态添加到(this.isName),添加前先清空(后面判断调用函数避免重复)
					if(this.isName==true){
						this.objs={};
						Object.assign(this.objs, obj)
						return true
					}else{
						return false
					}
				},
				//----------密码验证---------
				checkUpwd(){
					console.log("upwd")
					if(this.userUpwd.length < 6){
						this.upwdStatus="输入不正确，最少6个字符";
						this.isUpwd=true;
						return false;
					}else{
						this.upwdStatus="";
						this.isUpwd=false;
						return true;
					}
				},
				// ----------确认密码验证-------
				checkConupwd(){
					if(this.userConupwd != this.userUpwd){
						this.conupwdStatus="密码与确认密码不相符，请重新填写"
						this.isConupwd=true;
						return false
					}else{
						this.conupwdStatus="";
						this.isConupwd=false;
						return true
					};
				},
				  //----------提交时确认各项验证-------
				register(){
					  if(this.userUpwd.length == 0){
							this.upwdStatus="请填写密码，6-20个字符";
							this.isUpwd=true;
						};
						if(!this.userAgree){
							this.isAgree=true;
							this.agreeStatus="请选择同意"
						}else{
							this.isAgree=false;
							this.agreeStatus=""
							};
					  if(this.checkName() && this.checkUpwd() && this.checkConupwd()){//提交
							var userName = this.objs
							userName.upwd=this.userUpwd
							console.log(userName)
							// this.$set(this.objs,'upwd',this.userUpwd)
							Object.assign(this.objs, {upwd:this.userUpwd})
							console.log(this.objs)
							//提交通过的所有验证
							postRegister(this.objs).then(result=>{
									console.log(result)
									var val = '注册成功'//给子组件传入成功提示内容
									this.$refs.child.threeGo(val)//调用massage(成功提示框的方法)
							})
						}else{
							//自动获取登录账号焦点++++++
						}
				},
				// threeGo(){//被调用的跳转函数-------(已搬到组件)
				// 	 const TIME_COUNT = 3;
				// 		if(!this.timer){
				// 			this.count = TIME_COUNT;
				// 			this.scucceedHidden = true;
				// 			this.timer = setInterval(()=>{
				// 			if(this.count > 0 && this.count <= TIME_COUNT){
				// 				this.count--;
				// 			}else{
				// 				this.scucceedHidden = false;
				// 				clearInterval(this.timer);
				// 				this.timer = null;
				// 				//跳转的页面写在此处
				// 				this.$router.push({
				// 					path: '/home'
				// 				});
				// 			}
				// 		 },1000)
				// 		}
			 	//  }
		},		
		watch:{
			//监听密码强度
			userUpwd(){
				var weakRegExp = /^[0-9]{6,16}$|^[a-zA-Z]{6,16}$/; //全是数字或全是字母 6-16个字符
				var goodRegExp = /^[A-Za-z0-9]{6,17}$/; //数字、26个英文字母 6-16个字符
				var goodRegExp2 = /^[0-9]{17,}$|^[a-zA-Z]{17,}$/; //全是数字或全是字母 >17个字符
				var goodRegExp3 = /^[\w#\$%\^&\*@]{6,10}$/;  // 由数字、26个英文字母或者下划线组成的字符串 6-20个字符
				var strongRegExp = /^[\w#\$%\^&\*@]{11,20}$/;  // 由数字、26个英文字母或者下划线组成的字符串 6-20个字符
				var strongRegExp2 = /^[A-Za-z0-9]{18,}$/;  // 数字、26个英文字母 >18个字符
				if(this.userUpwd.length<6){
					this.securityStatus='差';
					this.security={};					
				}else if(this.userUpwd.match(weakRegExp)){
					this.securityStatus='弱';
					this.security={width:'33.3%',backgroundColor:'#ff2626'};
				}else if(this.userUpwd.match(goodRegExp) || this.userUpwd.match(goodRegExp2) || this.userUpwd.match(goodRegExp3)){
					this.securityStatus='中';
					this.security={width:'66.66%',backgroundColor:'#ff9326'};
				}else if(this.userUpwd.match(strongRegExp) || this.userUpwd.match(strongRegExp2)){
					this.securityStatus='强';
					this.security={width:'100%',backgroundColor:'#00d900'};
				}
			},
	 }
}
</script>
<style lang="scss">
*{margin: 0; padding: 0;}
body {
  color: #666;
  font: 12px/1.5 微软雅黑;
  min-width: 1200px;
}
.login{width: 1000px;margin:0 auto;
	padding-top: 25px;
	margin-bottom: 5px;}
/* content */
// 共有

/**  content--left **/
.signup-content{
  width: 630px;
  float: left;
	border: 2px solid #e5e5e5;
}
.signup-content h4{
	color: #515151;padding:10px 24px;
	border-bottom: 1px solid #bbb;
}
/* .signup-content ul{list-style: none;} */
.signup-content label{
	float: left;
	font-size: 14px;
	color: #515151;
	text-align: right;
	line-height: 38px;
  width: 145px;
  height: 39px;
	/* margin-bottom: 0; */
}
.signup-content ul em{color: #ee2b09;font-size: 15px;}
.signup-content li {
	height: 51px;
	margin-bottom: 10px;
	}
.signup-content .btn{
	width: 260px;
	border-radius: 3px;
}
.user_reg li:nth-child(2){
	position: relative;
	span em{float: right;}
	}
.user_reg li:nth-child(2) .d-inline-block{position: absolute;
top: 2px;
left: 426px;}
.user_reg .progress{
	width: 110px;height: 8px;border-radius: 0px;margin-top: 2px;
	span{line-height: 8px;}
	}
.user_reg .reg{
	position: relative;
	top: 25px;
	left: -266px;
}
/* content--right */
.signup-quit{
  margin-left: 655px;
  color: #565656;
}
// 提示的三种状态
// .hidden{visibility: hidden;}
.icon-tanhao{color: brown;padding-right: 4px;}
.icon-gou{color: green;padding-right: 4px;}
//跳转提示框
.router_push{
	width: 270px;height: 100px;
	background-color: white;
	
	border:1px solid rgba(0, 1, 7, 0.301);
	box-shadow:2px 2px 5px rgb(1, 13, 26);
	position: absolute;
	top: 270px;left: 40%;
	z-index: 6;
	>p{
		margin: 15px 0 0 40px;
		.iconfont{font-size: 19px;}
	}
	>span{
		margin-left: 60px;
	}
}
</style>