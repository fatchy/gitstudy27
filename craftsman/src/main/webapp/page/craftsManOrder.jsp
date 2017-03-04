<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="header.jsp" %>
<head>
<link href="css/common/myhouse-carousel.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="css/common/bespeakOrder.css" />
<script type="text/javascript" src="js/order-rindy/order-mount.js"></script>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
	<div id="myScrollspy">
		<ul id="scrollfind-return">
			<li><a class="btn btn-info" href="index.jsp"><i
					class="fa fa-search"></i> 查找</a></li>
			<li><a class="btn btn-success" href="index.jsp"><i
					class="fa fa-user"></i> 客服 </a></li>
			<li><a class="btn btn-default" href="bespeakOrder.jsp"><i
					class="fa fa-angle-double-up fa-lg"></i> 返回</a></li>
		</ul>
	</div>

	

	<div class="nav-bottom-height">
		<div class="container-fluid">
			<div class="row-fluid">

				<h4 class=" col-md-offset-2 col-md-8  laborDetail">您所提交的订单信息如下：</h4>
				<form id="orderItemInfo">
				<div class=" col-md-offset-2 col-md-8  laborDetail">
					<table class="table table-hover">
						<tbody>
							<tr>
								<td>服务项目</td>
								<td>数量</td>
								<td>价格</td>
								<td>总价</td>
							</tr>
							<tr>
								<td><input disabled name="serviceName" id="subjetName" value="<s:property value='#session.demandInfo.workpricetbName'/>" /></td>
								<td><a style="width: 30px; font-size: 18px;"
									class="btn btn-info" href="javascript:reduce();">-</a> <input 
									id="orderAmount" type="text" size="3" value="<s:property value='#session.demandInfo.serviceNum'/>"
									onkeyup="modify('#orderAmount');" /> <a
									style="width: 30px; font-size: 18px;"
									class="btn btn-success text-center" href="javascript:add()">+</a> <input id="maxAmount"
									type="hidden" value="100" /></td>
								<td><input disabled id="unitPrice"  value="<s:property value='#session.demandInfo.selectPrice'/>"></td>
								<td><input disabled id="totalPrice"  value="<s:property value='#session.demandInfo.serviceSearchTotalPrice'/>"></td>
								
								
							</tr>
						</tbody>
					</table>
					<input type="hidden" id="hidorderAmount" name="serviceNum" />
					<input type="hidden" id="hidtotalPrice" name="serviceTatolPrice" />
					<input type="hidden" id="hidunitPrice" name="servicePrice" />
					<input type="hidden" id="hidsubjetName" name="serviceName" />
					<input type="hidden" id="hidorderItemids"  value="<s:property value='#session.orderItemIds'/>" />
					<input type="hidden" id="hidorderItemids1" name="orderItemids" />
				</div>
				
				<h4 class=" col-md-offset-2 col-md-8  laborDetail" >订单详细信息如下：</h4>


   <div class="form-horizontal col-md-offset-2 col-md-8 formMarginTop">
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label ">订单联系人：</label>
      <div class="col-sm-6">
         <input type="text" class="form-control" id="firstname" name="serviceUserName"
            value="<s:property value='#session.demandInfo.userName'/>">
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label">服务地址：</label>
      <div class="col-sm-6">
         <input type="text" class="form-control" id="firstname" name="serviceAddress"
           value="<s:property value='#session.demandInfo.userAddress'/>">
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label">服务时间：</label>
      <div class="col-sm-6">
         <input type="text" class="form-control" id="firstname" name="serviceDate"
           value="<s:property value='#session.demandInfo.serviceDate'/><s:property value='#session.demandInfo.serviceTime'/>">
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label">联系方式：</label>
      <div class="col-sm-6">
         <input type="text" class="form-control" id="firstname" name="serviceUserPhone"
            value="<s:property value='#session.demandInfo.userTelephone'/>">
      </div>
   </div>
   </div>
	<input type="hidden" name="ordercontentid" id="hidordercontenttbId" value="<s:property value='#session.ordercontenttbId'/>">
</form>

				<h4 class=" col-md-offset-2 col-md-8  laborDetail">请选择支付方式：</h4>

				<form class="form-horizontal col-md-offset-2 col-md-8 formMarginTop"
					 role="form" id="orderInfo">

					<div class="form-group col-md-12 ">
						<div class="radio" >
							<label> <input type="radio" name="ordertbPayment"
								id="optionsRadios1" value="2" checked> 支付宝 <img
								src="images/order/lipay.gif" />
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="ordertbPayment"
								id="optionsRadios2" value="3">微信
								<img
								src="images/order/lipay.gif" />
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="ordertbPayment"
								id="optionsRadios3" value="1"> 线下交易
								<img
								src="images/order/lipay.gif" />
							</label>
						</div>
					</div>


					<div class="form-group col-md-12"></div>
					<div class="form-group col-md-12">
						<div class="col-sm-offset-2 col-sm-4 col-md-offset-4 ">
							<a class="btn btn-success col-sm-4 col-md-5" onclick="submit()">确定下单</a>
							<button type="submit" class="btn btn-default col-md-offset-3 ">取消</button>
						</div>
					</div>
					<input type="hidden" name="ordertbId" id="hidorderid" value="<s:property value='#session.orderid'/>">
					<input type="hidden" name="ordertbMoney" id="hidordertbMoney" >
				
					
				</form>


			</div>
		</div>
	</div>

	<%@ include file="footer.jsp" %>
</body>
</html>
<script>
	function submit(){
		var arr=$("#hidorderItemids").val().split("[")[1].split(",")[0];
		$("#hidorderItemids1").val(arr);
		$("#hidorderAmount").val($("#orderAmount").val());
		$("#hidtotalPrice").val($("#totalPrice").val());
		$("#hidsubjetName").val($("#subjetName").val());
		$("#hidunitPrice").val($("#unitPrice").val());
		
		$.post("determineOrderItem_determineOrderItem.action", $("#orderItemInfo").serialize(),
				function(data){
		    alert("确认订单成功");
		    window.location.href = "to_toPayMoney.action";
		   }, "json");
		$("#hidordertbMoney").val($("#totalPrice").val());
		$.post("determineOrder_determineOrder.action", $("#orderInfo").serialize(),
				function(data){
		    alert("确认订单成功");
			window.location.href = "to_toPayMoney.action";
		   }, "json");
		
	}
	
</script>
<script>
	function reduce(){
		var num=$("#orderAmount").val();
		num-=1;
		if(num<=1){
			alert("商品的数量不能少于1");
		}
		$("#orderAmount").val(num)
		
		var total=$("#unitPrice").val().split("元")[0]*num;
		$("#totalPrice").val(total);
	}
	function add(){
		var num=$("#orderAmount").val();
		num=num*1+1;
		if(num<=1){
			alert("商品的数量不能少于1");
		}
		$("#orderAmount").val(num)
		
		var total=$("#unitPrice").val().split("元")[0]*num;
		$("#totalPrice").val(total);
	}
</script>
<script>
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
</script>