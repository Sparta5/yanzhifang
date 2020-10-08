<template>
  <div id="team_list">
    <div class="team_com">
      <h6>合作网站账号登录</h6>
      <ul>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
      </ul>
      <a class="arrows"></a>
    </div>
  </div>
</template>
<style lang="scss">
 #team_list{
   position: relative;
    border-top:1px dotted #999;
    width: 316px;height: auto;
    overflow: hidden;
    background: transparent;
    h6{
        margin:8px 16px 3px;
        height: 20px;line-height: 20px;
        font-weight: bold;
        color: #555;
        font-size: 14px;
      }
    ul{
      margin-left: 20px;
      display: flex;
      flex-wrap: wrap;
      >li{
        margin: 0px;
        padding: 0px;
        list-style: none;
        height: 42px;
        a{
            display: block;
            margin-left: 5px;;
            background: url(../../assets/imges/signup/denglu_icon_all.png) no-repeat scroll 0 0 transparent;
            width: 91px;height: 35px;
         }
         &:first-child>a{ background-position: 0 -40px;}
         &:nth-child(2)>a{ background-position: 0 -600px;}
         &:nth-child(3)>a{ background-position: 0 -560px;}
         &:nth-child(4)>a{ background-position: 0 -480px;}
         &:nth-child(5)>a{ background-position: 0 -400px;}
         &:last-child>a{ background-position: 0 -280px;}
      }
    }
    .arrows{
      display: block;
      width: 0;
      height: 0;
      border-top: 10px solid transparent;
      border-right: 10px solid #999;
      border-bottom: 10px solid transparent;
      position: absolute;
      z-index: 6;
      top: 60px;left: 11px;
    }
  }
</style>