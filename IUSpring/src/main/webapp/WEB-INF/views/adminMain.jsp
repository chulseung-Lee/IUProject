<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminMain</title>
<script type="text/javascript" src="/iup/resources/js/photoValidation.js"></script>
<script type="text/javascript" src="/iup/resources/js/sendForm.js"></script>
</head>
<body>
	<%@include file="./inc/adminInc.jsp"%>

	<div>
	${param.status == 'success' ? '성공' : param.status == null ? 'null' : '실패'}
	</div>

	<form method="post" enctype="multipart/form-data"
		onsubmit="return photoValidateForm()">
		<input type="hidden" name="realPath" value="${sessionScope.realPath}">
		<input type="hidden" name="methodType" value=1>
		사진 올리기 
		<br>
		<input name="file" type="file"> <input type="submit">
		<br>
		메인으로 바꾸기 
		<input type="radio" name="HOME_TYPE" value="SELECTED">예 
		<input type="radio" name="HOME_TYPE" value="DESELECT" checked="checked">아니오
	</form>
	
	<div>
		리스트<br>
		<ul>
			<c:if test="${photoList.size() > 0}">
				<c:forEach items="${photoList}" var="row" varStatus="stat">
					<li><a id="li${stat.count}">${row.HOME_VIEWNAME}</a> <a onclick="formSubmit('${row.HOME_VIEWNAME}')">메인으로</a> <a onclick="formSubmit2('${row.HOME_SRC}')">삭제</a></li>
				</c:forEach>
			</c:if>
			<c:if test="${photoList.size() < 1 }">
				<li>사진이 없습니다.</li>
			</c:if>
		</ul>
	</div>
	<form id="sendForm" method="post">
		<input type="hidden" name="realPath" value="${sessionScope.realPath}">
		<input id="methodType" type="hidden" name="methodType" value=2>
		<input id="sendFormVar" type="hidden" name="HOME_VIEWNAME" value="">
	</form>
</body>
</html>