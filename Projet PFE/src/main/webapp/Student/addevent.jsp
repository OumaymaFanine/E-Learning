<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
 <%@ page import="java.util.Date" %> 
  <%@ page import="java.time.LocalDate" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
            String qst=request.getParameter("neve");
	        String rep=request.getParameter("daeve");
	        
	        
	        
            String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
			String driver2 = "com.mysql.jdbc.Driver";
			Class.forName(driver2).newInstance();
			Connection con2 = DriverManager.getConnection(url2, "root", "");
			Statement st = con2.createStatement();
            String qry2="insert into event(event,eventDate,username) VALUES ('"+qst+"','"+rep+"','"+session.getAttribute("username")+"')";
		    st.executeUpdate(qry2);
		    out.println("<a href='calendar.jsp'><h2 class=\"text-success text-center mt-5\">insertion Event réussie✅</h2></a><br>");

%>
</body>
</html>