<template>
  <div class="passport">
  <div>
    <div class="login">
      <img src="img/logo.png" alt="">
    </div>
  </div>
  <!-- content -->
  <div id="container">
    <div class="inner-wrap">
      <!-- content--left -->
      <div class="signup-content">
        <div><h4>用户注册</h4></div>
        <ul class="user_reg">
          <li><label class="float-left">
					<em>* </em>登录账号：&nbsp;</label>
					<span>
						<input type="text" class="x-input" placeholder="用户名/邮箱/手机号,最少4个字符">
						<span class="reg">*</span>
					</span>
					</li>
					<li><label>
					<em>* </em>密码：&nbsp;</label>
					<span>
						<input type="text" class="x-input" placeholder="6-20个字符">
						<span class="reg">*</span>
						<span class="d-inline-block">
							<span>密码强度：</span><em class="font_small">强</em>
							<span class="progress">1</span>
						</span>
					</span>
					</li>
					<li><label>
					<em>* </em>确认密码：&nbsp;</label>
					<span>
						<input type="text" class="x-input" placeholder="再次填写密码">
						<span class="reg">*</span>
					</span>
					</li>
					<li><label>
					<em>* </em>验证码：&nbsp;</label>
					<span>
						<input type="text" class="x-input" placeholder="填写验证码">
						<span class="reg">*</span>
					</span>
					</li>
					<li>
						<label>&nbsp;</label>
					<p class="mt-3">
						<input type="checkbox" name="" id="" value="" />
						&nbsp;我已阅读并同意 
						<a href="#" class="text-danger"> 会员注册协议</a> 和 
						<a href="#" class="text-danger">隐私保护政策</a>
					</p>
					</li>
					<li>
						<label>&nbsp;</label>
						<button type="button"><span class="btn">注册</span></button>
					</li>
        </ul>
      </div>
      <!-- content--right -->
      <div class="signup-quit font_small li">
        <span>已有会员账号直接登录</span>
        <a href="#">
        <span class="btn ml-2">转到登录页</span>
      </a>
      </div>
    </div>
	</div>
</div>
</template>
<script>
  import "../assets/css/common.css"
export default {
  
}
</script>
<style>
*{margin: 0; padding: 0;}
body {
  color: #666;
  font: 12px/1.5 微软雅黑;
  min-width: 1200px;
}
.login{width: 1000px;margin:0 auto;
	padding-top: 25px;
	margin-bottom: 5px;}
/* center */
.passport .inner-wrap{
  padding: 45px 10px 0 40px;
  background-color: #fff;
  margin: 0 auto 20px;
  width: 960px;
  min-height: 470px;  /*  ** */
  border-radius: 10px;
  box-sizing: content-box;
}
/* center--left */
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
.user_reg .reg{
	position: relative;
	top: 30px;
	left: -270px;
}
/* center--right */
.signup-quit{
  margin-left: 655px;
  color: #565656;
}
</style>