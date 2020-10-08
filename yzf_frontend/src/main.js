import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Router from 'vue-router'

// import axios from "axios"
// axios.defaults.baseURL="http://localhost:3000"
// 配置请求头--全局（推荐）
// axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
// 注册为全局
// Vue.prototype.axios=axios

// 使用mockjs
// import './mock.js'

// 引入 VueAwesomeswiper :轮播图
import VueAwesomeswiper from 'vue-awesome-swiper'
// import 'swiper/css/swiper.css' // 此处未进行全组组件样式加载
Vue.use(VueAwesomeswiper)

//注册插件
Vue.use(Router)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
