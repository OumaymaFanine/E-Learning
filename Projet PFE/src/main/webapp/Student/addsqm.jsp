<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
        <%@ page import="java.util.List" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int vrais=0;
     String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
     String driver2 = "com.mysql.jdbc.Driver";
     Class.forName(driver2).newInstance();
     Connection con2 = DriverManager.getConnection(url2, "root", "");
     Statement st = con2.createStatement();
     String qry="select id,rep from qsm";
     ResultSet rs = st.executeQuery(qry);
     List<String> list = new ArrayList<String>();
     List<String> list2 = new ArrayList<String>();

     
     while(rs.next()){
    	    	  list.add(request.getParameter("q"+rs.getString(1)));
    	    	  list2.add(rs.getString(2));

 }
      
for(int i=0;i<list.size();i++){
        if(list.get(i).equals(list2.get(i)))
         vrais++;
	
	}


out.println("Your Scoure : "+vrais+"/"+list.size());
out.println("<a href='qsm.jsp'><h2 class=\"text-success text-center mt-5\">Retour aux Acceuil</h2></a><br>");

     %> 

      



</body>
</html>