<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="zh_CN">
<head>
<base href="/craftsman/">
<title>麦浩斯手艺人</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="我家木工 商家入驻 家装商城 找木工、水电工" />

<link rel='stylesheet' type='text/css' href="css/common/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/common/font-awesome.min.css" />

<script type="text/javascript" src="js/common/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="js/common/bootstrap.min.js"></script>

<script type="text/javascript" src="http://c.ibangkf.com/i/c-myhouse-2015.js"></script>

<link rel="stylesheet" type="text/css" href="css/common/common.css" />

<!--导航-->
	<div class="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-top fixedtop-nav"
			role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">麦浩斯手艺人</a>
			</div>
			<div class="collapse navbar-collapse pull-right"
				id="example-navbar-collapse">
				<ul class="nav navbar-nav">
					<li id="login_li"><a href="login.html">登录</a></li>
					
					<li class="dropdown " id="userimg_li">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">欢迎您：<s:property value="#session.loginuser.usertbName"/></a>
						<ul class="dropdown-menu">
							<li><a href="page/usercenter.jsp">个人中心</a></li>
							<li class="divider"></li>
							<li><a href="loginout_user.action">退出</a></li>

						</ul></li>
				
					<li><a href="page/index.jsp" ><i class="fa fa-home fa-lg"></i>
							首页</a></li>
					<li><a href="page/laborlist.jsp" target="view_window"><i class="fa fa-users"></i>
							工匠之家</a></li>
					<li><a href="page/usercenter.jsp" ><i
							class="fa fa-file-text" target="view_window"></i> 我的订单</font></a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><font><i class="fa fa-cog"></i>
								更多</font><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="page/activity.jsp" target="view_window">麦浩斯活动</a></li>
							<li><a href="page/strategylist.jsp" target="view_window">家装攻略</a></li>
							<li><a href="page/team.jsp" target="view_window">专业团队</a></li>

							<li><a href="login.html" target="view_window">联系我们</a></li>

						</ul></li>
						<li><a href="page/fitment-mall/products.jsp" target="view_window"><i
							class="fa fa-shopping-cart"></i> 麦浩斯商城</font></a></li>
				</ul>
			</div>
		</nav>
	</div>
	<!--导航结束-->
	
	<div id="myScrollspy">
		<a id="ibangkf" href="http://www.ibangkf.com">客服系统</a>
		<ul id="scrollfind-return">
			<li><a  class="btn btn-default" href="#index-top"><i class="fa fa-angle-double-up fa-lg"></i> 返回</a></li>
		</ul>
	</div>
