<%@page import="service.PubwifiService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>와이파이 정보 구하기</title>
</head>
<body>

<%
PubwifiService pubwifi = new PubwifiService();
int wificount = pubwifi.getCount();
pubwifi.reset();
pubwifi.insertData();
%>
    <div style = "text-align: center;">
        <h1><%=wificount%>개의 WIFI정보를 정상적으로 저장하였습니다<br></h1>
    	<a href="Home.jsp">홈으로 가기</a>
    </div>
</body>
</html>