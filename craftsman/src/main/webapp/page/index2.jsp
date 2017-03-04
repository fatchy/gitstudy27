<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html lang="zh_CN">
<head>
<base href="/craftsman/">
<title>麦浩斯手艺人</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="我家木工 商家入驻 家装商城 找木工、水电工" />


<link rel="stylesheet" type="text/css"
	href="css/common/font-awesome.min.css" />
<script type="text/javascript" src="js/common/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="js/common/bootstrap.min.js"></script>

<link rel='stylesheet' type='text/css'
	href="css/common/bootstrap.min.css" />
<link href="css/common/myhouse-carousel.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" type="text/css" href="css/common/common.css" />
<link rel="stylesheet" type="text/css" href="css/index/index.css" />

</head>
<body data-spy="scroll" data-target="#myScrollspy">
	<div id="myScrollspy">
		<ul id="scrollfind-return">
			<li><a class="btn btn-info" href="#"><i class="fa fa-search"></i>
					查找</a></li>
			<li><a class="btn btn-success" href="#"><i
					class="fa fa-user"></i> 客服 </a></li>
			<li><a class="btn btn-default" href="#"><i
					class="fa fa-angle-double-up fa-lg"></i> 返回</a></li>
		</ul>
	</div>


	<div class="bodyDiv">
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
						<li><a href="page/index.jsp"><i class="fa fa-home fa-lg"></i>
								首页</a></li>
						<li><a href="page/laborlist.jsp"><i class="fa fa-users"></i>
								工友主页</a></li>
						<li><a href="page/fitment-mall/products.jsp"><i
								class="fa fa-shopping-cart"></i> 麦浩斯商城</font></a></li>
						<li><a href="page/usercenter.jsp"><i
								class="fa fa-file-text"></i> 我的订单</font></a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><font><i class="fa fa-cog"></i>
									更多</font><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="page/activity.jsp">麦浩斯活动</a></li>
								<li><a href="page/strategylist.jsp">家装攻略</a></li>
								<li><a href="page/team.jsp">专业团队</a></li>

								<li><a href="login.html">联系我们</a></li>


							</ul></li>
						<li id="login_li"><a href="login.html">登录</a></li>
						<li class="dropdown " id="userimg_li"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								alt="用户头像" class="img-circle" src="images/users/user.jpg"
								width="30%" height="20%"></a>
							<ul class="dropdown-menu">
								<li><a href="page/usercenter.jsp">个人中心</a></li>
								<li class="divider"></li>
								<li><a href="loginout_user.action">退出</a></li>

							</ul></li>
					</ul>
				</div>
			</nav>
		</div>
		<!--导航结束-->

		<!--logo + 搜索框-->
		<div class="container-fluid nav-bottom-height">
			<div class="row logo-search">
				<div class="col-xs-2 col-md-2">
					<a href="index.html"><img src="images/common/logo1_meitu_1.jpg"
						alt="logo" /></a>

				</div>

				<div class="col-xs-8 col-md-8 text-center">
					<form action="##" class="form-search form-inline " rol="search">
						<div class="form-group">
							<div class="input-prepend input-append">
								<div class="btn-group">
									<a class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" href="#">筛选条件 <span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li><a href="#">工友类型</a></li>
										<li><a href="#">市区范围</a></li>
									</ul>
								</div>
								<input type="text" class="form-control index-search-button"
									placeholder="按地区 按类型 轻松找工友" size="60" />
								<button type="submit" class="btn btn-default">
									<i class="fa fa-search"></i>
								</button>
								</br>
							</div>

							<label class="pull-left">热门搜索： 木工 水电工 油漆工</label>
						</div>
					</form>
				</div>
				<div class="col-xs-2 col-md-2 ">
					<a href="index.jsp" class="pull-right"><img
						src="images/common/weixin.png" alt="weixin" /></a>

				</div>
			</div>
		</div>
		<!--logo + 搜索框 结束-->

		<!--轮播图-->
		<div class="wrap">
			<div class="banner-show" id="js_ban_content">
				<div class="cell bns-01">
					<div class="con"></div>
				</div>
				<div class="cell bns-02" style="display: none;">
					<div class="con">
						<a href="#" target="_blank" class="banner-link"> <i>麦浩斯</i></a>
					</div>
				</div>
				<div class="cell bns-03" style="display: none;">
					<div class="con">
						<a href="#" target="_blank" class="banner-link"> <i>手艺人</i></a>
					</div>
				</div>
			</div>
			<script type="text/javascript">
	$(function(){
	var defaultInd = 0;
	var list = $('#js_ban_content').children();
	var count = 0;
	var change = function(newInd, callback){
		if(count) return;
		count = 2;
		$(list[defaultInd]).fadeOut(400, function(){
			count--;
			if(count <= 0){
				if(start.timer) window.clearTimeout(start.timer);
				callback && callback();
			}
		});
		$(list[newInd]).fadeIn(400, function(){
			defaultInd = newInd;
			count--;
			if(count <= 0){
				if(start.timer) window.clearTimeout(start.timer);
				callback && callback();
			}
		});
		}
	
	var next = function(callback){
		var newInd = defaultInd + 1;
		if(newInd >= list.length){
			newInd = 0;
		}
		change(newInd, callback);
	}
	
	var start = function(){
		if(start.timer) window.clearTimeout(start.timer);
		start.timer = window.setTimeout(function(){
			next(function(){
				start();
			});
		}, 5000);
	}
	
	start();
	
});
</script>
			<!-- 代码 结束 -->

			<!--浮动的表单-->
			<div class="container-carousel">
				<form class="text-center" id="forder">
					<fieldset>
						<select class="form-input" id="workertype" name="workerType.workertypetbId">
							<option value="volvo">请选择您需要的工人</option>
							<!-- <option>木工</option>
							<option>水电工</option>
							<option>装修工</option> -->
						</select> </br> <select class="form-input-select" name="orderItem1.orderitemtbName">
							<option value="volvo">上海市区</option>
							<option value="闵行区">闵行区</option>
							<option value="其他">其他</option>
						</select> <select class="form-input-select" name="orderItem2.orderitemtbName">
							<option value="volvo">街道</option>
							<option value="江川路街道">江川路街道</option>
							<option value="古美街道">古美街道</option>
							<option value="龙柏街道">龙柏街道</option>
							<option value="虹桥镇">虹桥镇</option>
							<option value="华漕镇">华漕镇</option>
							<option value="七宝镇">七宝镇</option>
							<option value="莘庄镇">莘庄镇</option>
							<option value="颛桥镇">颛桥镇</option>
							<option value="浦江镇">浦江镇</option>
							<option value="梅陇镇">梅陇镇</option>
							<option value="马桥镇">马桥镇</option>
							<option value="吴泾镇">吴泾镇</option>
							<option value="其他">其他</option>
						</select> </br> <input type="text" class="form-input" placeholder="请输入详细地址" name="orderItem3.orderitemtbName"/>
						<input type="text" class="form-input" placeholder="请输入您的姓名" name="orderItem4.orderitemtbName"/> <input
							type="text" class="form-input" placeholder="请输入联系方式" name="orderItem5.orderitemtbName"/>
						<button class="btn btn-large btn-info form-input" type="button" onclick="forder()">提交</button>
						<p>&nbsp;</p>
						<div class="text-center ">
							<label span6>快捷下单，手艺人即刻上门</label></br> <label span6>保证信息填写正确</label>
						</div>

					</fieldset>
				</form>
			</div>
			<!--浮动的表单  end-->

		</div>
		<!--轮播图结束-->



		<!--六大功能模块-->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="col-xs-6 col-md-2">
					<a href="page/laborlist.jsp"><img class="img-circle" alt="140x140"
						src="images/index/service_1_meitu_4.jpg" /></a>
				</div>
				<div class="col-xs-6 col-md-2">
					<a href="page/laborlist.jsp"><img class="img-circle" alt="140x140"
						src="images/index/service_3_meitu_2.jpg" /></a>
				</div>
				<div class="col-xs-6 col-md-2">
					<a href="page/team.jsp"><img class="img-circle" alt="140x140"
						src="images/index/service_4_meitu_7.jpg" /></a>
				</div>
				<div class="col-xs-6 col-md-2">
					<a href="page/fitment-mall/products.jsp"><img class="img-circle"
						alt="140x140" src="images/index/service_2_meitu_3.jpg" /></a>
				</div>
				<div class="col-xs-6 col-md-2">
					<a href="page/team.jsp"><img class="img-circle" alt="140x140"
						src="images/index/service_3_meitu_6.jpg" /></a>
				</div>
				<div class="col-xs-6 col-md-2">
					<a href="page/strategylist.jsp"><img class="img-circle"
						alt="140x140" src="images/index/service_4_meitu_5.jpg" /></a>
				</div>
			</div>
		</div>
		<!--六大功能模块 结束-->

		<!--活动-->
		<div class="container-fluid">
			<div class="row-fluid logo-search">
				<h3 class="text-center">我家--最新活动</h3>

				<ul class="thumbnails">
					<div class="row-fluid">
						<li class="col-xs-12 col-md-4">
							<div class="thumbnail">
								<a href="activity.jsp"><img alt="300x200"
									src="images/index/activity_3.jpg" /></a>
								<div class="caption">
									<h3>
										看这里&nbsp;&nbsp;&nbsp;&nbsp;<span>降价到底</span>
									</h3>

								</div>
							</div>
						</li>
						<li class="col-xs-12 col-md-4">
							<div class="thumbnail">
								<a href="activity.jsp"><img alt="300x200"
									src="images/index/activity_2.jpg" /></a>
								<div class="caption">
									<h3 class="text-center">
										DIY自己的家 &nbsp;&nbsp;&nbsp;&nbsp;<span>做你所想</span>
									</h3>

								</div>
							</div>
						</li>
						<li class="col-xs-12 col-md-4">
							<div class="thumbnail">
								<a href="activity.jsp"><img alt="300x200"
									src="images/index/activity_1.jpg" /></a>

								<div class="caption">
									<h3>
										放肆装修&nbsp;&nbsp;&nbsp;&nbsp;<span>减减减</span>
									</h3>

								</div>
							</div>
					</div>
					</li>
				</ul>

			</div>
		</div>
		<!--活动结束-->

		<!--家装攻略-->
		<div style="background-color: #313131;">
			<div class="container-fluid">
				<div class="row-fluid">
					<a name="myHome_strategy"></a>
					<h3 class="text-center col-xs-12 col-md-12" style="color: #fff">家装攻略</h3>
					<div class="col-xs-12 col-md-12">
						<a href="page/strategylist.jsp"><img src="images/index/cloud.png" /></a>
					</div>
				</div>
			</div>
		</div>
		<!--家装攻略 结束 -->

		<!--工友风采-->
		<div class="container-fluid">
			<div class="row-fluid logo-search">
				<h3 class="text-center">工友风采</h3>
				<div class="col-xs-6 col-md-4">
					<div class="thumbnail">
						<a href="#"> <img src="images/index/class1.jpg"
							style="height: 220px; width: 100%; display: block;" />
							<div class="carousel-caption">
								<h4>木工</h4>
								<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
							</div></a>
					</div>
				</div>
				<div class="col-xs-6 col-md-4">
					<div class="thumbnail">
						<a href="#"> <img src="images/index/class2.jpg"
							style="height: 220px; width: 100%; display: block;" />
							<div class="carousel-caption">
								<h4>木工</h4>
								<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
							</div></a>
					</div>
				</div>
				<div class="col-xs-6 col-md-4">
					<div class="thumbnail">
						<a href="#"> <img src="images/index/class3.jpg"
							style="height: 220px; width: 100%; display: block;" />
							<div class="carousel-caption">
								<h4>木工</h4>
								<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
							</div></a>
					</div>
				</div>
				<div class="col-xs-6 col-md-4">
					<div class="thumbnail">
						<a href="#"> <img src="images/index/class4.jpg"
							style="height: 220px; width: 100%; display: block;" />
							<div class="carousel-caption">
								<h4>木工</h4>
								<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
							</div></a>
					</div>
				</div>
				<div class="col-xs-6 col-md-4">
					<div class="thumbnail">
						<a href="#"> <img src="images/index/class5.jpg"
							style="height: 220px; width: 100%; display: block;" />
							<div class="carousel-caption">
								<h4>木工</h4>
								<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
							</div></a>
					</div>
				</div>
				<div class="col-xs-6 col-md-4">
					<div class="thumbnail">
						<a href="#"> <img src="images/index/class6.jpg"
							style="height: 220px; width: 100%; display: block;" />
							<div class="carousel-caption">
								<h4>木工</h4>
								<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
							</div></a>
					</div>
				</div>

			</div>
		</div>
		<!--工友风采结束-->

		<!--服务承诺-->
		<div class="service-promise">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="col-xs-4 col-md-2">
						<a href="#myHome_service"><img alt="200x200"
							src="images/index/s1.png " /></a>
					</div>
					<div class="col-xs-4 col-md-2">
						<a href="#myHome_service"><img alt="200x200"
							src="images/index/s4.png " /></a>
					</div>
					<div class="col-xs-4 col-md-2">
						<a href="#myHome_service"><img alt="200x200"
							src="images/index/s5.png " /></a>
					</div>
					<div class="col-xs-4 col-md-2">
						<a href="#myHome_service"><img alt="200x200"
							src="images/index/s6.png " /></a>
					</div>
					<div class="col-xs-4 col-md-2">
						<a href="#myHome_service"><img alt="200x200"
							src="images/index/s7.png " /></a>
					</div>
					<div class="col-xs-4 col-md-2">
						<a href="#myHome_service"><img alt="200x200"
							src="images/index/s8.png " /></a>
					</div>
				</div>
			</div>
		</div>
		<!--服务承诺结束-->

		<!--底部-->
		<div class="footer-content-list">
			<div class="container-fluid">
				<div class="text-center row-fluid logo-search">
					<div class="col-md-3 col-xs-6">
						<ul>
							<h4>关于我们</h4>
							<li><a href="team.jsp">麦浩斯简介</a></li>
							<li><a href="team.jsp">联系方式</a></li>
							<li><a href="index.jsp">网站首页</a></li>
							<li><a href="activity.jsp">最新活动</a></li>
							<li><a href="#">工友风采</a></li>
							<li><a href="#">Carrers</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-xs-6 ">

						<ul>
							<h4>服务保障</h4>
							<li><a href="#">假一赔十</a></li>
							<li><a href="#">退换无忧</a></li>
							<li><a href="#">先行赔付</a></li>
							<li><a href="#">金牌服务</a></li>
							<li><a href="#">厂家直供</a></li>
							<li><a href="#">专业配送</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-xs-6 ">

						<ul>
							<h4>售后服务</h4>
							<li><a href="#">退货钱款去向</a></li>
							<li><a href="#">退换货政策</a></li>
							<li><a href="#">退换货流程</a></li>
							<li><a href="#">退换货方式</a></li>
							<li><a href="#">购物流程</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-xs-6 ">

						<ul>
							<h4>麦浩斯商城</h4>
							<li><a href="fitment-mall/products.jsp"> 家具软装</a></li>
							<li><a href="fitment-mall/products.jsp"> 真皮沙发</a></li>
							<li><a href="fitment-mall/products.jsp"> 装饰品</a></li>
							<li><a href="fitment-mall/products.jsp"> 厨卫</a></li>
							<li><a href="fitment-mall/products.jsp"> 床品</a></li>
							<li><a href="fitment-mall/products.jsp">...更多</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>

		<div class="footer">
			<div class="container-fluid">
				<div class="text-center">
					<ul class="list-inline">
						<li class="active">友情链接:</li>
						<li><a href="#">土吧兔</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">一号家居</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">宜家家居</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">一号货车</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">家具网</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">Armenia</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">South Africa</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">Malaysia</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">Indonesia</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">Mumbai</a></li>
						<li><a href="#">|</a></li>
						<li><a href="#">Portugal</a></li>

					</ul>
				</div>
				<div class="copywrite">
					<p class="text-center">Copyright © 2015-2022
						麦浩斯手艺人（www.yihaojiaju.com）—在线家装领导者 All Rights Reserved
						苏ICP备14018447号-1</p>
					<p class="text-center">装房子 找木工 楼房漏水 急需锁匠工 就上麦浩斯手艺人 快捷、高效找服务-
						Yes!</p>
					<div class="clearfix"></div>
					<div class="text-center row-fluid footer-certificate">
						<a href="#"><img src="images/common/certificate1.png"></a> <a
							href="#"><img src="images/common/certificate2.png"></a> <a
							href="#"><img src="images/common/certificate3.png"></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--底部 结束-->
	</div>
	<script type="text/javascript">
$(".thumbnail").hover(function(){
	$(this).find(".carousel-caption").stop().animate({height:"100%"},400);
	$(this).find(".carousel-caption p").show(200);
},function(){
	$(this).find(".carousel-caption").stop().animate({height:"60px"},400);
	$(this).find(".carousel-caption p").hide(200);
})
</script>

	<script type="text/javascript">
$(function() {
	var user = '<%=session.getAttribute("loginuser")%>';
		

			if (user == "null") {

				$("#login_li").show();
				$("#userimg_li").hide();
			} else {
				$("#login_li").hide();
				$("#userimg_li").show();
			}

		});
		
//获取装修工类型
$.post('worker_type.action',function(data){
	for(var i=0;i<data.length;i++)
	{
		$("#workertype").append("<option value='"+data[i].workertypetbId+"'>"+data[i].workertypetbName+"</option>");
	}
	
},'json');
//快速下单

function forder()
{
	var user = '<%=session.getAttribute("loginuser")%>';
	if (user != "null") {
		$.post("/craftsman/order.action",  $("#forder").serialize() ,
				   function(data){
					if(data.code>0)
					{
						alert(data.message);
					}else
					{
						alert(data.message);
					}
				   }, "json");
	} else {
		location.href="to_login.action";
	}
}
	</script>
<script type="text/javascript">
	var userInfo='<%=session.getAttribute("loginuser")%>';
	function myOrder(){
		$.post("to_isLogin.action",{"userInfo":userInfo} );
	}
</script>
</body>
</html>

