<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>管理员管理i</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/demo/demo.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/jquery.edatagrid.js"></script>
</head>
<body>

	<table id="admindg">
	</table>


	<script type="text/javascript">
		var datagrid;
		var rowEditor = undefined; //用于存放当前要编辑的行
		$(function() {
			datagrid = $("#admindg").edatagrid({
				url : "",//查询时加载的URL
				saveUrl : "",
				updateUrl : "",
				destroyUrl : "",
				idField : "adminid", ///标识、会记录我们选中项的id、不一定是id、通常使用主键
				pagination : true,//显示分页
				pageSize : 5,//分页大小
				pageList : [ 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 ],//每页的分页数
				fit : true,//自动补全
				fitColumns : true,
				iconCls : "icon-save",//图标
				rownumbers : true,//行号     最左边显示行号
				title : "管理员管理",
				nowrap : false,//表格中的文字可以换行、默认是false、不能换行、这样在文字很多的时候就看不到全部：使用真实的数据去测试
				sortName : 'adminname',//设置默认排序时的 字段（必须是field中的一个字段）
				sortOrder : 'asc',//是按照升序还是降序排序 但是仅仅添加这两个字段并不会自动排序、这样写的意义就是前台会自动的向后台传递两个参数：sort order,我们可以在后台查询记录的时候进行排序
				//以上的四种增删改查的操作，只要失败，都会回调这个onError
				onError : function(index, row, data) {
					$.messager.alert('错误', '操作失败');
				},

				columns : [ [ //每个列具体内容
				{
					field : 'adminid',
					title : '管理员id',
					width : 100,
					hidden : true,

				}, {
					field : 'adminname',
					title : '管理员名',
					width : 100,
					editor : {
						type : 'validatebox',
						options : {
							required : true
						}
					}
				}, {
					field : 'adminpass',
					title : '密码',
					width : 100,
					editor : {
						type : 'validatebox',
						options : {
							required : true
						}
					},
					formatter : function(value, rowData, index) { //value：当前列的值、rowData当前行的值、rowIndex：当前行的索引
						//必须返回一个字符串、用于替换被加formatter的单元格。
						return '******';

					}
				}, {
					field : 'adminmail',
					title : '管理员邮箱',
					width : 100,
					editor : {
						type : 'validatebox',
						options : {
							required : true
						}
					}
				}, {
					field : 'adminregtime',
					title : '注册时间',
					width : 100,

				}, {
					field : 'userstatus',
					title : '是否冻结',
					width : 100,
					editor : {
						type : 'validatebox',
						options : {
							required : true
						}
					},
					formatter : function(value, rowData, index) { //value：当前列的值、rowData当前行的值、rowIndex：当前行的索引
						//必须返回一个字符串、用于替换被加formatter的单元格。
						if (value == 0) {
							return '是';
						}
						return '否';

					}

				} ] ],
				toolbar : [ {
					text : '增加',
					iconCls : 'icon-add',
					handler : function() {
						$('#admindg').edatagrid('addRow');
					}
				}, '-', {
					text : '删除',
					iconCls : 'icon-remove',
					handler : function() {
						$('#admindg').edatagrid('destroyRow')
					}
				}, '-', {
					text : '保存',
					iconCls : 'icon-save',
					handler : function() {
						$('#admindg').edatagrid('saveRow');
					}
				}, '-', {
					text : '取消编辑',
					iconCls : 'icon-undo',
					handler : function() {
						$('#admindg').edatagrid('cancelRow');
					}
				} ]
			});

		});
	</script>

</body>
</html>

