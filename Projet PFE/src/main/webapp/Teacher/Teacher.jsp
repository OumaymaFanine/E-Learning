<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<!-- add-patient24:06-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/li.jpg">
    <title>EDUSYNK</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.min.css">
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
                        <li class="active">
                            <a href="index-2.html"><i class="fa fa-dashboard"></i> <span>Profile</span></a>
                        </li>
						
                     </ul>
                 </div>
             </div>
         </div>
        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Complete Profile</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                      <form  name="add"  action="profile.jsp">
                    
                        <form>
                        
                            <div class="row">
                            
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Nom <span class="text-danger">*</span></label>
                                        <input class="form-control" name="nom" type="text" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Prenom</label>
                                        <input class="form-control" name="pren" type="text" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Username <span class="text-danger">*</span></label>
                                        <input class="form-control" value="<%=session.getAttribute("username")%>" name="user" type="text" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Email <span class="text-danger">*</span></label>
                                        <input class="form-control" name="email" value="<%=session.getAttribute("email")%>" type="email" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Matiere</label>
                                        <input class="form-control"  name="mt" type="text"required>
                                    </div>
                                </div>
                                
								
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Date Inscription</label>
                                        <div class="cal-icon">
                                            <input type="text" name="di" class="form-control datetimepicker" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
									<div class="form-group gender-select">
										<label class="gen-label">Sex:</label>
										<div class="form-check-inline">
											<label class="form-check-label">
												<input type="radio" value="Homme" name="gender" class="form-check-input" required>Homme
											</label>
										</div>
										<div class="form-check-inline">
											<label class="form-check-label">
												<input type="radio" value="Femme" name="gender" class="form-check-input" required>Femme
											</label>
										</div>
									</div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
												<label>Address</label>
												<input name="ad" type="text" class="form-control " required>
									</div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
												<label>Country</label>
												<select name="cn" class="form-control select" required>
													<option>USA</option>
													<option>United Kingdom</option>
													<option>Maroc</option>
													
												</select>
											</div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
												<label>Ville</label>
												<input type="text" name="vi" class="form-control " required>
									</div>
                                </div>
                                <div class="col-sm-6">
									<div class="form-group">
										<label>Photo</label>
										<div class="profile-upload">
											<div class="upload-img">
												<img alt="" src="../assets/img/user.jpg">
											</div>
											<div class="upload-input">
												<input type="file" name="file" class="form-control" required>
											</div>
										</div>
									</div>
                                </div>
								
                            </div>
                           
                            <div class="m-t-20 text-center">
                                <button class="btn btn-primary submit-btn">Save</button>
                            </div>
                        </form>
                        </form>
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
    <script src="../assets/js/select2.min.js"></script>
	<script src="../assets/js/moment.min.js"></script>
	<script src="../assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="../assets/js/app.js"></script>
</body>


<!-- add-patient24:07-->
</html>
