<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>메모장</h2>
	<% request.setCharacterEncoding("utf-8"); %>
	<%	String name = request.getParameter("name");
		String memo = request.getParameter("memo");
		Date now = new Date();
		
		Enumeration <String> en = request.getHeaderNames();
		String headerName = "";
		String headerValue = "";%>
	
	<table border=1>
		<tr>
			<td>성명 </td> <td><%= name %></td>
		</tr>
		<tr>
			<td>메모 </td> <td><%= memo %></td>
		</tr>
		<tr>
			<td>날짜 </td> <td><%=now.toLocaleString() %></td>
		</tr>
		
		<%	while(en.hasMoreElements()){
			headerName = en.nextElement();
			headerValue = request.getHeader(headerName);
			out.println("<tr><td>" + headerName + "</td><td>" + headerValue + "</td></tr>");	}%>
	
	</table>
</body>
</html>