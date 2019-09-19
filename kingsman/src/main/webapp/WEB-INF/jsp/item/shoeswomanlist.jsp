<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ����Ʈ</title>
<link rel="stylesheet" type="text/css" href="/kingsman/resources/css/itemList.css">
</head>
<body>
<div class="top">
<div class="col-sm-12 text-center location">
      <h1 style="color:#7b7b7b;font-size:3em;font-weight: 300;font-family: 'Montserrat', 'Helvetica', 'Arial', sans-serif;margin-bottom: 0px;">WOMAN</h1>
      <a href="/kingsman/item/womanList"  style="font-size:.9em;">��ü</a> &nbsp;&nbsp;/&nbsp;&nbsp;
      <a href="/kingsman/item/womanUpList"  style="font-size:.9em;">����</a> &nbsp;&nbsp;/&nbsp;&nbsp;
      <a href="/kingsman/item/womanMidList"  style="font-size:.9em;">����</a> &nbsp;&nbsp;/&nbsp;&nbsp;
      <a href="/kingsman/item/womanDownList" style="font-size:.9em;">����</a> &nbsp;&nbsp;/&nbsp;&nbsp;
      <a href="/kingsman/item/shoesWomanList" style="font-size:.9em;">�Ź�</a>
</div>
<br>
<div class="woman">
		<c:choose>
			<c:when test="${fn:length(womanlist) > 0}">
				<c:forEach items="${womanlist }" var="row" varStatus="status" begin="0" step="1">
					<div class="itemLists" style="display: inline-block;">
						<br>	
						<a href="/kingsman/item/detail?ITEM_NO=${row.ITEM_NO }&commentCategory=1">
							<div class="itemImg" >
								<img alt="�̹���" src="/kingsman/resources/imagephoto/${row.ITEM_SHORTPATH}">
							</div>
						</a>
						<br>
						<input type="hidden" name="ITEM_NO" value="${row.ITEM_NO}">
						<a href="/kingsman/item/detail?ITEM_NO=${row.ITEM_NO }&commentCategory=1">${row.ITEM_NAME }</a>
						<br>
						<a href="/kingsman/item/detail?ITEM_NO=${row.ITEM_NO }&commentCategory=1"><span class="money">${row.ITEM_PRICE }</span></a>
					</div>
					<c:if test="${(status.count)%3==0}"><br><br></c:if>
				</c:forEach>
			</c:when>
			<c:otherwise>
				
					��ȸ�� ����� �����ϴ�.
				
			</c:otherwise>
		</c:choose>
		<br><br>
		${womanlistpaging}
</div>
</div>
</body>
</html>