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
												<img alt="John Doe" src="assets/img/user.jpg" class="img-fluid rounded-circle">
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
                        <span class="user-img"><img class="rounded-circle" src="../assets/img/user.jpg" width="40" alt="Admin">
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
                        <li>
                            <a href="qsm.jsp"><i class="fa fa-wheelchair"></i> <span>Quiz</span></a>
                        </li>
                        <li class="active">
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
            <div class="chat-main-row">

                <div class="chat-main-wrapper">

                    <div class="col-lg-9 message-view chat-view">
                        <div class="chat-window">
                            
                            <div class="chat-contents">
                                <div class="chat-content-wrap">
                                    <div class="chat-wrap-inner">
                                        <div class="chat-box">
                                            <div class="chats">
                                                <div class="chat chat-right">
                                                    <div class="chat-body">
                                                        <div class="chat-bubble">
                                                           <label><%=session.getAttribute("mmss")%></label>
                                                        </div>
                                                    </div>
                                                </div>
                                               
                                                <div class="chat chat-left">
                                                   
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><%
String url2 = "jdbc:mysql://localhost:3306/db_etudiant";
String driver2 = "com.mysql.jdbc.Driver";
Class.forName(driver2).newInstance();
Connection con2 = DriverManager.getConnection(url2, "root", "");
Statement st = con2.createStatement();
String qry="select nom,prenom,id from etudiant";
ResultSet rs = st.executeQuery(qry);


while(rs.next()){
%>
                           <form action="addmesage.jsp">
                            
                            <div class="fixed-header">
                                <div class="navbar">
                                    <div class="user-details mr-auto">
                                        <div class="user-info float-left">
                                            <div class="form-group" style="width:800px">
                                            <select id="nomchat" name="respp" class="form-control" required >
                                            <option value="<%=rs.getString(3)%>"><%=rs.getString(1)%>   <%=rs.getString(2)%></option>
                                            <%}%>
                                            </select>
                                            </div>
                                        </div>
                                        
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="chat-footer">
                                <div class="message-bar">
                                    <div class="message-inner">
                                        <a class="link attach-icon" href="#" data-toggle="modal" data-target="#drag_files"><img src="assets/img/attachment.png" alt=""></a>
                                        <div class="message-area">
                                            <div class="input-group">
                                                <textarea class="form-control" name="mesagee" placeholder="Type message..."></textarea>
                                                <span class="input-group-append">
													<button class="btn btn-primary" type="submit"><i class="fa fa-send"></i></button>
												</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </form>
                        </div>
                     
                     </div>
                    <div class="col-lg-3 message-view chat-profile-view chat-sidebar" id="chat_sidebar">
                        <div class="chat-window video-window">
                            <div class="fixed-header">
                                <ul class="nav nav-tabs nav-tabs-bottom">
                                    <li class="nav-item"><a class="nav-link active" href="#profile_tab" data-toggle="tab"></a></li>
                                </ul>
                            </div>
                            <div class="tab-content chat-contents">
                                <div class="content-full tab-pane" id="calls_tab">
                                    <div class="chat-wrap-inner">
                                        <div class="chat-box">
                                            <div class="chats">
                                                <div class="chat chat-left">
                                                    
                                                    <div class="chat-body">
                                                        <div class="chat-bubble">
                                                           
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="chat chat-left">
                                                   
                                                   
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="content-full tab-pane show active" id="profile_tab">
                                    <div class="display-table">
                                        <div class="table-row">
                                            <div class="table-body">
                                               
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
			
        </div>
    
    <div class="sidebar-overlay" data-reff=""></div>
    <script src="../assets/js/jquery-3.2.1.min.js"></script>
	<script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/jquery.slimscroll.js"></script>
    <script src="../assets/js/app.js"></script>
</body>


<!-- chat23:29-->
</html>