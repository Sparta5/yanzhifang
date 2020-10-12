<template>
  <div id="app">
    <div id="nav">
      <!-- <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> -->
    </div>
    <router-view/>
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
//共有样式引入
import "./assets/css/common.css"
export default {
  
}
</script>

<style>
 #app {
  font: 12px/1.5 微软雅黑;
}

/*#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
} */
</style>
