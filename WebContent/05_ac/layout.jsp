<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout</title>
</head>
<body>
	<table border="1" width=400px>
		<tr>
			<td colspan=2> 
				<jsp:include page="top.jsp" flush="false" />
			</td>
		</tr>
		<tr>
			<td width=100px valign="top"> 
				<jsp:include page="left.jsp" flush="false"/>
			</td>
			<td width=300px height=200px> 
				<center>레이아웃</center>
			</td>
		</tr>
		<tr>
			<td colspan=2> 
				<jsp:include page="bottom.jsp" flush="false"/>
			</td>
		</tr>
	</table>
</body>
</html>