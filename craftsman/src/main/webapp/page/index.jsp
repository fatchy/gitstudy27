<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>
<head>
	<script type="text/javascript"
	src="js/calender/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="js/calender/local/bootstrap-datetimepicker.zh-CN.js"
	charset="UTF-8"></script>
	<link rel='stylesheet' type='text/css'
	href="css/calender/bootstrap-datetimepicker.min.css" />
	<link href="css/common/myhouse-carousel.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/index/index.css"/>
	
	
</head>
<body  data-spy="scroll" data-target="#myScrollspy">
	<a name="index-top"></a>


	<div class="bodyDiv">
	
		
	<!--logo + 搜索框-->
	<div class="container-fluid nav-bottom-height">
    <div class="row logo-search">
		<div class="col-xs-2 col-md-2">
			<a href="index.html"><img src="images/common/logo1_meitu_1.jpg" alt="logo"/></a>

		</div>

		<div class="col-xs-8 col-md-8 text-center" >
			<form action="##" class="form-search form-inline " rol="search">
			<div class="form-group">
				    <div class="input-prepend input-append">
      					    <div class="btn-group">
      							  <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)" id="index-searchMenu" name="selectstatu">筛选条件
      							  	<span class="caret"></span>
  								</a>
      							<ul class="dropdown-menu" id="index-search" >
       								<li><a href="javascript:void(0)">工友类型</a></li>
      								<li><a href="javascript:void(0)">市区范围</a></li>
      							</ul>
    						</div>
      					<input type="text" class="form-control index-search-button"  placeholder="按地区 按类型 轻松找工友" size="60" name="queryStr" id="inputcontent" onkeypress="EnterPress(event)"/>
      					<button type="button" onclick="submitsearch()" class="btn btn-default" id="btn1"><i class="fa fa-search"></i></button></br>
    				</div>

				<label class="pull-left" >热门搜索：	木工	水电工	油漆工</label>
			</div> 
			</form>
		</div>
		<div class="col-xs-2 col-md-2 ">
			<a href="index.jsp" class="pull-right"><img src="images/common/weixin.png" alt="weixin"/></a>

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
		<div class="cell bns-02" style="display:none;">
			<div class="con">
				<a href="#" target="_blank" class="banner-link">
				<i>麦浩斯</i></a> 
			</div>
		</div>
		<div class="cell bns-03" style="display:none;">
			<div class="con">
				<a href="#" target="_blank" class="banner-link">
				<i>手艺人</i></a> </div>
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
		
		<form class="text-center" id="Demandform" method="post">
				
				<div class="tabbable" id="bespeakOrderNeedInfo">
				<ul class="nav nav-tabs text-center" id="bespeakTabsLi" >
					<li class="active" >
						<a href="#bespeakNeed" data-toggle="tab">1.填写需求</a>
					</li>
					<li>
						<a data-toggle="tab" href="#bespeakInfo">2.个人信息</a>
					</li>
					<li></li>
				</ul>
				<div class="tab-content">
					<!-- 第一部分 -->
					<div class="tab-pane active" id="bespeakNeed">
						 <div id="jsondata"></div>
						<fieldset >
							<div class="text-center  text-success">
								</br>
							 	<label >填写需求，快捷下单，手艺人即刻上门</label></br>
							 </div>
							 
							 <div class="input-append" style="width:300px;margin-left:50px;margin-top: 10px;">    
      							<input type="text" class="form-control index-search-button pull-left"  placeholder="输入需求，我们帮您找工匠" name="serviceSearchInput" id="serviceSearchInput" onkeypress="EnterPress1(event)"/>
      							<a class="btn btn-default pull-right"  id="orderServiceSearch"  href="javascript:search()"  ><i class="fa fa-search fa-lg"></i></a></br>
    						</div>
							<input type="hidden" name="workertypetbName" id="hideworkertypetbName">
							
    						<div class="needLabor" >
								<label style="width:150px;text-align: left; height:35px;line-height: 35px;vertical-align: middle;" class="pull-left " >您要找的服务是不是：</label>
								<div class="btn-group" style="width:150px;">
      							 <select class="form-input-select form-control  pull-right" id="serviceDropMenu" name="workpricetbName" onchange="select1onchange()">
								<option value="volvo" selected="selected">请选择为您匹配的服务</option>
								
							 </select> 
    						</div>
							</div>
									
								<div class="needLabor" >
								<label style="width:150px;text-align: left; height:35px;line-height: 35px;vertical-align: middle;" class="pull-left " >选择服务报价(单价)：</label>
								<div class="btn-group" style="width:150px;">
      							 <select class="form-input-select form-control  pull-right" id="servicePriceDropMenu" name="selectPrice">
								<option value="volvo" selected="selected">请选择计价方式</option>
								
							 </select> 
    						</div>
							</div>
							<div class="clearfix"></div>
							<div class="needLabor" >
								<label style="width:150px;text-align: left; height:35px;line-height: 35px;vertical-align: middle;" class="pull-left">请输入您需要的数量：</label>
								<input type="text" class="form-control  pull-right"  style="width:150px;" name="serviceNum" id="serviceSearchCount"/>
							</div>
							<div class="clearfix"></div>
							<div class="needLabor" >
								<label style="width:150px;text-align: left; height:35px;line-height: 35px;vertical-align: middle;" class="pull-left" >服务总价为：</label>
								<a class="btn btn-default text-center pull-right color"  id="clearTotalPrice"  href="javascript:void(0)" style="width:40px;" >Clear</a>
								<input type="text" class="form-control "  style="width:110px;"name="serviceSearchTotalPrice" id="serviceSearchTotalPrice" readOnly="true"/>
							</div>
							
							<div class="clearfix"></div>
							<!-- 如果您同意报价，请点击“2、个人信息”前往下单 -->
							<!-- 确保您的服务需求正确 -->
							<label class="orderInfoDisplay text-info text-center">如果您同意报价，请点击“2、个人信息”前往下单</label>
							<div class="clearfix"></div>
							<label class="form-bottom" >&nbsp;</label>
							
							  
						</fieldset>
					</div>
					
					<!-- 第二部分 -->
					<div class="tab-pane" id="bespeakInfo">
						<fieldset>
						<div class="text-center text-success">
								</br>
							 	<label >填写需求，快捷下单，手艺人即刻上门</label></br>
							 </div>
							<input type="text" class="form-control" placeholder="请输入您的姓名"/ name="userName">
							 <input type="text" class="form-control" placeholder="请输入联系方式"/ name="userTelephone">
							 
							<select class="form-input-select" id="city">
								<option value="volvo">上海市区</option>
								<option>闵行区</option>
								<option>其他</option>
							 </select> 
							 <select class="form-input-select"  id="stream"> 
								<option value="volvo">街道</option>
								<option>江川路街道</option>
								<option>古美街道</option>
								<option>龙柏街道</option>
								<option>虹桥镇</option>
								<option>华漕镇</option>
								<option>七宝镇</option>
								<option>莘庄镇</option>
								<option>颛桥镇</option>
								<option>浦江镇</option>
								<option>梅陇镇</option>
								<option>马桥镇</option>
								<option>吴泾镇</option>
								<option>其他</option>
							</select>
							</br>
							<input type="hidden" name="userAddress" id="hideUserAddress">
							<input type="hidden" name="userId" id="hideuserId" value='<s:property value="#session.loginuser.userId"/>'>
							<input type="text" class="form-control" placeholder="请输入详细地址"/ id="userAddress">
									<div class="input-append date form_datetime form-inline" style="width:300px;margin-left:50px;">
										<input class="form-input-select pull-left" size="16" type="text"
											value="" readonly placeholder="请选择日期" style="width:145px;margin-left:0px;" id="serviceDate" name="serviceDate"> 
											<select
											class="form-input-select pull-right" id="workertime"
											name="serviceTime" style="width:150px;">
											<option value="volvo">请选择时间</option>
											<option>立刻</option>
											<option>早上</option>
											<option>下午</option>
											<option>晚上</option>
										</select> <span class="add-on"><i class="icon-th"></i></span>
									</div>
								<input type="hidden" name="serviceDate" id="hideserviceDate">
									<a class="btn btn-large btn-info form-input "  style="margin-bottom: 60px;" id="submit1" onclick="submitDemand()">提交</a>
							
							 <div class="clearfix"></div>
							 
						</fieldset>
					</div>
				</div>
			</div>
						
					</form>
	</div>
	<!--浮动的表单  end-->

</div>
<!--轮播图结束-->



<!--六大功能模块-->
<div class="container-fluid">
	<div class="row-fluid">
								<div class="col-xs-6 col-md-2">
									<a href="page/laborlist.jsp"><img class="img-circle1" alt="130x130" src="images/index/craftsmanteam.png" /></a>
								</div>
								<div class="col-xs-6 col-md-2">
									<a href="page/strategylist.jsp"><img class="img-circle1" alt="130x130" src="images/index/stratly.png" /></a>
								</div>
								<div class="col-xs-6 col-md-2">
									<a href="#myHome_service"><img class="img-circle1" alt="130x130" src="images/index/service.png" /></a>
								</div>
								<div class="col-xs-6 col-md-2">
									<a href="page/fitment-mall/products.jsp"><img class="img-circle1" alt="130x130" src="images/index/stored.png" /></a>
								</div>
								<div class="col-xs-6 col-md-2">
									<a href="page/team.jsp"><img class="img-circle1" alt="130x130" src="images/index/team.png" /></a>
								</div>
								<div class="col-xs-6 col-md-2">
									<a href="#myHome_service"><img class="img-circle1" alt="130x130" src="images/index/service1.png" /></a>
								</div>
					</div>
			</div>
<!--六大功能模块 结束-->

<!--活动-->
	<div class="container-fluid">
						<div class="row-fluid logo-search">
							<h3 class="text-center">
								我家--最新活动
							</h3>

									<ul class="thumbnails">
										<div class="row-fluid">
										<li class="col-xs-12 col-md-4">
											<div class="thumbnail">
												<a href="page/activity.jsp"><img alt="300x200" src="images/index/activity_3.jpg" /></a>
												<div class="caption">
													<h3>
														看这里&nbsp;&nbsp;&nbsp;&nbsp;<span>降价到底</span>
													</h3>
													
												</div>
											</div>
										</li>
										<li class="col-xs-12 col-md-4">
											<div class="thumbnail">
												<a href="page/activity.jsp"><img alt="300x200" src="images/index/activity_2.jpg" /></a>
												<div class="caption">
													<h3 class="text-center">
														DIY自己的家 &nbsp;&nbsp;&nbsp;&nbsp;<span>做你所想</span>
													</h3>
													
												</div>
											</div>
										</li>
										<li class="col-xs-12 col-md-4">
											<div class="thumbnail">
												<a href="page/activity.jsp"><img alt="300x200" src="images/index/activity_1.jpg" /></a>
												
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
	<div style="background-color: #79C6DE;">
	<div class="container-fluid">
						<div class="row-fluid" >
						<a name="myHome_strategy"></a>
						<h3 class="text-center col-xs-12 col-md-12" style="color: #fff">家装攻略</h3>
						<a href="strategylist.jsp" class="col-xs-12 col-md-12"><img src="images/index/cloud_5.jpg"/></a>
						</div>
					</div>
	</div>
<!--家装攻略 结束 -->

<!--工友风采-->		
	<div class="container-fluid">
    <div class="row-fluid logo-search">
		<h3 class="text-center">工友风采</h3>
		<div class="col-xs-12 col-md-4">
			<div class="thumbnail">
				<a href="page/laborlist.jsp">
				<img src="images/index/class1.jpg" style="height: 220px; width: 100%; display: block;"/>
				<div class="carousel-caption">
					<h4>木工</h4>
					<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
				</div></a>
			</div>
		</div>
		<div class="col-xs-12 col-md-4">
			<div class="thumbnail">
				<a href="page/laborlist.jsp">
				<img src="images/index/class2.jpg" style="height: 220px; width: 100%; display: block;"/>
				<div class="carousel-caption">
					<h4>木工</h4>
					<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
				</div></a>
			</div>
		</div>
		<div class="col-xs-12 col-md-4">
			<div class="thumbnail">
				<a href="page/laborlist.jsp">
				<img src="images/index/class3.jpg" style="height: 220px; width: 100%; display: block;"/>
				<div class="carousel-caption">
					<h4>木工</h4>
					<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
				</div></a>
			</div>
		</div>
		<div class="col-xs-12 col-md-4">
			<div class="thumbnail">
				<a href="page/laborlist.jsp">
				<img src="images/index/class4.jpg" style="height: 220px; width: 100%; display: block;"/>
				<div class="carousel-caption">
					<h4>木工</h4>
					<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
				</div></a>
			</div>
		</div>
		<div class="col-xs-12 col-md-4">
			<div class="thumbnail">
				<a href="page/laborlist.jsp">
				<img src="images/index/class5.jpg" style="height: 220px; width: 100%; display: block;"/>
				<div class="carousel-caption">
					<h4>木工</h4>
					<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
				</div></a>
			</div>
		</div>
		<div class="col-xs-12 col-md-4">
			<div class="thumbnail">
				<a href="page/laborlist.jsp">
				<img src="images/index/class6.jpg" style="height: 220px; width: 100%; display: block;"/>
				<div class="carousel-caption">
					<h4>木工</h4>
					<p>主要是制作家具、木制造型吊顶,以及门窗套、窗帘盒、暖气罩、踢脚线、木护墙、木隔断等细木工活，有时木地板的铺设也需他们来完成。</p>
				</div></a>
			</div>
		</div>
	
	</div>
</div>
<!--工友风采结束-->

<div class="modal fade" id="AlertModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="top:30%;">
   	 <div class="modal-dialog">
      <div class="modal-content" style="margin-top:50px;">
         <div class="modal-header alert-warning" id="modal-backColor">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="toLogin()">&times;</button>
            <h4 class="modal-title text-center" id="AlertModalLabel"> 麦浩斯温馨提示</h4>
         </div>
        
      </div>
	 </div>
	</div>
<%@ include file="footer.jsp" %>
</div>

<script type="text/javascript">
//发出搜索服务请求
	function search(){
		
		
		$.post("searchService_workerPrice.action", { "searchstr": $("#serviceSearchInput").val() },
				   function(data){
					$("#jsondata").data("jsondata",data);
					var size=data.length;
					$("#serviceDropMenu").empty();
					$("#servicePriceDropMenu").empty();
					//$("#serviceDropMenu").append("<option value='volvo' selected = 'selected' >请选择为您匹配的服务</option>");
					//$("#servicePriceDropMenu").append("<option value='volvo' selected = 'selected' >请选择计价方式</option>");
				    for(var i=0;i<size;i++){
				    	//alert(data[i].workertypetbName);
				    	if(i==0){
				    		$("#serviceDropMenu").append("<option selected = 'selected'>"+data[i].workpricetbName+"</option>");
				    		if(data[i].workpricetbPriceone== null||data[i].workpricetbPriceone=="null"){
				    		}else{
				    			$("#servicePriceDropMenu").append("<option selected = 'selected'>"+data[i].workpricetbPriceone+"</option>");
				    		}
				    		if(data[i].workpricetbPricetwo== null||data[i].workpricetbPricetwo=="null"){
				    		}else{
				    			$("#servicePriceDropMenu").append("<option >"+data[i].workpricetbPricetwo+"</option>");
				    		}
				    		
				    	}
				    	else{
				    		$("#serviceDropMenu").append("<option>"+data[i].workpricetbName+"</option>");
				    	}
				    	
				    	
				    }
				    $("#hideworkertypetbName").val(data[1].workertypetbId);
				    
				   }, "json");
		
	}
	
	
	
</script>
<script type="text/javascript">
$(".thumbnail").hover(function(){
	$(this).find(".carousel-caption").stop().animate({height:"100%"},400);
	$(this).find(".carousel-caption p").show(200);
},function(){
	$(this).find(".carousel-caption").stop().animate({height:"60px"},400);
	$(this).find(".carousel-caption p").hide(200);
});

//顶部搜索框
$("#index-search li a").bind("click",function(){
		$("#index-searchMenu").html( $(this).html()+'<span class="caret"></span> ');
});

//发出搜索服务请求

	
	
	
	//根据输入的数量计算总价 serviceSearchCount
		$("#serviceSearchCount").bind(
			"blur", function(){
				var count=$(this).val();
				var   reg =/^[0-9]*[1-9][0-9]*$/ ;
				var num=$("#servicePriceDropMenu option:selected").text().split("元")[0];
				if( reg.test(count) ){
					$("#serviceSearchTotalPrice").val( count*num);
				}
		});
	
	//清空 数量和总价	clearTotalPrice
	$("#clearTotalPrice").bind(
			"click", function(){
				$("#serviceSearchCount").val('' );
				$("#serviceSearchTotalPrice").val('' );
		});	
	//提交用户地址
	$("#userAddress").blur(function(){
		var city=$("#city option:selected").text();
		var stream=$("#stream option:selected").text();
		var detailAddress=$("#userAddress").val();
		$("#hideUserAddress").val(city+stream+detailAddress);
	});
	//提交用户的id
  	
	

</script>
	<script type="text/javascript">
	
		$('.form_datetime').datetimepicker({

			language : 'zh-CN',/*加载日历语言包，可自定义*/

			weekStart : 0,

			todayBtn : "linked",

			autoclose : 1,

			todayHighlight : 1,

			startView : 2,

			minView : 2,
			forceParse : 0,
			 format: "yyyy-MM-dd"

		});
	</script>
	<script type="text/javascript">
		function submitDemand(){
			$.post("submitDemand_order", $("#Demandform").serialize(),
					   function(data){
				$("#modal-backColor").removeClass("alert-warning").addClass("alert-success");
				$("#AlertModalLabel").html("提交信息成功！");
				$("#AlertModal").modal('toggle');
				$("#serviceSearchInput").val();
				window.location.href = "to_craftsManOrder.action";
				
					   }, "json");
	
			
		}
		
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
						$("#AlertModalLabel").html(data.message);
						$("#AlertModal").modal('toggle');
					}else
					{
						$("#AlertModalLabel").html(data.message);
						$("#AlertModal").modal('toggle');
					}
				   }, "json");
	} else {
		location.href="to_login.action";
	}
}
	</script>
<script type="text/javascript">
	$("#serviceSearchInput").focus(
			function(){
				var user = '<%=session.getAttribute("loginuser")%>';
				
				if (user == "null"){
					//alert("亲！您还没有登入，请登入后继续操作");
					$("#AlertModalLabel").html("亲！您还没有登入，请登入后继续操作");
					$("#AlertModal").modal('toggle');
					
				}
			}
	);
	
	function toLogin(){
		window.location.href="login.html";
	}
	function select1onchange(){
		$("#servicePriceDropMenu").empty();
		
		var jsondata=$("#jsondata").data("jsondata");
	    var checkIndex=$("#serviceDropMenu").get(0).selectedIndex
		var index=checkIndex;
		if(jsondata[index].workpricetbPriceone== null||jsondata[index].workpricetbPriceone=="null"){
		}else{
			$("#servicePriceDropMenu").append("<option selected = 'selected'>"+jsondata[index].workpricetbPriceone+"</option>");
		}
		if(jsondata[index].workpricetbPricetwo== null||jsondata[index].workpricetbPricetwo=="null"){
		}else{
			$("#servicePriceDropMenu").append("<option>"+jsondata[index].workpricetbPricetwo+"</option>");
		}
		
	}
	function submitsearch(){
		$.post("submitSearchInfo_worker.action", {"selectstatu":$("#index-searchMenu").text(),"queryStr":$("#inputcontent").val()} ,
				   function(data){
						window.location.href = "to_laborlist.action";
				   }, "json");
	}
	
	 function EnterPress(e){
         var e=e||window.event;
         if (e.keyCode == 13) {
        	 submitsearch();
         }
     }
	 function EnterPress1(e){
         var e=e||window.event;
         if (e.keyCode == 13) {
        	
        	 search();
         }
     }
</script>

</body>
</html>

