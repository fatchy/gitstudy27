<%@ page language="java" contentType="text/html; charset=gb2312"  
    pageEncoding="gb2312"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  
 "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">  
<title>Insert title here</title>  
</head>  
<body>  
<form action="upload_upload.action" method="post"   
    enctype="multipart/form-data">  
    文件名称：<input type="text" name="fileName"><br>  
    文件：<input type="file" name="myFile"><br>  
    <input type="submit" value="提交">  
</form>  
</body>  
</html> 