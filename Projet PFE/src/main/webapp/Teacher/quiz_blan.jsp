<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
<%
String url = "jdbc:mysql://localhost:3306/db_etudiant";
String driver = "com.mysql.jdbc.Driver";
Class.forName(driver).newInstance();
Connection con = DriverManager.getConnection(url, "root", "");
Statement st2 = con.createStatement();
String qry2="SELECT cours.Matiere,cours.Titre,teacher.nom,count(*) from cours,teacher where cours.Matiere=teacher.matiere";
ResultSet rs2 = st2.executeQuery(qry2);


while(rs2.next()){
%>

<!-- calendar23:59-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/li.jpg">
    <title>EDUSYNK</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/fullcalendar.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
    <div class="main-wrapper">
        <div class="header">
			<div class="header-left">
				<a href="index-2.html" class="logo">
					<img src="../assets/img/li.jpg" width="35" height="35" alt=""> <span>EDUSYNK</span>
				</a>
			</div>
			<a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
            <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
            <ul class="nav user-menu float-right">
                <li class="nav-item dropdown d-none d-sm-block">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><i class="fa fa-bell-o"></i> <span class="badge badge-pill bg-danger float-right"><%=rs2.getString(4)%></span></a>
                    
                    <div class="dropdown-menu notifications">
                        <div class="topnav-dropdown-header">
                            <span>Notifications</span>
                        </div>
                        <div class="drop-scroll">
                            <ul class="notification-list">
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media">
											<span class="avatar">
												<img alt="John Doe" src="../assets/img/user.jpg" class="img-fluid rounded-circle">
											</span>
											<div class="media-body">
												<p class="noti-details"><span class="noti-title">les students</span> recue le  Cours son Titre est: <span class="noti-title"><%=rs2.getString(2)%></span></p>
											</div>
                                        </div>
                                    </a>
                                </li>
                           </ul>   
                    </div>
                    </div><% } %>
                </li>
               
                <li class="nav-item dropdown has-arrow">
                    <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                        <span class="user-img"><img class="rounded-circle" src="../assets/img/user.jpg" width="40" >
							<span class="status online"></span></span>
                        <span><%=session.getAttribute("username")%></span>
                    </a>
					<div class="dropdown-menu">
						
						<a class="dropdown-item" href="login.html">Logout</a>
					</div>
                </li>
            </ul>
            <div class="dropdown mobile-user-menu float-right">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                <div class="dropdown-menu dropdown-menu-right">
                    
                    <a class="dropdown-item" href="login.html">Logout</a>
                </div>
            </div>
        </div>
        <div class="sidebar" id="sidebar">
            <div class="sidebar-inner slimscroll">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="menu-title">Main</li>
                        <li >
                            <a href="Teacher2.jsp"><i class="fa fa-dashboard"></i> <span>Profile</span></a>
                        </li>
						<li>
                            <a href="cours.jsp"><i class="fa fa-user-md"></i> <span>Cours</span></a>
                        </li>
                        <li class="active">
                            <a href="qsm.jsp"><i class="fa fa-wheelchair"></i> <span>Quiz</span></a>
                        </li>
                        <li>
                            <a href="chat_room.jsp"><i class="fa fa-calendar"></i> <span>Chat</span></a>
                        </li>
                        <li>
                            <a href="calendar.jsp"><i class="fa fa-calendar"></i> <span>Calendar</span></a>
                        </li>
                     </ul>
                 </div>
             </div>
         </div>
        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">ADD QUIZ BLAN</h4>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="qsm.jsp" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Quiz QSM</a>
                        <a href="vrais.jsp" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Quiz Vrais_Faux</a>
                    
                    </div>
                </div>
				 
				 <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                       
                <form name="registre" action="addblan.jsp">
                    <form action="http://dreamguys.co.in/preclinic/template/index.html" class="form-signin">
                    <div class="main-wrapper  account-wrapper">
        <div class="account-page">
            <div class="account-center">
                <div class="account-box">
                        <div class="form-group">
                            <label>Titre</label>
                            <input type="text" name="titre" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Question</label>
                            <input type="text" name="qst" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Reponse</label>
                            <input type="text"  name="rep" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Option 1</label>
                            <input type="text" name="op1" class="form-control" required>
                        </div>
                        <div class="form-group">
                        <label>Option 2</label>
                        <input type="text"  name="op2" class="form-control" required>
                        
                        </div>
                        
                        <div class="form-group">
                        <label >Option 3</label>
                        <input type="text" name="op3"  class="form-control"  required>
                        </div>
                        
                        <div class="form-group">
                        <label >Option 4</label>
                        <input type="text" name="op4"  class="form-control"  required>
                        </div>
                        <div class="form-group text-center">
                            <button class="btn btn-primary account-btn" type="submit">Add</button>
                        </div>
                       </div></div></div></div>
                    </form>
                   
                    </form>
                </div>
            </div>
        
				
            </div>
				 <%
String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
String driver2 = "com.mysql.jdbc.Driver";
Class.forName(driver2).newInstance();
Connection con2 = DriverManager.getConnection(url2, "root", "");
Statement st = con2.createStatement();
String qry="select par,message from chat where resp=(select id from etudiant where nom='"+session.getAttribute("username")+"'";
ResultSet rs = st.executeQuery(qry);


while(rs.next()){
%>
            <div class="notification-box">
                <div class="msg-sidebar notifications msg-noti">
                    <div class="topnav-dropdown-header">
                        <span>Messages</span>
                    </div>
                    <div class="drop-scroll msg-list-scroll" id="msg_list">
                        <ul class="list-box">
                            <li>
                                <a href="chat.html">
                                    <div class="list-item">
                                        <div class="list-left">
                                            <span class="avatar">A</span>
                                        </div>
                                        <div class="list-body">
                                            <span class="message-author"><%=rs.getString(1) %> </span>
                                            <div class="clearfix"></div>
                                            <span class="message-content"><%=rs.getString(2) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            
                        </ul>
                    </div>
                    
                </div>
            </div>
            <%} %>
            
        </div>
		
    </div>
    <div class="sidebar-overlay" data-reff=""></div>
    <script src="../assets/js/jquery-3.2.1.min.js"></script>
	<script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/jquery.slimscroll.js"></script>
    <script src="../assets/js/select2.min.js"></script>
    <script src="../assets/js/moment.min.js"></script>
    <script src="../assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="../assets/js/app.js"></script>
</body>


<!-- doctors23:17-->
</html>