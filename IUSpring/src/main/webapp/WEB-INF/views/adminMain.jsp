<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminMain</title>
<script type="text/javascript" src="/iup/resources/js/photoValidation.js"></script>
</head>
<body>

<%@include file="./inc/adminInc.jsp" %>

<form method="post" enctype="multipart/form-data" onsubmit="return photoValidateForm()">
사진 올리기
<input name="file" type="file">
<input type="submit">
</form>
<form method="post" enctype="multipart/form-data" onsubmit="return photoValidateForm()">
사진 바꾸기
<input name="file" type="file">
<input type="submit">
</form>
<!-- 연습  -->
welcome
<form method="post">
	test1<input type="text" name="HOME_SRC">
	<br>
	test2<input type="text" name="HOME_TYPE">
	<br>
	<input type="submit">
</form>
<br>
result:
<br>
${vo.HOME_SRC }
<br>
${vo.HOME_TYPE }
</body>
</html>