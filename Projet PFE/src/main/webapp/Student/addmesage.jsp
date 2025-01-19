<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String mesage=request.getParameter("mesage");
String resp=request.getParameter("resp");



String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
String driver2 = "com.mysql.jdbc.Driver";
Class.forName(driver2).newInstance();
Connection con2 = DriverManager.getConnection(url2, "root", "");
Statement st = con2.createStatement();
String qry2="insert into chat(par,resp,message) VALUES ('"+session.getAttribute("username")+"','"+resp+"','"+mesage+"')";
st.executeUpdate(qry2);
session.setAttribute("mms",request.getParameter("mesage"));

response.sendRedirect("./chat_room.jsp");

%>		
</body>
</html>