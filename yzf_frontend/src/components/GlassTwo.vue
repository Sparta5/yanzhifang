<template>
	<div class="glass" @mouseleave="isglass = false">
		<!-- <div class="glass-wrap" @click="test"> -->
		<div class="glass-wrap" @mousemove="move">
			<div class="glass-img"  @mouseenter="init" ref="glass">
				<img :src="img">
				<div class="msk" v-show="isglass" ref="msk" :style="{top:maskt + 'px',left:maskl + 'px'}"></div>
				<!-- <div class="msk" v-show="isglass" ref="msk" :style="{top:maskt + 'px',left:maskl + 'px'}" @mouseleave="isglass = false"></div> -->
			</div>
			<div class="bigimg-box" v-show="isglass" ref="bigbox">
				<img v-if="imgb" :src="imgb" ref="bigimg" :style="{top:bigt + 'px',left:bigl + 'px',width:bigW + 'px',height:bigH + 'px','max-width':bigW + 'px','max-height':bigH + 'px'}">
				<img v-else :src="img" ref="bigimg" :style="{top:bigt + 'px',left:bigl + 'px',width:bigW + 'px',height:bigH + 'px','max-width':bigW + 'px','max-height':bigH + 'px'}">
			</div>
		</div>
	</div>

</template>

<script>
	export default {
		name:"Glass",
		props:{
			img:{
				type:String,
				require: true
			},
			imgb:{
				type:String
			}
		},
		data(){
			return {
				isglass:false,
				maskt:0,
				maskl:0,
				bigt:0,
				bigl:0,
				left:0,
				top:0,
				bigH:0,
				bigW:0
			}
		},
		methods:{
			init(e){
				// console.log(e)
				this.isglass = true;
				this.$nextTick(()=>{
					// 获取原图尺寸，
					this.glassH = this.$refs.glass.offsetHeight;
					this.glassW = this.$refs.glass.offsetWidth;
					// 获取蒙层的尺寸
					this.mskH = this.$refs.msk.offsetHeight;
					this.mskW = this.$refs.msk.offsetWidth;
					// 获取装大图的框，方便之后将显示限制在框内
					this.bigboxH = this.$refs.bigbox.offsetHeight;
					this.bigboxW = this.$refs.bigbox.offsetWidth;
					// 初始化元素的位置
					this.timesH = this.bigboxH / this.mskH;
					this.timesW = this.bigboxW / this.mskW;
					// console.log(this.timesH)
					// console.log(this.timesW)
					// 大图的尺寸通过比率来设置
					this.bigH = this.glassH * this.timesH;
					this.bigW = this.glassW * this.timesW;
					this.left = e.x - e.offsetX;
					this.top = e.y - e.offsetY;
					// this.movemsk(e)
					// this.add
				})
			},
			move(e){
				this.movemsk(e);
			},
			movemsk(e){
				// console.log(e)
				let x = e.x - this.left;
				let y = e.y - this.top;
				// 将限制蒙层区域限制在图片内
				this.maskl = x > this.mskH / 2 ? x > this.glassW - this.mskW /2 ? this.glassW - this.mskW : x - this.mskW / 2 : 0
				this.maskt = y > this.mskH / 2 ? y > this.glassH - this.mskH /2 ? this.glassH - this.mskH : y - this.mskH / 2 : 0
				// let l = this.maskl * this.bigW / this.glassW;
				// let t = this.maskt * this.bigH / this.glassH;
				let l = this.maskl * this.timesW;
				let t = this.maskt * this.timesH;
				// 将放大图片限制在显示框里
				this.bigl = 0 - (l > this.bigW - this.bigboxW ? this.bigW - this.bigboxW : l < 0 ? 0 : l)
				this.bigt = 0 - (t > this.bigH - this.bigboxH ? this.bigH - this.bigboxH : t < 0 ? 0 : t)
				// console.log(this.maskl,this.maskt)
			}
		}

	}

</script>

<style>
	.glass{
		position: relative;
		width: 420px;
		height: 420px;
	}
	.glass-wrap{
		width: 420px;
		height: 420px;
		position: absolute;
	}
	.glass-img img{
		width: 100%;
		height: 100%;
	}
	.glass-img{
		position: relative;
	}
	.glass-img .msk{
		width: 220px;
		height: 220px;
		background: #bdbdbd;
		opacity: .3;
		position: absolute;
	}
	.bigimg-box {
		width: 420px;
		height: 420px;
		position: absolute;
		top: 0;
		right: -400px;
		/* left: 0; */
		overflow: hidden;
		z-index: 999;
	}
	.bigimg-box img{
		display: inline-block;
		position: absolute;
	}

</style>