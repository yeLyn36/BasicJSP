<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% request.setCharacterEncoding("utf-8"); %>
<body>
<%
	String siteName = request.getParameter("siteName");
	String siteAddr = request.getParameter("siteAddr");
%>
<hr>
입력된 사이트명 : <%= siteName %><p/>
<jsp:include page="subhome.jsp" flush="false">
	<jsp:param name="siteAddr" value="<%=siteAddr %>"/>
</jsp:include><p/>
<hr>
입력된 사이트명 : 다음<p/>
사이트 주소 : http://www.daum.net<p/>
</body>
</html>