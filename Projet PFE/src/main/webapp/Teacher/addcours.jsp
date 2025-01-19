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
            String pdf=request.getParameter("pdf");
	        String date=request.getParameter("dt");
	        String descr=request.getParameter("des");
	        String matiere=request.getParameter("mat");
	        String niv=request.getParameter("nv");
	        String opt=request.getParameter("op");
	        String sms=request.getParameter("sm");
	        String stt=request.getParameter("st");
	        String titre=request.getParameter("titre");
	       
            String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
			String driver2 = "com.mysql.jdbc.Driver";
			
			Class.forName(driver2).newInstance();
			Connection con2 = DriverManager.getConnection(url2, "root", "");
			Statement st = con2.createStatement();
            String qry2="insert into cours(Titre, Description, Niveau, date, Semestre, Option1, Matiere, statut, cours_pdf) VALUES ('"+titre+"','"+descr+"','"+niv+"','"+date+"','"+sms+"','"+opt+"','"+matiere+"','"+stt+"','"+pdf+"')";
		    st.executeUpdate(qry2);
		    out.println("<a href='cours.jsp'><h2 class=\"text-success text-center mt-5\">insertion Cours réussie✅</h2></a><br>");

%>
</body>
</html>