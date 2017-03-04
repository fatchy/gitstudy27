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

	<table id="workerdg"></table>
	<div id="workerdd" class="easyui-dialog" title="添加工人"
		style="width: 600px; height: 500px;"
		data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true">
		<!-- enctype 默认是 application/x-www-form-urlencoded -->
		<br /> <br />
		<form id="ff">
			<table cellpadding="5">
				<div style="display: none">
					<input id="workertbId" name="worker.workertbId" type="text" />
				</div>
				<tr>
					<td>姓名:</td>
					<td><input id="workertbName" type="text"
						name="worker.workertbName"></input></td>
					<td>工种:</td>
					<td><select id="typeselect" name="worker.workertypetbId">
							<option>请选择</option>
					</select></td>
				</tr>
				<tr>
					<td>联系电话:</td>
					<td><input id="workertbCellphone" type="text"
						name="worker.workertbCellphone"></input></td>
					<td>工作年限:</td>
					<td><input id="workertbExtime" type="text"
						name="worker.workertbExtime"></input></td>
				</tr>
				<tr>
					<td>性别:</td>
					<td><select id="workertypetbSex" name="worker.workertypetbSex"><option
								value="男">男</option>
							<option value="女">女</option></select></td>
				</tr>


				<tr>
					<td>工人简介:</td>
					<td><textarea id="workertbSummary"
							name="worker.workertbSummary" data-options="multiline:true"
							style="height: 60px;"></textarea></td>
					<td>业务范围:</td>
					<td><textarea id="workertbScop" name="worker.workertbScop"
							style="height: 60px"></textarea></td>
				</tr>
				<tr>
					<td>常驻地址:</td>
					<td><textarea id="workertbCadress"
							name="worker.workertbCadress" style="height: 60px"></textarea></td>
				</tr>
				<tr>
					<td>图片路径:</td>
					<td><input id="savepath" type="text"
						name="worker.workertbPhoto" readonly="readonly"></input></td>
				</tr>
			</table>
		</form>
		<form id="uploadForm">

			<tr>
				<td>工人头像： <input type="file" name="myFile" /><input
					type="button" value="上传" onclick="doUpload()" />
				</td>
			</tr>
		</form>
		<br />
		<div id="uploadtd"></div>

		<div id="insertbutton" style="text-align: center; padding: 5px">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm('insert_worker.action')">提交</a> <a
				href="javascript:void(0)" class="easyui-linkbutton"
				onclick="clearForm()">清除</a>
		</div>
		<div id="updatebutton" style="text-align: center; padding: 5px">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm('update_worker.action')">提交</a> <a
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
								alert("上传成功");
								$("#savepath").val(data.message);
								$('#uplimg').remove();
								$("#uploadtd")
										.append(
												"<img id='uplimg' src='"+data.message+"'style='width:100px;height:100px;'/>");

							}else{
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
			showWorktype();
			datagrid = $("#workerdg")
					.edatagrid(
							{
								url : "list_worker.action",//查询时加载的URL
								destroyUrl : "delete_worker.action",
								idField : "workertbId", ///标识、会记录我们选中项的id、不一定是id、通常使用主键
								pagination : true,//显示分页
								pageSize : 24,//分页大小
								pageList : [ 5, 10, 15, 20, 24, 25, 30, 35, 40,
										45, 50 ],//每页的分页数
								fit : true,//自动补全
								fitColumns : true,
								iconCls : "icon-save",//图标
								rownumbers : true,//行号     最左边显示行号
								height : 50,
								title : "工人管理",
								nowrap : false,//表格中的文字可以换行、默认是false、不能换行、这样在文字很多的时候就看不到全部：使用真实的数据去测试
								sortName : 'workertbId',//设置默认排序时的 字段（必须是field中的一个字段）
								sortOrder : 'asc',//是按照升序还是降序排序 但是仅仅添加这两个字段并不会自动排序、这样写的意义就是前台会自动的向后台传递两个参数：sort order,我们可以在后台查询记录的时候进行排序
								columns : [ [ //每个列具体内容
								{
									field : 'workertbId',
									title : '工人编号',
									width : 10,
									hidden : true,
								}, {
									field : 'workertbName',
									title : '姓名',
									width : 20,

								}, {
									field : 'workertypetbSex',
									title : '性别',
									width : 10,

								}, {
									field : 'workertbCellphone',
									title : '联系电话',
									width : 20,

								}, {
									field : 'workertypetbId',
									title : '工种编号',
									width : 10,
									hidden : true,
								}, {
									field : 'workertypetbName',
									title : '工种名',
									width : 20,
								},

								{
									field : 'workertbExtime',
									title : '工龄',
									width : 20,
								}, {
									field : 'workertbCadress',
									title : '常驻地址',
									width : 50,

								}, {
									field : 'workertbScop',
									title : '业务范围',
									width : 50,

								} ] ],
								toolbar : [
										{
											text : '增加',
											iconCls : 'icon-add',
											handler : function() {
												$('#ff').form('clear');
												$('#uplimg').remove();

												$('#workerdd').dialog('open')
														.dialog('setTitle',
																'添加工人');
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
												$('#ff').form('clear');
												$('#uplimg').remove();
												showdetail();
												$("#insertbutton").hide();
												$("#updatebutton").show();
												$('#workerdd').dialog('open')
														.dialog('setTitle',
																'修改工人信息');

											}
										}, '-', ]

							});
		});
	</script>

	<script>
		function submitForm(url) {
			$.post(url, $("#ff").serialize(), function(data) {
				if (data.code == 1) {
					alert(data.message);
					$('#ff').form('clear');
					$('#uplimg').remove();
					$('#workerdd').dialog('close');
					$('#workerdg').datagrid('reload');
				} else {
					alert(data.message);
				}
			});
		}
		function clearForm() {
			$('#ff').form('clear');
			$('#uplimg').remove();

		}
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
		function showdetail() {
			var row = $('#workerdg').datagrid('getSelected');
			$("#workertbId").val(row.workertbId);
			$("#workertbName").val(row.workertbName);
			$("#typeselect").val(row.workertypetbId);
			$("#workertbCellphone").val(row.workertbCellphone);
			$("#workertbExtime").val(row.workertbExtime);
			$("#workertypetbSex").val(row.workertypetbSex);
			$("#workertbSummary").val(row.workertbSummary);
			$("#workertbScop").val(row.workertbScop);
			$("#workertbCadress").val(row.workertbCadress);
			$("#savepath").val(row.workertbPhoto);

		}
		function deleteRecord() {
			var row = $('#workerdg').datagrid('getSelected');
			if (confirm("你确定要删除？")) {
				$.post("delete_worker.action", "id=" + row.workertbId,
						function(data) {
							if (data.code == 1) {
								alert(data.message);
								$('#ff').form('clear');
								$('#uplimg').remove();
								$('#workerdd').dialog('close');
								$('#workerdg').datagrid('reload');
							} else {
								alert(data.message);
							}
						});
			}

		}
	</script>

</body>
</html>