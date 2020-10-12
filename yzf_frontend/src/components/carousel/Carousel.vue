<template>
  <div class="carouse">
    <!--vue-awesome-swiper 文档copy-->
    <swiper ref="mySwiper" :options="swiperOptions" class="swiper">
      <swiper-slide v-for="(i,k) in imgList" :key="k">
        <img :src="i.img">
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
    </swiper>
  </div>
</template>

<script>
// 官方文档 参数及各项api配置的使用 https://www.swiper.com.cn/api/index.html
// 安装 npm i vue-awesome-swiper -S \ npm i swiper -S
import 'swiper/css/swiper.css' // 组件引入swiper 样式
import { Swiper, SwiperSlide, directive } from 'vue-awesome-swiper'  // 组件样式
import {getIndex} from "../../assets/js/apis/index";
import axios from 'axios'
export default {
  data(){
     return{
      imgList:[],
      // 轮播图选项
      swiperOptions: {
         pagination: {
          el: '.swiper-pagination'
         },
         autoplay:{
          delay:2000,  // 1秒时长切换
         //   stopOnLastSlide: false,
          disableOnInteraction: false,
         },
         loop: true,
       }
       
     }  
   },
  methods:{
    getBannerList(){
        var data={url:'/carousel'}
        getIndex(data).then(result=>{
        this.imgList=result
        console.log(this.imgList)
     })
      //this.imgList=[{img:'/img/home/banner1.jpg'},{img:'/img/home/banner2.jpg'},{img:'/img/home/banner3.jpg'}]
    }
  },
  mounted(){
    this.getBannerList()
    // console.log(this.value)
  }
}
</script>

<style scoped>
  .carouse{
    width: 100%;
    /* border:1px solid red; */
    /* height: 100px; */
    text-align: center;
  }
  /*样式穿透*/
  .swiper >>> .swiper-pagination-bullet{
    background-color:rgb(90, 28, 141);
    width: 15px;height: 15px;
  }
</style>
