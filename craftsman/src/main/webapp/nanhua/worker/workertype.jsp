
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

	<table id="workertypedg"></table>
	<div id="workertypedd" class="easyui-dialog" title="添加工种"
		style="width: 600px; height: 500px;"
		data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true">
		<!-- enctype 默认是 application/x-www-form-urlencoded -->
		<br /> <br />
		<form id="workertypeddff">
			<table cellpadding="5">
				<div style="display: none">
					<input id="workertypetbId" name="workerType.workertypetbId"
						type="text" />
				</div>
				<tr>
					<td>工种名:</td>
					<td><input id="workertypetbName" type="text"
						name="workerType.workertypetbName"></input></td>

				</tr>



				<tr>
					<td>工种简介:</td>
					<td><textarea id="workertypetbSummary"
							name="workerType.workertypetbSummary" style="height: 60px;"></textarea></td>

				</tr>

				<tr>
					<td>图片路径:</td>
					<td><input id="savepath" type="text"
						name="workerType.workertypetbPic" readonly="readonly"></input></td>
				</tr>
			</table>
		</form>
		<form id="uploadForm">

			<tr>
				<td>工种图片： <input type="file" name="myFile" /><input
					type="button" value="上传" onclick="doUpload()" />
				</td>
			</tr>
		</form>
		<br />
		<div id="uploadtd"></div>


		<div id="insertbutton" style="text-align: center; padding: 5px">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm('insert_workertype.action')">提交</a> <a
				href="javascript:void(0)" class="easyui-linkbutton"
				onclick="clearForm()">清除</a>
		</div>
		<div id="updatebutton" style="text-align: center; padding: 5px">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm('update_workertype.action')">提交</a> <a
				href="javascript:void(0)" class="easyui-linkbutton"
				onclick="clearForm()">清除</a>
		</div>
	</div>
	<script type="text/javascript">
		//上传图片
		function doUpload() {
			var formData = new FormData($("#uploadForm")[0]);
			$
					.ajax({
						url : 'uploadimg_upload.action',
						type : 'POST',
						data : formData,
						async : false,
						cache : false,
						contentType : false,
						processData : false,
						success : function(data) {
							if (data.code == 1) {
								$('#uplimg').remove();
								alert("上传成功");
								$("#savepath").val(data.message);
								$("#uploadtd")
										.append(
												"<img id='uplimg' src='"+data.message+"'style='width:100px;height:100px;'/>");

							} else {
								alert(data.message);
							}
						},
						error : function(returndata) {
							alert(returndata);
						}
					});
		}
	</script>


	<script type="text/javascript">
		var datagrid;
		var rowEditor = undefined; //用于存放当前要编辑的行
		$(function() {
			datagrid = $("#workertypedg")
					.edatagrid(
							{
								url : "listPagination_workertype.action",//查询时加载的URL
								saveUrl : "",
								updateUrl : "",
								destroyUrl : "delete_workertype.action",
								idField : "workertypetbId", ///标识、会记录我们选中项的id、不一定是id、通常使用主键
								pagination : true,//显示分页
								pageSize : 24,//分页大小
								pageList : [ 5, 10, 15, 20, 24, 25, 30, 35, 40,
										45, 50 ],//每页的分页数
								fit : true,//自动补全
								fitColumns : true,
								iconCls : "icon-save",//图标
								rownumbers : true,//行号     最左边显示行号
								height : 50,
								title : "工种管理",
								nowrap : false,//表格中的文字可以换行、默认是false、不能换行、这样在文字很多的时候就看不到全部：使用真实的数据去测试
								sortName : 'workertypetbId',//设置默认排序时的 字段（必须是field中的一个字段）
								sortOrder : 'asc',//是按照升序还是降序排序 但是仅仅添加这两个字段并不会自动排序、这样写的意义就是前台会自动的向后台传递两个参数：sort order,我们可以在后台查询记录的时候进行排序
								columns : [ [ //每个列具体内容
								{
									field : 'workertypetbId',
									title : '工种编号',
									width : 10,
								}, {
									field : 'workertypetbName',
									title : '工种名',
									width : 10,
									editor : {
										type : 'validatebox',
										options : {
											required : true
										}
									}
								}, {
									field : 'workertypetbSummary',
									title : '工种简介',
									width : 10,
									editor : {
										type : 'validatebox',
										options : {
											required : true
										}
									}
								}, {
									field : 'workertypetbPic',
									title : '图片路径',
									width : 20,
									hidden : true,

								}, {
									field : 'option',
									title : '操作',
									width : 20,
									hidden : true,

								} ] ],
								toolbar : [
										{
											text : '增加',
											iconCls : 'icon-add',
											handler : function() {
												clearForm();
												$('#uplimg').remove();
												$('#workertypedd').dialog(
														'open').dialog(
														'setTitle', '添加工种');
												$("#insertbutton").show();
												$("#updatebutton").hide();
											}
										},
										'-',
										{
											text : '删除',
											iconCls : 'icon-remove',
											handler : function() {
												deleteRecord();
											}
										},
										'-',
										{
											text : '修改',
											iconCls : 'icon-save',
											handler : function() {
												clearForm();
												$('#uplimg').remove();
												showdetail();
												$('#workertypedd').dialog(
														'open').dialog(
														'setTitle', '修改');
												$("#insertbutton").hide();
												$("#updatebutton").show();
											}
										}, '-', ]

							});
		});
	</script>
	<script>
		function submitForm(url) {
			$.post(url, $("#workertypeddff").serialize(), function(data) {
				if (data.code == 1) {
					alert(data.message);
					$('#workertypedd').dialog('close');
					$('#workertypedg').datagrid('reload');
				} else {
					alert(data.message);
				}
			});
		}
		function clearForm() {
			$('#uplimg').remove();
			$('#workertypedd').form('clear');
		}
		function showdetail() {
			var row = $('#workertypedg').datagrid('getSelected');
			$("#workertypetbId").val(row.workertypetbId);
			$("#workertypetbName").val(row.workertypetbName);
			$("#workertypetbSummary").val(row.workertypetbSummary);
			$("#savepath").val(row.workertypetbPic);
		}
		function deleteRecord() {
			var row = $('#workertypedg').datagrid('getSelected');
			if (confirm("你确定要删除？")) {
				$.post("delete_workertype.action", "id=" + row.workertypetbId,
						function(data) {
							if (data.code == 1) {
								alert(data.message);
								$('#workertypedg').datagrid('reload');
							} else {
								alert(data.message);
							}
						});
			}

		}
	</script>

</body>
</html>