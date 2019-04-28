<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>今日热点新闻${title }</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="../resources/home/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/home/css/nprogress.css">
<link rel="stylesheet" type="text/css" href="../resources/home/css/style.css">
<link rel="stylesheet" type="text/css" href="../resources/home/css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="../resources/home/images/icon.png">
<link rel="shortcut icon" href="../resources/home/images/favicon2.ico">
<script src="../resources/home/js/jquery-2.1.4.min.js"></script>
<script src="../resources/home/js/nprogress.js"></script>
<script src="../resources/home/js/jquery.lazyload.min.js"></script>

<!-- <script>
// function addFavorite(url, title) {
// 	try {
// 		window.external.addFavorite(url, title);
// 	} catch (e){
// 		try {
// 			window.sidebar.addPanel(title, url, '');
//         	} catch (e) {
// 			alert("热点账号登录", 'notice');
// 		}
// 	}
// } 

</script>-->
</head>
<body class="user-select">
<header class="header">
<nav class="navbar navbar-default" id="navbar">
<div class="container">
  <div class="header-topbar hidden-xs link-border">
	<ul class="site-nav topmenu">
	 
		<li><a href="http://localhost:8080/News/system/login" title="登录后可以保存您的浏览喜好、评论、收藏，并可同步发布图文信息 " >
			<i class="fa fa-rss">
			</i> 登录
		</a></li>
	</ul></div>
  <div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar" aria-expanded="false"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
	<h1 class="logo hvr-bounce-in"><a href="/News/index/index" title="今日热点新闻"><img src="../resources/home/images/timg.jpg" alt="今日热点新闻"></a></h1>
  </div>
  <div class="collapse navbar-collapse" id="header-navbar">
	<form class="navbar-form visible-xs" action="../news/search_list" method="get">
	  <div class="input-group">
		<input type="text" name="keyword" class="form-control" placeholder="请输入关键字" maxlength="20" autocomplete="off" value="${keyword }">
		<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
	</form>
	<ul class="nav navbar-nav navbar-right">
	  <li><a data-cont="今日热点新闻" title="今日热点新闻" href="/News/index/index">首页</a></li>
	  <c:forEach items="${newsCategoryList }" var="newsCategory">
	  <li><a data-cont="${newsCategory.name }" title="${newsCategory.name }" href="../news/category_list?cid=${newsCategory.id }">${newsCategory.name }</a></li>
	  </c:forEach>
	</ul>
  </div>
</div>
</nav>
</header>