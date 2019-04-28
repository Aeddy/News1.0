<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside class="sidebar">
<div class="widget widget_search">
	<form class="navbar-form" action="../news/search_list" method="get">
	  <div class="input-group">
		<input type="text" name="keyword" class="form-control" size="35" placeholder="请输入要搜索的内容" maxlength="15" autocomplete="off" value="${keyword }">
		<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
	</form>
  </div>
<div class="fixed">
  <div class="widget widget-tabs">
	<ul class="nav nav-tabs" role="tablist">
<!-- 	  <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >统计信息</a></li> -->
	  
	    <li role="presentation"  class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >更多登录方式</a></li>
	      <li role="presentation" ><a href="#contact1" aria-controls="contact1" role="tab" data-toggle="tab" >个人资料</a></li>
	      <li role="presentation"><a href="#contact2" aria-controls="contact2" role="tab" data-toggle="tab" >联系我们</a></li>
	      
	       <li role="presentation" class="active2"><a href="http://localhost:8080/News/index/index" aria-controls="notice" role="tab" data-toggle="tab" >登出</a></li>
	      
	</ul>
	
	   <div class="tab-content">
		<div role="tabpanel" class="tab-pane contact active" id="notice">
		  <h3>微信登录:
		  <a href="#" target="_blank" data-toggle="tooltip" rel="nofollow" data-placement="bottom" title=""  data-original-title="微信同步登录，快人一步"><img src="../resources/admin/login/images/meitu/wechat.png" alt="微信地球" > </a>
		  </h3>
		  <h3>QQ登录:
			  <a href="#" target="_blank" rel="nofollow" data-toggle="tooltip" data-placement="bottom" title=""  data-original-title="qq同步登录，方便快捷"><img src="../resources/admin/login/images/meitu/qq.png" alt="qq企鹅" >  </a>
		  </h3>
	  </div>
	 
	  <div role="tabpanel" class="tab-pane contact active" id="contact1">
		<h2>新闻累计转载量:
			  <span id="total-article-span">520</span>则
		  </h2>
		  <h2>新闻累计评论量:
		  <span id="sitetime">52</span>次</h2>
	  </div>
	  
	  <div role="tabpanel" class="tab-pane contact" id="contact2">
		  
		  <h2>开发者QQ:
			  <a href="#" target="_blank" rel="nofollow" data-toggle="tooltip" data-placement="bottom" title=""  data-original-title="QQ:3083764030">3083764030</a>
		  </h2>
		  <h2>Email:
		  <a href="#" target="_blank" data-toggle="tooltip" rel="nofollow" data-placement="bottom" title=""  data-original-title="#">3083764030@qq.com</a></h2>
	  </div>
	</div>
  </div>
   <div class="widget widget_sentence">    
	<a href="http://programmer.ischoolbar.com/" target="_blank" rel="nofollow" title="华为手机" >
	<img style="width: 100%" src="../resources/home/images/ad6.jpg" alt="华为手机" ></a>    
 </div> 
 
<div class="widget widget_hot">
	  <h3>24小时热点新闻</h3>
	  <ul id="last-comment-list">            
			
				
			
			

	  </ul>
 </div>
 <!-- <div class="widget widget_sentence">    
	<a href="http://programmer.ischoolbar.com" target="_blank" rel="nofollow" title="恒大地产" >
	<img style="width: 100%" src="../resources/home/images/ad7.jpg" alt="恒大地产" ></a>    
 </div> -->
  
 <div class="widget widget_sentence">    
	<a href="http://programmer.ischoolbar.com" target="_blank" rel="nofollow" title="瓜子二手车" >
	<img style="width: 100%" src="../resources/home/images/ad5.jpg" alt="瓜子二手车" ></a>    
 </div>
 <div class="widget widget_sentence">    
	<a href="http://programmer.ischoolbar.com" target="_blank" rel="nofollow" title="闲鱼" >
	<img style="width: 100%" src="../resources/home/images/ad8.jpg" alt="闲鱼" ></a>    
 </div>
<div class="widget widget_sentence">
  <h3>友情链接</h3>
  <div class="widget-sentence-link">
	<a href="http://bj.jumei.com" title="聚美优品" target="_blank" >聚美优品</a>&nbsp;&nbsp;&nbsp;
	<a href="http://www.zhuanzhuan.com" title="转转二手" target="_blank" >转转二手</a>&nbsp;&nbsp;&nbsp;
	<a href="https://bh.58.com" title="58同城" target="_blank" >58同城</a>&nbsp;&nbsp;&nbsp;
	<a href="https://www.jd.com" title="京东网" target="_blank" >京东网</a>&nbsp;&nbsp;&nbsp;
	<a href="https://www.taobao.com" title="淘宝网" target="_blank" >淘宝网</a>&nbsp;&nbsp;&nbsp;
	<a href="https://www.guazi.com" title="瓜子二手车" target="_blank" >瓜子二手车</a>&nbsp;&nbsp;&nbsp;
	<a href="http://brand.wljhealth.com" title="王老吉" target="_blank" >王老吉</a>&nbsp;&nbsp;&nbsp;
	<a href="http://www.evergrande.com" title="恒大地产" target="_blank" >恒大地产</a>&nbsp;&nbsp;&nbsp;
	<a href="http://www.tcl.com" title="TCL官网" target="_blank" >TCL官网</a>&nbsp;&nbsp;&nbsp;
  </div>
</div>
</aside>
<script>
function add0(m){return m<10?'0'+m:m }
function format(shijianchuo){
//shijianchuo是整数，否则要parseInt转换
	var time = new Date(shijianchuo);
	var y = time.getFullYear();
	var m = time.getMonth()+1;
	var d = time.getDate();
	var h = time.getHours();
	var mm = time.getMinutes();
	var s = time.getSeconds();
	return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
}
$(document).ready(function(){
	$.ajax({
		url:'../news/last_comment_list',
		type:'post',
		dataType:'json',
		success:function(data){
			if(data.type == 'success'){
				var newsList = data.newsList;
				var html = '';
				for(var i=0;i<newsList.length;i++){
					var li = '<li><a title="'+newsList[i].title+'" href="../news/detail?id='+newsList[i].id+'" ><span class="thumbnail">';
					li += '<img class="thumb" data-original="../resources/home/images/201610181739277776.jpg" src="'+newsList[i].photo+'" alt="'+newsList[i].id+'"  style="display: block;">';
					li += '</span><span class="text">'+newsList[i].title+'</span><span class="muted"><i class="glyphicon glyphicon-time"></i>';
					li += format(newsList[i].createTime) + '</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>'+newsList[i].viewNumber+'</span></a></li>';
					html += li;
				}
				$("#last-comment-list").append(html);
			}
		}
	});
	$.ajax({
		url:'../index/get_site_info',
		type:'post',
		dataType:'json',
		success:function(data){
			if(data.type == 'success'){
				$("#total-article-span").text(data.totalArticle);
				$("#sitetime").text(data.siteDays);
			}
		}
	});
});
</script>