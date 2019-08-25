<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestTest</title>
</head>
<body>
	<% String method = request.getMethod();
		String protocol = request.getProtocol();
		String URI = request.getRequestURI();
		String queryStr = request.getQueryString();
		String host = request.getRemoteHost();
		String addr = request.getRemoteAddr();
		String serverName = request.getServerName();
		int port = request.getServerPort();
		String path = request.getContextPath();
		%>
		
		method = <%=method %> <br>
		protocol = <%=protocol %> <br>
		URI = <%=URI %> <br>
		QueryString = <%=queryStr %> <br>
		host = <%=host %> <br>
		address = <%=addr %> <br>
		serverName = <%=serverName %> <br>
		port = <%=port %> <br>
		path = <%=path %> <br>
</body>
</html>