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
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/jquery.edatagrid.js"></script>
</head>
<body>

	<table id="workerpricedg"></table>
	<div id="workerpricedd" class="easyui-dialog" title="添加价格"
		style="width: 400px; height: 250px;"
		data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true">
		<!-- enctype 默认是 application/x-www-form-urlencoded -->
		<br /> <br />
		<form id="ff">
			<table cellpadding="5">
				<div style="display: none">
					<input id="workpricetbId" name="workprice.workpricetbId"
						type="text" />
				</div>
				<tr>
					<td>工作项目:</td>
					<td><input id="workpricetbName" type="text"
						name="workprice.workpricetbName"></input></td>
					<td>工种:</td>
					<td><select id="typeselect" name="workprice.workertypetbId">
					</select></td>
				</tr>

				<tr>
					<td>价格一:</td>
					<td><input id="workpricetbPriceone" type="text"
						name="workprice.workpricetbPriceone"></input></td>

				</tr>
				<tr>
					<td>价格二:</td>
					<td><input id="workpricetbPricetwo" type="text"
						name="workprice.workpricetbPricetwo"></input></td>
				</tr>

			</table>
		</form>



		<div id="insertbutton" style="text-align: center; padding: 5px">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm('insert_workerPriceback.action')">提交</a> <a href="javascript:void(0)"
				class="easyui-linkbutton" onclick="clearForm()">清除</a>
		</div>
		<div id="updatebutton" style="text-align: center; padding: 5px">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm('update_workerPriceback.action')">提交</a> <a href="javascript:void(0)"
				class="easyui-linkbutton" onclick="clearForm()">清除</a>
		</div>
	</div>



	<script type="text/javascript">
		var datagrid;
		var rowEditor = undefined; //用于存放当前要编辑的行
		$(function() {
			showWorktype();
			datagrid = $("#workerpricedg")
					.edatagrid(
							{
								url : "list_workerPriceback.action",//查询时加载的URL
								saveUrl : "",
								updateUrl : "",
								destroyUrl : "delete_workerPriceback.action",
								idField : "workpricetbId", ///标识、会记录我们选中项的id、不一定是id、通常使用主键
								pagination : true,//显示分页
								pageSize : 24,//分页大小
								pageList : [ 5, 10, 15, 20, 24, 25, 30, 35, 40,
										45, 50 ],//每页的分页数
								fit : true,//自动补全
								fitColumns : true,
								iconCls : "icon-save",//图标
								rownumbers : true,//行号     最左边显示行号
								height : 50,
								title : "工作价格管理",
								nowrap : false,//表格中的文字可以换行、默认是false、不能换行、这样在文字很多的时候就看不到全部：使用真实的数据去测试
								sortName : 'workertbId',//设置默认排序时的 字段（必须是field中的一个字段）
								sortOrder : 'asc',//是按照升序还是降序排序 但是仅仅添加这两个字段并不会自动排序、这样写的意义就是前台会自动的向后台传递两个参数：sort order,我们可以在后台查询记录的时候进行排序
								columns : [ [ //每个列具体内容

								{
									field : 'workpricetbId',
									title : '价格编号',
									width : 10,
									hidden : true,
								}, {
									field : 'workertypetbId',
									title : '工种编号',
									width : 10,
									hidden : true,
								}, {
									field : 'workertypetbName',
									title : '工种名',
									width : 20,
									editor : {
										type : 'validatebox',
										options : {
											required : true
										}
									}
								}, {
									field : 'workpricetbName',
									title : '工作项目',
									width : 10,
									editor : {
										type : 'validatebox',
										options : {
											required : true
										}
									}
								}, {
									field : 'workpricetbPriceone',
									title : '价格一',
									width : 20,
									editor : {
										type : 'validatebox',
										options : {
											required : true
										}
									}
								}, {
									field : 'workpricetbPricetwo',
									title : '价格二',
									width : 10,
									editor : {
										type : 'validatebox',
										options : {
											required : true
										}
									}

								} ] ],
								toolbar : [
										{
											text : '增加',
											iconCls : 'icon-add',
											handler : function() {
												$('#ff').form('clear');

												$('#workerpricedd').dialog(
														'open').dialog(
														'setTitle', '添加价格');
												$("#insertbutton").show();
												$("#updatebutton").hide();
											}
										},
										'-',
										{
											text : '删除',
											iconCls : 'icon-remove',
											handler : function() {
												$('#workerpricedg').edatagrid(
														'destroyRow');
											}
										},
										'-',
										{
											text : '修改',
											iconCls : 'icon-save',
											handler : function() {
												$('#ff').form('clear');
												showdetail();
												$("#insertbutton").hide();
												$("#updatebutton").show();
												$('#workerpricedd').dialog(
														'open').dialog(
														'setTitle', '修改价格');

											}
										}, '-', ]

							});
		});

		function showWorktype() {
			$.getJSON("getAll_workertype.action", function(data) {
				$("#typeselect").empty();
				for (var i = 0; i < data.rows.length; i++) {
					$("#typeselect").append(
							"<option value='"+data.rows[i].workertypetbId+"'>"
									+ data.rows[i].workertypetbName
									+ "</option>");
				}

			});
		}
		function submitForm(url) {
			$.post(url, $("#ff").serialize(),
					function(data) {
						if (data.code == 1) {
							alert(data.message);
							$('#workerpricedd').form('clear');
							$('#workerpricedd').dialog('close');
							$('#workerpricedg').datagrid('reload');
						} else {
							alert(data.message);
						}
					});
		}

		function clearForm() {
			$('#ff').form('clear');

		}

		function showdetail() {
			var row = $('#workerpricedg').datagrid('getSelected');
			$("#workpricetbName").val(row.workpricetbName);
			$("#typeselect").val(row.workertypetbId);
			$("#workpricetbPriceone").val(row.workpricetbPriceone);
			$("#workpricetbPricetwo").val(row.workpricetbPricetwo);
			$("#workpricetbId").val(row.workpricetbId);
		}
	</script>

</body>
</html>