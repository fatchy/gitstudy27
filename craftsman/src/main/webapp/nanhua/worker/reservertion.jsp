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

	<table id="reservertiondg"></table>


	<script type="text/javascript">
		var datagrid;
		var rowEditor = undefined; //用于存放当前要编辑的行
		$(function() {
			datagrid = $("#reservertiondg")
					.edatagrid(
							{
								url : "list_reservertion.action",//查询时加载的URL
								saveUrl : "",
								updateUrl : "",
								destroyUrl : "delete_worker.action",
								idField : "reservationtbId", ///标识、会记录我们选中项的id、不一定是id、通常使用主键
								pagination : true,//显示分页
								pageSize : 24,//分页大小
								pageList : [ 5, 10, 15, 20, 24, 25, 30, 35, 40,
										45, 50 ],//每页的分页数
								fit : true,//自动补全
								fitColumns : true,
								iconCls : "icon-save",//图标
								rownumbers : true,//行号     最左边显示行号
								height : 50,
								title : "预约管理",
								nowrap : false,//表格中的文字可以换行、默认是false、不能换行、这样在文字很多的时候就看不到全部：使用真实的数据去测试
								sortName : 'reservationtbId',//设置默认排序时的 字段（必须是field中的一个字段）
								sortOrder : 'asc',//是按照升序还是降序排序 但是仅仅添加这两个字段并不会自动排序、这样写的意义就是前台会自动的向后台传递两个参数：sort order,我们可以在后台查询记录的时候进行排序
								columns : [ [ //每个列具体内容
								{
									field : 'reservationtbId',
									title : '时间编号',
									width : 10,
									hidden : true,
								}, {
									field : 'workertbId',
									title : '工人编号',
									width : 20,
									hidden : true,
								}, {
									field : 'workertbName',
									title : '工人姓名',
									width : 10,
								}, {
									field : 'reservationtbDate',
									title : '预约日期',
									width : 20,
								}, {
									field : 'reservationtbPeriod',
									title : '预约时段',
									width : 10,
								}, {
									field : 'ordertbId',
									title : '订单号',
									width : 20,
									hidden : true,
								}, {
									field : 'ordertbinfo',
									title : '查看订单信息',
									width : 20,

								} ] ],
								toolbar : [
										{
											text : '增加',
											iconCls : 'icon-add',
											handler : function() {

												$('#reservertiondd').dialog(
														'open').dialog(
														'setTitle', '添加工人');
											}
										},
										'-',
										{
											text : '删除',
											iconCls : 'icon-remove',
											handler : function() {
												$('#reservertiondg').edatagrid(
														'destroyRow');
											}
										},
										'-',
										{
											text : '保存',
											iconCls : 'icon-save',
											handler : function() {
												$('#admindg').edatagrid(
														'saveRow');
											}
										},
										'-',
										{
											text : '取消编辑',
											iconCls : 'icon-undo',
											handler : function() {
												$('#admindg').edatagrid(
														'cancelRow');
											}
										} ]

							});
		});
	</script>



</body>
</html>