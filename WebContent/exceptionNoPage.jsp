<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>������ ����</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="menu.jsp"%>

	<div class="jumbotron">
		<div class="container">
			<h2 class="alret alert-danger">��û�Ͻ� �������� ã�� �� �����ϴ�.</h2/>
		</div>
	</div>
	<div class="container">
		<%=request.getRequestURL()%>
		<br>
		<br> <a href="./books.jsp" class="btn btn-info">������� &raquo;</a>
	</div>
</body>
</html>