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
            String qst=request.getParameter("qst");
	        String rep=request.getParameter("rep");
	        String titre=request.getParameter("titre");
	        String op1=request.getParameter("op1");
	        String op2=request.getParameter("op2");
	        String op3=request.getParameter("op3");
	        String op4=request.getParameter("op4");
	        
	        
            String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
			String driver2 = "com.mysql.jdbc.Driver";
			Class.forName(driver2).newInstance();
			Connection con2 = DriverManager.getConnection(url2, "root", "");
			Statement st = con2.createStatement();
            String qry2="insert into quizblan(qst,rep,Titre,op1,op2,op3,op4) VALUES ('"+qst+"','"+rep+"','"+titre+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"')";
		    st.executeUpdate(qry2);
		    out.println("<a href='quiz_blan.jsp'><h2 class=\"text-success text-center mt-5\">insertion question blan réussie✅</h2></a><br>");

%>
</body>
</html>