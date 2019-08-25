<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>switchTestPro</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<% int local = Integer.parseInt(request.getParameter("num")); 
	   String localStr = "";
	   
		switch(local){
		case 0: localStr = "종로 중구 용산"; break;
		case 1: localStr = "도봉 강북 노원"; break;
		case 2: localStr = "동대문 성동 중량 광진"; break;
		case 3: localStr = "강동 송파"; break;
		case 4: localStr = "서초 강남"; break;
		case 5: localStr = "동작 관악 금원"; break;
		case 6: localStr = "강서 양원 영등포 구로"; break;
		case 7: localStr = "은평 마포 서대문"; break;
		}
		%>
		
		선택하신 지역은 <b><%= localStr%></b>입니다.
</body>
</html>