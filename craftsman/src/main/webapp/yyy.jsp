<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'yyy.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" href="js/easyui/themes/icon.css"
			type="text/css" media="screen" />
		<link rel="stylesheet"
			href="js/easyui/themes/bootstrap/easyui.css" type="text/css"
			media="screen" />

	</head>

	<body>
		<div id="index_loginDialog" style="top:1px" class="easyui-dialog"
			data-options="title:'管理员登录',modal:true,closable:false,resizable:false,draggable:true,
		buttons:[{
				text:'登录',
				handler:function(){
					$('#index_loginForm').submit();
				}
			}]
		">
			<form id="index_loginForm" method="post" >
				<table style="padding: 10px; margin: 10px">
					<tr>
						<th>
							用户名:
						</th>
						<td>
							<input type="text" id="adminname" name="adminname"
								class="easyui-validatebox" data-options="required:true" />
						</td>
					</tr>
					<tr>
						<th>
							密码:
						</th>
						<td>
							<input type="password" id="adminpwd" name="adminpwd"
								class="easyui-validatebox" data-options="required:true" />
						</td>
					</tr>
					<tr>
						<th>
							验证码:
						</th>
						<td>
							<input type="text" id="valCode" name="valCode"
								class="easyui-validatebox" data-options="required:true" />
							<img src="code.jsp" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>


<script type="text/javascript" src="js/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="js/easyui/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
	//页面初始化完毕后完成的操作
	$(function() {
		//要让验证码的文本框获取焦点
		$("#adminname").focus();
		//表单action参数,  onSubmit， success等的操作初始化
		$("#index_loginForm").form(   {
			url:'${basePath}yyyadmin_login.action',
			success: function(data){
				//  handler json data.  
				//1.   var obj=eval(   '('+data+')');   =>  
				// 2.  $.parseJSON( data);   传入一个畸形的JSON字符串会抛出一个异常
				var obj=$.parseJSON(   data);
				if(  obj.code==1 ){
					location.href="${basePath}yyyback/backmain.jsp";
				}else{
					$.messager.show({
						title:'login failed',
						msg:obj.msg,
						timeout:5000,
						showType:'slide'
					});
				}
				
			}
			});

	});
</script>

