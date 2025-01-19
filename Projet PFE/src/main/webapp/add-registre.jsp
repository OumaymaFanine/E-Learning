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

            int j=4;
	        String nom=request.getParameter("user");
	        String pass=request.getParameter("pass");
	        String email=request.getParameter("email");
	        String role=request.getParameter("role");
	        String pass2=request.getParameter("pass2");

	        if(pass.equals(pass2)==false){
				out.println("<a href='register.jsp'><h2 class=\"text-success text-center mt-5\">les password sont pas compatible</h2></a><br>");
	        }else{
	        	String url = "jdbc:mysql://localhost:3306/db_etudiant";
				String driver = "com.mysql.jdbc.Driver";
				Class.forName(driver).newInstance();
				Connection con = DriverManager.getConnection(url, "root", "");
				Statement st = con.createStatement();
				String qry="select username,email from login where username='"+nom+"' or email='"+email+"'";
				ResultSet rs = st.executeQuery(qry);
				if(rs.next()==true){
					out.println("<a href='register.jsp'><h2 class=\"text-success text-center mt-5\">Existe deja ce email ou ce UserName</h2></a><br>");

				}else{
					
						String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
						String driver2 = "com.mysql.jdbc.Driver";
						Class.forName(driver2).newInstance();
						Connection con2 = DriverManager.getConnection(url2, "root", "");
						Statement st2 = con2.createStatement();
					    String qry2="insert into login(username,email,password,role) values ('"+nom+"','"+email+"','"+pass+"','"+role+"')";
						out.println("<a href='login.html'><h2 class=\"text-success text-center mt-5\">Insertion avec Seccesful✅</h2></a><br>");

					    st2.executeUpdate(qry2);
				        con2.close();
				        j=5;
					}
				    }
					

%>			
</body>
</html>