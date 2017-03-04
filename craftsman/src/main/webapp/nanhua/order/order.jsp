<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Basic DataGrid - jQuery EasyUI Demo</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/demo/demo.css">
<link rel='stylesheet' type='text/css' href="nanhua/css/orderpanel.css" />
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/jquery.edatagrid.js"></script>
</head>
<body>

	<table id="orderdg"></table>
	<div id="orderdd" class="easyui-dialog" title="订单详情"
		style="width: 600px; height: 500px;"
		data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true">
		<!-- enctype 默认是 application/x-www-form-urlencoded -->
		<br /> <br />
		<form id="ff">

			<table id="detailtb" cellpadding="5">
				<tr class='detailtr1'>
					<td>订单状态:</td>
					<td><select class="orderstate" name="ordertbStatus">
							<option value="1">未处理</option>
							<option value="2">已处理</option>
							<option value="3">正在进行</option>
							<option value="4">已完成</option>
							<option value="5">已冻结</option>
							<option value="6">正在退单</option>
							<option value="7">已删除</option>
					</select></td>
					<td>支付方式:</td>

					<td><select class="payment">
							<option value="1">线下交易</option>
							<option value="2">支付宝</option>
							<option value="3">微信</option>
					</select></td>


				</tr>
				<tr class='detailtr1'>
					<td>评论状态:</td>
					<td><select id="ordertbEvalstate">
							<option value="1">未评论</option>
							<option value="2">已评论</option>
					</select></td>
					<td>付款状态:</td>

					<td><select id="ordertbPaystatus">
							<option value="1">未付款</option>
							<option value="2">已付款</option>
							<option value="3">退款中</option>
							<option value="4">已退款</option>
					</select></td>


				</tr>
				<tr>
					<td>工人姓名:</td>
					<td><input id="workername" readonly='readonly'></input></td>
					<td>工人联系电话:</td>
					<td><input id="cellphone" readonly='readonly'></input></td>
				</tr>
			</table>




		</form>

		<br />

		<div style="text-align: center; padding: 5px">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm()">提交</a> <a href="javascript:void(0)"
				class="easyui-linkbutton" onclick="clearForm()">清除</a>
		</div>
	</div>
	<script type="text/javascript">
		var datagrid;
		var rowEditor = undefined; //用于存放当前要编辑的行
		$(function() {
			datagrid = $("#orderdg")
					.edatagrid(
							{
								url : "list_orderback.action",//查询时加载的URL
								saveUrl : "",
								updateUrl : "",
								destroyUrl : "",
								idField : "ordertbId", ///标识、会记录我们选中项的id、不一定是id、通常使用主键
								pagination : true,//显示分页
								pageSize : 24,//分页大小
								pageList : [ 5, 10, 15, 20, 24, 25, 30, 35, 40,
										45, 50 ],//每页的分页数
								fit : true,//自动补全
								fitColumns : true,
								iconCls : "icon-save",//图标
								rownumbers : true,//行号     最左边显示行号
								height : 50,
								title : "订单管理",
								nowrap : false,//表格中的文字可以换行、默认是false、不能换行、这样在文字很多的时候就看不到全部：使用真实的数据去测试
								sortName : 'ordertbStarttime',//设置默认排序时的 字段（必须是field中的一个字段）
								sortOrder : 'desc',//是按照升序还是降序排序 但是仅仅添加这两个字段并不会自动排序、这样写的意义就是前台会自动的向后台传递两个参数：sort order,我们可以在后台查询记录的时候进行排序
								columns : [ [ //每个列具体内容
								{
									field : 'ordertbId',
									title : '订单编号',
									width : 10,
									hidden : true,
								}, {
									field : 'workertbId',
									title : '工人编号',
									width : 10,
									hidden : true,
								}, {
									field : 'workertbName',
									title : '工人姓名',
									width : 20,
								}, {
									field : 'usertbId',
									title : '用户编号',
									width : 10,
									hidden : true,

								}, {
									field : 'usertbName',
									title : '用户',
									width : 20,

								}, {
									field : 'ordertbStatus',
									title : '订单状态',
									width : 10,
									formatter : function(value, row, index) {
										if (value == 1) {
											return "未处理";
										} else if (value == 2) {
											return "已处理";
										} else if (value == 3) {
											return "正在进行";
										} else if (value == 4) {
											return "已完成";
										} else if (value == 5) {
											return "已冻结";
										} else if (value == 6) {
											return "正在退单";
										} else if (value == 7) {
											return "已删除";
										}

									}

								}, {
									field : 'ordertbMoney',
									title : '订单金额',
									width : 20,
								}, {
									field : 'ordertbPayment',
									title : '支付方式',
									width : 10,
									formatter : function(value, row, index) {
										if (value == 1) {
											return "线下交易"
										} else if (value == 2) {
											return "支付宝"
										} else if (value == 3) {
											return "微信"
										}
									},
								}, {
									field : 'ordertbPaystatus',
									title : '付款状态',
									width : 10,
									formatter : function(value, row, index) {
										if (value == 0 || value == 1) {
											return "未付款";
										} else if (value == 2) {
											return "已付款";
										} else if (value == 3) {
											return "退款中";
										} else if (value == 4) {
											return "已退款";
										} else {
											return "无状态";
										}
									}
								}, {
									field : 'ordertbEvalstate',
									title : '评价状态',
									width : 10,
									formatter : function(value, row, index) {
										if (value == 1 || value == 0) {
											return "未评价";
										} else if (value == 2) {
											return "已评价";
										} else {
											return "无状态";
										}
									}
								},

								{
									field : 'ordertbStarttime',
									title : '开始时间',
									width : 20,
								}, {
									field : 'ordertbEndtime',
									title : '结束时间',
									width : 50,
								} ] ],
								toolbar : [
										{
											text : '详情',
											iconCls : 'icon-add',
											handler : function() {
												showdetail();
												$('#orderdd').dialog('open')
														.dialog('setTitle',
																'订单详情');
												

											}
										},
										'-',
										{
											text : '删除',
											iconCls : 'icon-remove',
											handler : function() {
												deleteRecord();
											}
										}

								]

							});

		});
	</script>

	<script type="text/javascript">
		function showdetail() {
			var row = $('#orderdg').datagrid('getSelected');
			$('.detailtr').remove();

			$
					.post(
							"findbyid_orderback.action",
							{
								"ordertbId" : row.ordertbId
							},
							function(data) {

								$(".orderstate").val(data.order.ordertbStatus);
								$(".payment").val(data.order.ordertbPayment);
								$("#workername").val(data.worker.workertbName);
								$("#cellphone").val(
										data.worker.workertbCellphone);
								$("#ordertbEvalstate").val(
										data.order.ordertbEvalstate);
								$("#ordertbPaystatus").val(
										data.order.ordertbPaystatus);
								$("#detailtb")
										.append(
												"<tr class='detailtr'><td>订单编号:</td><td><input class='easyui-textbox' type='text' name='ordertbId'  value='"+data.order.ordertbId+"' readonly='readonly' data-options='required:true'></input></td>"
														+ "<td>下单用户:</td><td><input class='easyui-textbox' type='text'   value='"+data.order.usertbName+"' readonly='readonly' data-options='required:true'></input></td></tr>"

										);

								for (var i = 0; i < data.item.length; i++) {
									$("#detailtb")
											.append(
													"<tr class='detailtr'><td>"
															+ data.item[i].orderitemtbName
															+ ":</td><td><input class='easyui-textbox' type='text'   value='"+data.item[i].orderitemtbContent+"' readonly='readonly' data-options='required:true'></input></td></tr>"

											);
								}

							});
		}

		function submitForm() {
			$.post("update_orderback.action", $("#ff").serialize(), function(
					data) {
				if (data.code == 1) {
					alert(data.message);
					$('#ff').form('clear');
					$('#orderdd').dialog('close');
					$('#orderdg').datagrid(
					'reload');
				} else {
					alert(data.message);
				}

			});
		}
		function clearForm() {
			$('#ff').form('clear');
			$('#uplimg').remove();
		}
		function deleteRecord() {
			var row = $('#orderdg').datagrid('getSelected');
			if (confirm("你确定要删除？")) {
				$.post("delete_orderback.action", "id=" + row.ordertbId,
						function(data) {
							if (data.code == 1) {
								alert(data.message);
								$('#ff').form('clear');
						
								$('#orderdg').datagrid('reload');
							} else {
								alert(data.message);
							}
						});
			}

		}
	</script>

</body>
</html>