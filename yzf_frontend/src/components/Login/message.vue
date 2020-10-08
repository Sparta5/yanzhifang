<template>
 <div id="isOk" v-show="isHidden">
  <div class="router_push" v-if="scucceed=='ok'"><!-- 注册成功后,该部分将会被替换成跳转提示 -->
			<p><span class="iconfont icon-gou"></span>{{state}}</p>
			<span>系统即将跳转到注册页面-{{count}}</span>
		</div>
    <div class="router_push error" v-else><!-- 注册成功后,该部分将会被替换成跳转提示 -->
			<p><span class="iconfont icon-tanhao"></span><em>账号或密码错误</em></p>
		</div>
 </div>
</template>
<script>
export default {
  props:{
    // scucceed:"ok",//接受成功或失败参数
  },
  data(){
    return{
      isHidden:false,//提示框
      scucceed:'ok',
      count:"",
      state:"",
    }
  },
  methods:{
     threeGo(vals){//被调用的跳转函数-------
        const TIME_COUNT = 3;
        if(!this.timer){
          this.count = TIME_COUNT;
          this.isHidden = true;
          this.scucceed = 'ok';
          this.state = vals;
          // console.log(this.timer)
          this.timer = setInterval(()=>{
            if(this.count > 0 && this.count <= TIME_COUNT){
              this.count--;
            }else{
              console.log(this.timer)
              // this.isHidden = false;
              clearInterval(this.timer);
              this.timer = null;
              //跳转的页面写在此处
              this.$router.push({
                path: '/'
              });
            }
          },1000)
        }
      },
      errMassge(){//被调用的跳转函数-------
        const TIME_COUNT = 3;
        if(!this.timer){
          this.count = TIME_COUNT;
          this.isHidden = true;
          this.scucceed = 'err';
          this.timer = setInterval(()=>{
            if(this.count > 0 && this.count <= TIME_COUNT){
              this.count--;
            }else{
              this.isHidden = false;
              clearInterval(this.timer);
              this.timer = null;
              //不跳转
            }
          },1000)
        }
      }
  }
}
</script>
<style lang="scss">
//跳转提示框
.router_push{
	width: 270px;height: 100px;
	background-color: white;
	border:1px solid rgba(0, 1, 7, 0.301);
	box-shadow:2px 2px 5px rgb(1, 13, 26);
	position: absolute;
	top: 233px;left: 36%;
	z-index: 6;
	>p{
		margin: 15px 0 0 40px;
		.iconfont{font-size: 21px;}
	}
	>span{
		margin-left: 60px;
	}
}
#isOk .error{
  .iconfont{font-size: 35px;}
  em{
    display: block;  
    margin: -38px 48px;
  }
}
</style>