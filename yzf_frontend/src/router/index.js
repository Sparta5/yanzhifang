import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Register from '../views/Register'
import Login from '../views/Login'
import carousel from '../components/carousel/Carousel'

Vue.use(VueRouter)

const routes = [
  {
    path:'/carousel',
    component:carousel
  },
  {
    path: '/',
    name: 'index',
    component: Index
  },
  {
    path:'/register',
    component: Register
  },
  {
    path:'/login',
    component:Login
  },
  {
    path: '/details/:did',
    props:true,
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "ditails" */ '../views/Details')
  }
]

const router = new VueRouter({
  mode: 'history',//不带#号
  // mode: 'hash',//带有#号
  base: process.env.BASE_URL,// 从环境进程中根据运行环境获取的api的base_url
	// timeout: 5000  // 请求超时时间
  routes
})

export default router
