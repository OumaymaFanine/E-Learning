<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<%
     String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
     String driver2 = "com.mysql.jdbc.Driver";
     Class.forName(driver2).newInstance();
     Connection con2 = DriverManager.getConnection(url2, "root", "");
     Statement st = con2.createStatement();
     String qry="select * from quiz";
     ResultSet rs = st.executeQuery(qry);


     while(rs.next()){
     %> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      
   
    <div class="row">
        <div class="col-6">
            <h4>Question:  <%=rs.getString(3) %></h4>
        </div>
        <div class="col-6">
            
        </div>
    </div>  
    <br>
    <section>
<form name="quizForm" action="addvrais.jsp" >

        <div class="row">
            <div class="col-6">
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="q<%=rs.getString(1) %>" value="Vrais">
                  <label class="form-check-label" for="inlineRadio1">A. Vrais</label>
                </div>
            </div>
            <div class="col-6">
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="q<%=rs.getString(1) %>" value="Faux">
                  <label class="form-check-label" for="inlineRadio1">B. Faux</label>
                </div>
            </div>
        </div>
        <br>
        
        <br>
        <hr>
    <%
    }
    %>  

   <input type="submit" value="Submit Answers">
    </form>
    <div id="results"></div>
    </section>
</body>
</html>