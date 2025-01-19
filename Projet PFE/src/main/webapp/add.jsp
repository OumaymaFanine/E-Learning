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
            int j=4;
	        String pass=request.getParameter("pas");
            String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
			String driver2 = "com.mysql.jdbc.Driver";
			Class.forName(driver2).newInstance();
			Connection con2 = DriverManager.getConnection(url2, "root", "");
			Statement st = con2.createStatement();
			String qry="select username,password,role,email from login";
			ResultSet rs = st.executeQuery(qry);
		
			while(rs.next()){
				if(nom.equals(rs.getString(1)) && pass.equals(rs.getString(2))){
					if(rs.getString(3).equals("Student")){
						session.setAttribute("username",rs.getString(1));
						session.setAttribute("email",rs.getString(4));

						String qry2="select nom,prenom from etudiant where username='"+nom+"'";
						ResultSet rs2 = st.executeQuery(qry2);
						if(rs2.next()==true){
					        response.sendRedirect("./Student/Student.jsp");
					        return;
						}else{
							response.sendRedirect("./Student/Student2.jsp");
					        return;
						}
						
					}
					if(rs.getString(3).equals("Admin")){
						session.setAttribute("username",rs.getString(1));

						
							response.sendRedirect("./Admin/Teachear.jsp");
						    return;
						
					}
					if(rs.getString(3).equals("Teacher")){
						session.setAttribute("username",rs.getString(1));
						session.setAttribute("email",rs.getString(4));

						String qry2="select nom,prenom,matiere from teacher where username='"+nom+"'";
						ResultSet rs2 = st.executeQuery(qry2);
						if(rs2.next()==true){

							response.sendRedirect("./Teacher/Teacher2.jsp");
						    return;
						}else{
							
							response.sendRedirect("./Teacher/Teacher.jsp");
						    return;
						}
						
					}
				}else{
					j=2;
				}
			
			}
			if(rs.next()==false){
             j=2;
			}
			if(j==2){
				out.println("<a href='login.jsp'><h2 class=\"text-success text-center mt-5\">username or password incorrect</h2></a><br>");

			}
			
		    con2.close();

%>			
</body>
</html>