<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="header.jsp" %>
<link rel="stylesheet" type="text/css" href="css/users/users.css" />
<script type="text/javascript" src="js/order-rindy/changePwd.js"></script>
</head>
<body data-spy="scroll" data-target="#usersScrollspy #myScrollspy">
	<!--导航-->
	<div id="myScrollspy">
		
	</div>
	
	<!--中间内容-->
	<div class="userpage-content nav-bottom-height3">
		<div class="container-fluid ">
			<div class="row-fluid">
			
				<div class="col-xs-12 col-md-2" id="usersScrollspy">
					<ul class="nav nav-tabs nav-stacked text-center" data-spy="affix"
						data-offset-top="125" id="usersNavLi">
						<li class="active"><a data-toggle="tab" href="#userOrder">我的订单</a></li>
						<li><a data-toggle="tab" href="#userinfoSet">个人资料</a></li>
						<li><a data-toggle="tab" href="#updatePassword">修改密码</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-md-10 ">
					<div class="tab-content">
						<div class=" active tab-pane table-responsive" id="userOrder">
							<h3>我的订单</h3>

							<div class="tabbable" id="orderInlineTab">
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#allOrder">所有订单</a>
									</li>
									<li><a data-toggle="tab" href="#carryOrder">进行中</a></li>
									<li><a data-toggle="tab" href="#doneOrder">已完成</a></li>
									<li><a data-toggle="tab" href="#evaluateOrder">待评价</a></li>
								</ul>

								<div class="tab-content">
									<!-- 第一部分内容. -->
									<div class=" active tab-pane active table-responsive" id="allOrder">
										
									</div>
									<!-- 第2部分内容. -->
									<div class="tab-pane" id="carryOrder">

									</div>

									<!-- 3部分内容. -->
									<div class="tab-pane" id="doneOrder">

									</div>
									
									<!-- 第4部分内容. -->
									<div class="tab-pane" id="evaluateOrder">
									
									</div>
								</div>
							</div>

						</div>


						<!--第三部分-->
						<div class="  tab-pane col-md-10 col-md-offset-1 col-xs-12"
							id="userinfoSet">
							<h3>个人资料</h3>

							<div class="userpage-form table-response ">
								<form id="uploadForm" enctype="multipart/form-data">
									<table class="table">
											<tr>
												<td class="text-center"><label>用户头像:</label></td>
												<td style="display: inline;"><input type="file" name="myFile" style="width: 35%;float: left;" id="myFile"/>
													<input type="button" value="上传" onclick="doUpload()" style="width: 8%;float: left;"/>
												</td>
											</tr>
										</table>
								</form>
							
								<form id="userinfo-form" method="post">
									<table class="table" id="usercenter-tableinfo">

										<tr>
											<td class=" text-center">
											<s:if test=" #session.loginuser.usertbHeadpic ==null ||#session.loginuser.usertbHeadpic ==''">
												<img id="userheadImg" alt="用户头像" class="img-circle usercenter-img" src="images/laborlistImg/3.jpg" />
											</s:if> 
											<s:else>
												<img id="userheadImg" alt="用户头像" class="img-circle usercenter-img" src='<s:property value="#session.loginuser.usertbHeadpic" />' />
											</s:else>
											</td>
											
											<td style="position: relative;">
												<div id="slidershow" class="carousel col-md-7 col-xs-7"
													style="position: absolute; right: 0px; top: 0px;">
													<!-- 设置轮播图片 -->
													<div class="carousel-inner col-md-6">
														<div class="item active col-md-12">
															<a href="page/activity.jsp"><img src="images/index/activity_1.jpg"
																alt="活动"></a>
														</div>
														<div class="item col-md-12">
															<a href="page/activity.jsp"><img src="images/index/activity_2.jpg"
																alt="活动"></a>
														</div>
														<div class="item col-md-12">
															<a href="page/activity.jsp"><img src="images/index/activity_3.jpg"
																alt="活动"></a>
														</div>
														<!-- 设置轮播图片控制器 -->
														<ol class="carousel-indicators">
															<li class="active">1</li>
															<li>2</li>
															<li>3</li>
														</ol>
														<a class="left carousel-control " href="#slidershow"
															role="button" data-slide="prev"
															style="margin-left: 9%; padding-top: 15%;"> <span><i
																class="fa fa-chevron-left fa-lg"></i></span>
														</a> <a class="right carousel-control" href="#slidershow"
															role="button" data-slide="next"
															style="margin-right: 9%; padding-top: 15%;"> <span><i
																class="fa fa-chevron-right fa-lg"></i></span>
														</a>
													</div>
												</div>
											</td>
										</tr>
										
										<tr>
											<td class="text-center"><label>用户性别:</label></td>
											<td><s:if test='#session.loginuser.usertbSex=="女"'>
													<input type="radio" name="usersexRadios"
														id="optionsRadios1" value="男" class="userinfo-radio"/>男&nbsp;&nbsp;&nbsp;
													<input type="radio" name="usersexRadios"
														id="optionsRadios2" value="女" checked/>女
												</s:if> <s:else>
													<input type="radio" name="usersexRadios"
														id="optionsRadios1" value="男" checked
														class="userinfo-radio"/>男&nbsp;&nbsp;&nbsp;
													<input type="radio" name="usersexRadios"
														id="optionsRadios2" value="女"/>女
												</s:else></td>
										</tr>
										<tr>
											<td class="text-center"><label>用户姓名:</label></td>
											<td><input type="text" name="usertbName" id="usertbName"
												value='<s:property value="#session.loginuser.usertbName" />' onchange="jQuery.checkUserName()"/></td>
										</tr>
										<tr>
											<td class="text-center"><label>联系方式:</label></td>
											<td>
												<input type="text" name="usertbCellphone" id="usertbCellphone" value='<s:property value="#session.loginuser.usertbCellphone" />' />
												<input type="hidden" name="usertbHeadpic" id="usertbHeadpic" />
											</td>
										</tr>
										<tr>
											<td class="text-center"><label>联系邮箱:</label></td>
											<td><input type="text" name="usertbEmail" id="usertbEmail"
												value='<s:property value="#session.loginuser.usertbEmail" />' /></td>
										</tr>
										<tr>
											<td class="text-center"><label>家庭住址:</label></td>
											<td><select class="usercenter-select " id="district"
												onchange="jQuery.getStreet('#street','#district')">
											</select> <select class="usercenter-select " id="street">

											</select> <input type="text" name="userAddress" id="userAddress"
												value="详细地址" /></td>
										</tr>
										<tr id="commonAddress9">
											<td class="text-center"><label>常用地址:</label></td>
											<td><select class="usercenter-select "
												id="commondistrict9" onchange="jQuery.getStreet('#commonstreet9','#commondistrict9')">

											</select> <select class="usercenter-select " id="commonstreet9">

											</select> <input type="text" name="userCommonAddress9"
												id="userCommonAddress9" value="详细地址" /> <a
												class="btn btn-success usercenter-addButton" type="button"
												id="addAddressBtn"
												href="javascript:addAddressBtn('commonAddress9')">添加</a></td>
										</tr>

										<tr>
											<td></td>
											<td><a class="btn btn-success userpage-button"
												type="button" onclick="jQuery.saveUserInfo()" >保存</a> 
												<a class="btn btn-default age-button" type="button">取消</a></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
						<!---->

						<!--第4部分-->
						<div class=" tab-pane col-md-10 col-md-offset-1 col-xs-12"
							id="updatePassword">
							<h3>修改密码</h3>

							<div class="userpage-form table-response ">
								<form id="userinfo-updatePwdform">
									<table class="table">
										<tr>
											<td class="text-center"><label>当前密码:</label></td>
											<td>
												<input type="password" name="password" id="password"
												onblur="jQuery.checkCurrentPwd('#password', '<s:property value="#session.loginuser.usertbPassword" />')" />
												<label id="pwdLabel"></label></td>
										</tr>
										<tr>
											<td class="text-center"><label>新密码:</label></td>
											<td><input disabled type="password"
												name="usertbPassword" id="passwordNew"
												onblur="jQuery.checkNewPwd('#passwordNew')" /> <label
												id="pwdNewLabel"></label></td>
										</tr>
										<tr>
											<td class="text-center"><label>确认密码:</label></td>
											<td><input disabled type="password" name="passwordCheck"
												id="passwordCheck"
												onblur="jQuery.checkCheckPwd('#passwordCheck','#passwordNew')" />
												<label id="pwdCheckLabel"></label></td>
										</tr>
										<tr>
											<td></td>
											<td><a class="btn btn-success password-button"
												type="submit" id="savePwd" href="javascript: void(0)"
												onclick="jQuery.savePassword()">保存</a></td>
										</tr>

									</table>
								</form>
							</div>
						</div>
					</div>
					<!--第四段结束-->
				</div>
			</div>
		</div>
	</div>
	</div>
	<!--中间内容结束-->
	
	<div class="modal fade" id="AlertModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="top:30%;">
   	 <div class="modal-dialog">
      <div class="modal-content" style="margin-top:50px;">
         <div class="modal-header alert-warning" id="modal-backColor">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title text-center" id="AlertModalLabel"> 麦浩斯温馨提示</h4>
         </div>
      </div>
	 </div>
	</div>

	<%@ include file="footer.jsp" %>

	<script type="text/javascript">
		function addAddressBtn (str){
			var nextIndex=parseInt( $("#usercenter-tableinfo  tr").size()  )+1 ;
			var _id="commonAddress"+nextIndex;
			var _trid='#'+str;
			var commonDistrict="commondistrict"+nextIndex;
			var commonStreet="commonstreet"+nextIndex;
			var commonAddress="userCommonAddress"+nextIndex;
			var obj=$('<tr id="'+_id+'"><td></td><td><select class="usercenter-select" id="'+commonDistrict+'"></select> <select class="usercenter-select"  id="'+commonStreet+'"> </select> <input type="text"  name="userCommonAddress" id="'+commonAddress+'" value="详细地址" /><a class="btn btn-default usercenter-addButton delBtn" href="javascript:delAddressBtn('+nextIndex+')">删除</a></td></tr>');
			$("#usercenter-tableinfo").find(_trid).after(obj);
			//获取市区信息
			$.post("district_citySelect.action", function(data) {
				for (var i = 0; i < data.length; i++) {
					$('#'+commonDistrict).append(
							'<option value='+data[i].district+'>'
									+ data[i].district + '</option>');
				}
				for (var j = 0; j < data[0].street.length; j++) {
					$('#'+commonStreet).append(
							'<option value='+data[0].street[j]+'>'
									+ data[0].street[j] + '</option>');
				}
			}, "json");
			
			$('#'+commonDistrict).change(function(){
				jQuery.getStreet('#'+commonStreet,'#'+commonDistrict);
			});
	
		}
		function delAddressBtn( size){  
		      //删除  
		      var _id="commonAddress"+size;
		      $("#usercenter-tableinfo tr").eq(_id).hide();  
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

			//获取用户的订单信息
			$.post("userOrder_order.action", function(data) {
				var ordersByDealingLength=data.ordersByDealing.length;
				var ordersByDealedLength=data.ordersByDealed.length;
				var ordersNoEvaluationLength=data.ordersNoEvaluation.length;
				var allOrderLength=ordersByDealingLength+ordersByDealedLength+ordersNoEvaluationLength;
				//alert("allOrderLength:"+allOrderLength);
				var allOrderObj=$("#allOrder");
				if(allOrderLength>0){
					//所有订单显示
					//进行中 的订单
					var carryOrderObj=$("#carryOrder");
					//已完成单显示
					var doneOrderObj=$("#doneOrder");
					//待评价 的订单
					var evaluateOrderObj=$("#evaluateOrder");
					
					
					//首先拼接进行中的
					if(ordersByDealingLength>0){
						for (var i = 0; i <ordersByDealingLength ; i++) {
							var carryOrderObjAppend='<table class="table table-hover  userOrderTable" style="margin-top: 40px;"><thead><tr style="background-color: #f5f5f5;"><th>工号</th><th>工匠</th><th>下单时间</th><th>服务地址</th><th>交易金额</th><th>服务状态</th><th>交易操作</th></tr></thead><tbody><tr class="info"><td style="vertical-align: middle">'+data.ordersByDealing[i].workertbId+'</td><td><div class="media"><a class="pull-left mediaWidth" href="#"> <img class="media-object img-responsive img-circle" width="70px" height="90px" src="image/worker/'+data.ordersByDealing[i].worker.workertbPhoto+'" alt="工匠头像"/></a><div class="media-body mediaWidth"><p class="media-heading">'+data.ordersByDealing[i].workertbName+'</p><span class="media-laborInfo" style="font-size: 14px;">'+data.ordersByDealing[i].worker.workertbScop+'</span></div></div></td><td style="vertical-align: middle">'+data.ordersByDealing[i].ordertbStarttime+'</td><td style="vertical-align: middle">衡阳市蒸湘区</td><td style="vertical-align: middle">'+data.ordersByDealing[i].ordertbMoney+'</td><td style="vertical-align: middle">进行中</td><td style="vertical-align: middle"><button class="btn btn-info disabled" onclick="toEvaluate('+data.ordersNoEvaluation[i].workertbId+','+data.ordersNoEvaluation[i].ordertbId+')">评价</button></td></tr></tbody></table>';
							carryOrderObj.append(carryOrderObjAppend);
							allOrderObj.append(carryOrderObjAppend);
						}
					}else{
						carryOrderObj.append("<h4>没有进行中的订单~~~赶紧去下单吧~~</h4>");
					}
					
					//然后拼接已完成的
					if(ordersByDealedLength>0){
						for (var i = 0; i <ordersByDealedLength ; i++) {
							var doneOrderObjAppend='<table class="table table-hover  userOrderTable" style="margin-top: 40px;"><thead><tr style="background-color: #f5f5f5;"><th>工号</th><th>工匠</th><th>下单时间</th><th>服务地址</th><th>交易金额</th><th>服务状态</th><th>交易操作</th></tr></thead><tbody><tr class="success"><td style="vertical-align: middle">'+data.ordersByDealed[i].workertbId+'</td><td><div class="media"><a class="pull-left mediaWidth" href="#"> <img class="media-object img-responsive img-circle" width="70px" height="90px" src="image/worker/'+data.ordersByDealed[i].worker.workertbPhoto+'" alt="工匠头像"/></a><div class="media-body mediaWidth"><p class="media-heading">'+data.ordersByDealed[i].workertbName+'</p><span class="media-laborInfo" style="font-size: 14px;">'+data.ordersByDealed[i].worker.workertbScop+'</span></div></div></td><td style="vertical-align: middle">'+data.ordersByDealed[i].ordertbStarttime+'</td><td style="vertical-align: middle">衡阳市蒸湘区</td><td style="vertical-align: middle">'+data.ordersByDealed[i].ordertbMoney+'</td><td style="vertical-align: middle">进行中</td><td style="vertical-align: middle"><button class="btn btn-info disabled" onclick="toEvaluate('+data.ordersNoEvaluation[i].workertbId+','+data.ordersNoEvaluation[i].ordertbId+')">评价</button></td></tr></tbody></table>';
							doneOrderObj.append(doneOrderObjAppend);
							allOrderObj.append(doneOrderObjAppend);
						}
					}else{
						doneOrderObj.append("<h4>没有已完成的订单~~~赶紧去下单吧~~</h4>");
					}
					
					//然后拼接带评价的
					if(ordersNoEvaluationLength>0){
						for (var i = 0; i <ordersNoEvaluationLength ; i++) {
							var evaluateOrderObjAppend='<table class="table table-hover userOrderTable" style="margin-top: 40px;"><thead><tr style="background-color: #f5f5f5;"><th>工号</th><th>工匠</th><th>下单时间</th><th>服务地址</th><th>交易金额</th><th>服务状态</th><th>交易操作</th></tr></thead><tbody><tr class="warning"><td style="vertical-align: middle">'+data.ordersNoEvaluation[i].workertbId+'</td><td><div class="media"><a class="pull-left mediaWidth" href="#"> <img class="media-object img-responsive img-circle" width="70px" height="90px" src="image/worker/'+data.ordersNoEvaluation[i].worker.workertbPhoto+'" alt="工匠头像"/></a><div class="media-body mediaWidth"><p class="media-heading">'+data.ordersNoEvaluation[i].workertbName+'</p><span class="media-laborInfo" style="font-size: 14px;">'+data.ordersNoEvaluation[i].worker.workertbScop+'</span></div></div></td><td style="vertical-align: middle">'+data.ordersNoEvaluation[i].ordertbStarttime+'</td><td style="vertical-align: middle">衡阳市蒸湘区</td><td style="vertical-align: middle">'+data.ordersNoEvaluation[i].ordertbMoney+'</td><td style="vertical-align: middle">进行中</td><td style="vertical-align: middle"><button class="btn btn-info" onclick="toEvaluate('+data.ordersNoEvaluation[i].workertbId+','+data.ordersNoEvaluation[i].ordertbId+')">评价</button></td></tr></tbody></table>';
							evaluateOrderObj.append(evaluateOrderObjAppend);
							allOrderObj.append(evaluateOrderObjAppend);
						}
					}else{
						evaluateOrderObj.append("<h4>没有已完成的订单~~~赶紧去下单吧~~</h4>");
					}
					
				}else{
					allOrderObj.append("还没有在 麦浩斯下单呢~~~");
				}
				
				
			}, "json");

			//获取市区信息
			$.post("district_citySelect.action", function(data) {
				for (var i = 0; i < data.length; i++) {
					$("#district").append(
							'<option value='+data[i].district+'>'
									+ data[i].district + '</option>');
					$("#commondistrict9").append(
							'<option value='+data[i].district+'>'
									+ data[i].district + '</option>');
				}
				for (var j = 0; j < data[0].street.length; j++) {
					$("#street").append(
							'<option value='+data[0].street[j]+'>'
									+ data[0].street[j] + '</option>');
					$("#commonstreet9").append(
							'<option value='+data[0].street[j]+'>'
									+ data[0].street[j] + '</option>');
				}
			}, "json");
			
			//获取用户的地址
			$.post("addressList_userInfo.action", function(data) {
				if(data.code==1){
					var length=data.obj.length-1;
					var add=data.obj[length].useraddresstbAddress.substring(1);
					var address=add.split("mhs");
					$("#district option:contains('"+address[0]+"')").attr("selected","selected");
					jQuery.getStreet('#street','#district');
					$("#street option:contains('"+address[1]+"')").attr("selected","selected");
					$("#userAddress").val(address[2]);
				}
			}, "json");
			

		});
	</script>
	<script type="text/javascript">
		
		//评价 绑定函数
		function toEvaluate(str,orderid){
			alert("对 "+str +"号工匠的评价,当前订单号为："+orderid);
			//把当前要评价的订单号存入cookie中，
			document.cookie="orderid="+orderid;
			 $.post("getWorkerInfo_worker.action", { "workerId": str },
					   function(data){
					    
					     window.location.href = "to_laborComment.action";
					   }, "json"); 
		}
		
		//上传图片
		function doUpload() {
			var formData = new FormData($("#uploadForm")[0]);
			$.ajax({
						url : 'uploadimg_upload.action',
						type : 'POST',
						data : formData,
						async : false,
						cache : false,
						contentType : false,
						processData : false,
						success : function(data) {
							if (data.code == 1) {
								$("#modal-backColor").removeClass("alert-warning").addClass("alert-success");
								$("#AlertModalLabel").html("上传成功："+data.message);
								$("#AlertModal").modal('toggle');
								$("#usertbHeadpic").val(data.message);
								$("#userheadImg").attr("src",data.message);
							}
						},
						error : function(returndata) {
							alert(returndata);
						}
					});
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
</script>

</body>
</html>