<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>
<head>
	<link href="css/common/myhouse-carousel.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/common/bespeakOrder.css"/>
</head>
<body  data-spy="scroll" data-target="#myScrollspy">
	<div id="myScrollspy">
		<ul id="scrollfind-return">
			<li><a class="btn btn-info" href="index.jsp"><i class="fa fa-search"></i> 查找</a></li>
			<li><a class="btn btn-success" href="index.jsp"><i class="fa fa-user"></i> 客服 </a></li>
			<li><a  class="btn btn-default"href="bespeakOrder.jsp"><i class="fa fa-angle-double-up fa-lg"></i> 返回</a></li>
		</ul>
	</div>



<div class="nav-bottom-height">
	<div class="container-fluid">
		<div class="row-fluid">
		
		<h4 class=" col-md-offset-2 col-md-8  laborDetail" >您所预约工匠的基本信息如下：</h4>
		<div class=" col-md-offset-2 col-md-8  laborDetail" >
				
				<div class=" col-md-4">
						<img class="img-responsive" src="image/worker/<s:property value='#session.workerInfo.workertbPhoto'/>"/>
				</div>
				<div class=" col-md-8">
						<div>工号： <span id="worker1"><s:property value="#session.workerInfo.workertbId"/></span></div>
						<div>工匠： <span><s:property value="#session.workerInfo.workertbName"/></span></div>
						<div>工龄： <span><s:property value="#session.workerInfo.workertbExtime"/>年</span></div>
						<div>常住地址： <span><s:property value="#session.workerInfo.workertbCadress"/></span></div>
						<div>工作范围： <span><s:property value="#session.workerInfo.workertbScop"/></span></div>
				</div>
		</div>
		
		<h4 class=" col-md-offset-2 col-md-8  laborDetail" >您所预约的基本信息如下：</h4>

<form class="form-horizontal col-md-offset-2 col-md-8 formMarginTop" role="form" id="appointform">
   
    
     <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label ">您的需求：</label>
      
      <div class="col-sm-6">
         <input type="text" class="form-control" id="needservice" name="serviceSearchInput"
            placeholder="请输入您需要工匠为您服务的服务项" onkeypress="EnterPress1(event)">
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2  control-label">服务价格：</label>
      <div class="col-sm-6">
      	<div id="jsondata"></div>
         <select class="col-sm-6"  id="serviceDropMenu" style="height:35px" name="workpricetbName" onchange="select1onchange()">
         		<option value="volvo" selected="selected">请选择为您匹配的服务</option>
				
         </select>
         <select class="col-sm-6" id="servicePriceDropMenu"  style="height:35px" name="selectPrice">
         		<option value="volvo" selected="selected">请选择计价方式</option>
				
         </select>
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label ">服务数量：</label>
      
      <div class="col-sm-6">
       <input type="text" class="form-control  "  style="width:360px;" name="serviceNum" id="serviceSearchCount"/>
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label ">智能报价：</label>
      
      <div class="col-sm-6">
        <a class="btn btn-default text-center pull-right color"  id="clearTotalPrice"  href="javascript:void(0)" style="width:40px;" >Clear</a>
								<input type="text" class="form-control "  style="width:316px;"name="serviceSearchTotalPrice" id="serviceSearchTotalPrice" readOnly="true"/>
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label ">用户姓名：</label>
      
      <div class="col-sm-6">
         <input type="text" class="form-control" id="firstname" name="userName"
            placeholder="请输入您的名字">
      </div>
   </div>
   
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label">联系方式：</label>
      <div class="col-sm-6">
         <input type="text" class="form-control" id="firstname" name="userTelephone"
            placeholder="请输入联系方式">
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2  control-label">预约地址：</label>
      <div class="col-sm-6">
         <select class="col-sm-6"  id="bespeakDistrict" >
         		<option value="volvo">上海市区</option>
				<option>闵行区</option>
         </select>
         <select class="col-sm-6" id="bespeakStreet">
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
       
      </div>
   </div>
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2  control-label">详细地址：</label>
      <div class="col-sm-6">
         <input type="text" class="form-control" id="firstaddress"
            placeholder="请输入详细地址">
      </div>
   </div>
     <input type="hidden" id="hiduserid" name="userAddress">
   <div class="form-group col-md-12">
      <label for="firstname" class="col-sm-2 col-md-offset-2 control-label">预约时间：</label>
      <div class="col-sm-6">
         <input disabled type="text" class="form-control" id="Date"
            placeholder="请输入预约时间" value="<s:property value='#session.date'/>">
      </div>
   </div>
    <input type="hidden" id="hidserviceDate" name="serviceDate">
   <input type="hidden" id="hidserviceTime" name="serviceTime">
   <input type="hidden" id="hidworkerId" name="workerId">
   <div class="form-group col-md-12"></div>
   <div class="form-group col-md-12" >
      <div class="col-sm-offset-2 col-sm-4 col-md-offset-4 " >
         <a  class="btn btn-success col-sm-4 col-md-5" href="javascript:submitAppointInfo()">确定预约</a> 
         <a  class="btn btn-default col-md-offset-3 " href="javascript:cleanAll()">取消</a>
      </div>
   </div>
  
   
</form>


		</div>
	</div>
</div>
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
</body>
</html>
<script>
	$("#needservice").blur(
		function(){
			search();
		}	
	);
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
	
	
</script>
<script>
	function submitAppointInfo(){
		var date=$("#Date").val().split("-");
		var serviceDate=date[0]+"-"+date[1]+"-"+date[2];
		var serviceTime=date[3];
		alert(serviceTime);
		var city=$("#bespeakDistrict option:selected").text();
		var street=$("#bespeakStreet option:selected").text();
		var detailaddress=$("#firstaddress").val();
		var userAddress=city+street+detailaddress;
		$("#hidserviceDate").val(serviceDate);
		$("#hidserviceTime").val(serviceTime);
		$("#hidworkerId").val($("#worker1").text());
		$("#hiduserid").val(userAddress);
		$.post("submitAppointment_appointmen.action", $("#appointform").serialize(),
				   function(data){
				     alert("预约订单成功"); // John
				     window.location.href = "to_craftsManOrder.action";
				   }, "json");
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
		
function cleanAll(){
	$(':input','#appointform') 
	.not(':button, :submit, :reset, :hidden,#Date') 
	.val('') 
	.removeAttr('checked') 
	.removeAttr('selected');
}
function EnterPress1(e){
    var e=e||window.event;
    if (e.keyCode == 13) {
   	
   	 search();
    }
}
$("#needservice").focus(
		function(){
			var user = '<%=session.getAttribute("loginuser")%>';
			
			if (user == "null"){
				$("#AlertModalLabel").html("亲！您还没有登入，请登入后继续操作");
				$("#AlertModal").modal('toggle');
			}
		}
);
function toLogin(){
	window.location.href="login.html";
}
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