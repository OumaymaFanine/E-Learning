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
String nom=request.getParameter("nom");
String user=request.getParameter("user");
String prenom=request.getParameter("pren");
String email=request.getParameter("email");

String mt=request.getParameter("mt");
String vi=request.getParameter("vi");
String di=request.getParameter("di");
String sex=request.getParameter("gender");
String ad=request.getParameter("ad");
String cn=request.getParameter("cn");
String photo=request.getParameter("file");

            String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
			String driver2 = "com.mysql.jdbc.Driver";
			Class.forName(driver2).newInstance();
			Connection con2 = DriverManager.getConnection(url2, "root", "");
			Statement st = con2.createStatement();
			String qry="insert into Teacher(photo,username,email,nom,prenom,matiere,dateins,sex,adress,ville,country) value('"+photo+"','"+user+"','"+email+"','"+nom+"','"+prenom+"','"+mt+"','"+di+"','"+sex+"','"+ad+"','"+vi+"','"+cn+"')";
		    st.executeUpdate(qry);
		    response.sendRedirect("./Teacher.jsp");
		    //return;
			con2.close();
			
			
			
			
			
			
			
			
			
			
			
			%>
</body>
</html>