<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.Enumeration"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTest2</title>
</head>
<body>
	<% String names[] = {"프로토콜 이름", "서버 이름", "Method 방삭", "컨택스트 경로", "URI", "접속한 클라리언트 IP"}; 
		String values[] = {"request.getProtocol()", "request.getServerName()",
				"request.getMethod()", "request.getContextPath()", "request.getRemoteURI()",
				"request.getRemoteAddr()"};
		
		Enumeration <String> en = request.getHeaderNames();
		String headerName = "";
		String headerValue = "";
	%>
	
	<h2>웹 브라우져와 웹 서버 정보표시</h2>
		<% for(int i=0;i<names.length;i++){
				out.println(names[i] + " : " + values[i] + "<br>");
		} %>

	<h2>헤더의 정보표시</h2>
		<% while(en.hasMoreElements()){
			headerName = en.nextElement();
			headerValue = request.getHeader(headerName);
			out.println(headerName + ":" + headerValue + "<br>");	
		} %>
</body>
</html>