<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>影院售票系统</title>
<link type="text/css" rel="stylesheet" href="js/easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="js/easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="css/list.css">
<script type="text/javascript" src="js/easyui/themes/jquery.min.js"></script>
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript" src="js/list.js"></script>
</head>
<body>
	<div id="filmDiv">
		<table id="fileTable"></table>
	</div>
	
		<form id="queryForm">
			<fieldset>
				<legend>电影查询</legend>
			<table align="center">
				<tr>
					<td>电影名称：</td>
					<td><input type="text" name="filmname"></td>
					<td>电影类型：</td>
					<td><select name="typeid"><option value="0">--选择电影类型--</option></select></td>
					
				</tr>
				<tr>
					<td>演员：</td>
					<td><input type="text" name="actor"></td>
					<td>导演:</td>
					<td><input type="text" name="director"></td>
				</tr>
				<tr>
					<td>票价：</td>
					<td><input type="text" name="minPrice"></td>
					<td>至</td>
					<td><input type="text" name="maxPrice"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td align="right"><input type="button" value="提交" onclick="queryBtn()" ></td>
				</tr>
			</table>
			</fieldset>
		</form>
	
</body>
</html>