<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SCRIET Student Feedback System : Home - Login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="SCRIET SFS, scriet sfs, scrietsfs, student feedback system, feedback system for scriet, feedback for scriet" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="Images/fi.png" type="image/x-icon"/>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="MyCSS/MyCSS.css" rel="stylesheet" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="MyJS/MyJS.js" type="text/javascript"></script>
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Kalam|Muli|Pacifico|Quicksand|Sedgwick+Ave" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/fontawesome.css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-130418676-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	  gtag('config', 'UA-130418676-1');
	</script>
</head>
<body>
    <div id="loader"></div>
	<div class="after-click"></div>
    <form id="form1" runat="server">
		<nav class="nav navbar-fixed-top mymnav">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navmenu"><i class="fas fa-align-justify"></i></button>
                    <a href="Home" class="navbar-brand mybrand click-on" style="margin-top:-3px;"><i class="fas fa-comments" style="font-size:30px;"></i> SCRIET-SFS</a>
                </div>
                <div id="navmenu" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right mynavmenu">
                        <li class="active"><a href="Home" class="click-on"><i class="fas fa-home"></i> HOME</a></li>
                        <li><a href="Registration" class="click-on"><i class="fas fa-registered"></i> REGISTRATION</a></li>
                        <li><a href="Contact" class="click-on"><span class="glyphicon glyphicon-phone-alt"></span> CONTACT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
		<div class="front-cover">
			<div class="panel-body login-body" style="top:60%;">
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4"><div class="back-box">
						<ul class="nav nav-pills mypills">
							<li class="active"><a data-toggle="pill" href="#stu"><i class="fas fa-users"></i> Students</a></li>
							<li><a  data-toggle="pill" href="#coor" ><i class="fas fa-user"></i> Coordinator</a></li>
							<li><a  data-toggle="pill" href="#admin" ><i class="fas fa-user-secret"></i> Admin</a></li>
						</ul>
						<div class="tab-content">
							<div id="stu" class="tab-pane fade in active text-center">
								<h3><i class="fas fa-users"></i> Student Login <i class="fas fa-sign-in-alt"></i></h3><hr />
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter Email ID"><i class="fas fa-user"></i></span>
										<asp:TextBox ID="sid" placeholder="Email ID" runat="server" TextMode="Email" CssClass="form-control mytxt" MaxLength="50" style="text-transform:lowercase;"></asp:TextBox>
									</div>
									<div class="input-group" style="margin-top:10px;">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter Password"><i class="fas fa-key"></i></span>
										<asp:TextBox ID="spass" TextMode="Password" placeholder="Password" runat="server" CssClass="form-control mytxt" MaxLength="15" style="text-transform:none;"></asp:TextBox>
									</div><br />
									<a class="link click-on" href="Registration" data-toggle="tooltip" data-placement="top" title="New Registration" style="font-size:16px;"><i class="fas fa-registered"></i> Not Registered...?</a><br />
									<a class="link" href="http://cvgclub.org/Forgot_Password" target="_blank" data-toggle="tooltip" data-placement="top" title="Reset Password" style="font-size:16px;"><i class="fas fa-key"></i> Forgot Password...?</a><br /><br />

									<asp:Button ID="slogin" runat="server" CssClass="btn btn-info btn-block click-on" style="font-family:Calibri;font-weight:bold;font-size:20px;padding:5px;" Text="Sign-In" OnClick="slogin_Click"/>
								</div>
							</div>
							<div id="coor" class="tab-pane fade text-center">
								<h3><i class="fas fa-user"></i> Coordinator Login <i class="fas fa-sign-in-alt"></i></h3><hr />
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Select Department" style="padding-left:10px;padding-right:9px;"><i class="fas fa-graduation-cap"></i></span>
										<asp:DropDownList ID="deptxt" runat="server" CssClass="form-control" style="font-weight:bold;" requierd="true">
											<asp:ListItem>SELECT DEPARTMENT</asp:ListItem>
											<asp:ListItem>B.TECH</asp:ListItem>
											<asp:ListItem>MBA</asp:ListItem>
											<asp:ListItem>MCA</asp:ListItem>
										</asp:DropDownList>
									</div>
									<div class="input-group" style="margin-top:10px;">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Select Branch"><i class="fas fa-briefcase"></i></span>
										<asp:DropDownList ID="nullbtxt" runat="server" CssClass="form-control" style="font-weight:bold;">
											<asp:ListItem>SELECT BRANCH</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList ID="btechtxt" runat="server" CssClass="form-control" style="font-weight:bold;">
											<asp:ListItem>SELECT BRANCH</asp:ListItem>
											<asp:ListItem>AGRICULTURE ENGINEERING</asp:ListItem>
											<asp:ListItem>CHEMICAL ENGINEERING</asp:ListItem>
											<asp:ListItem>COMPUTER SCIENCE</asp:ListItem>
											<asp:ListItem>ELECTRONICS & COMMUNICATION</asp:ListItem>
											<asp:ListItem>ELECTRONICS & INSTRUMENTATION</asp:ListItem>
											<asp:ListItem>MECHANICAL ENGINEERING</asp:ListItem>
											<asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList ID="mbatxt" runat="server" CssClass="form-control" style="font-weight:bold;">
											<asp:ListItem>SELECT BRANCH</asp:ListItem>
											<asp:ListItem>MBA</asp:ListItem>
											<asp:ListItem>MBA (HA)</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList ID="mcatxt" runat="server" CssClass="form-control" style="font-weight:bold;">
											<asp:ListItem>NO BRANCH</asp:ListItem>
										</asp:DropDownList>
									</div>
									<div class="input-group" style="margin-top:10px;">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter Password"><i class="fas fa-key"></i></span>
										<asp:TextBox ID="cpass" TextMode="Password" placeholder="Password" runat="server" CssClass="form-control mytxt" MaxLength="15" style="text-transform:none;"></asp:TextBox>
									</div><br />
									<a class="link" href="Forgot_Password" data-toggle="tooltip" data-placement="top" title="Reset Password" style="font-size:16px;"><i class="fas fa-key"></i> Forgot Password...?</a><br /><br />
									<asp:Button ID="clogin" runat="server" CssClass="btn btn-info btn-block click-on" style="font-family:Calibri;font-weight:bold;font-size:20px;padding:5px;" Text="Sign-In" OnClick="clogin_Click"/>
								</div>
							</div>
							<div id="admin" class="tab-pane fade text-center">
								<h3><i class="fas fa-user-secret"></i> Administrator Login <i class="fas fa-sign-in-alt"></i></h3><hr />
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter Admin ID"><i class="fas fa-user"></i></span>
										<asp:TextBox ID="aid" placeholder="Admin ID" runat="server" CssClass="form-control mytxt" MaxLength="15" style="text-transform:none;"></asp:TextBox>
									</div>
									<div class="input-group" style="margin-top:10px;">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter Password"><i class="fas fa-key"></i></span>
										<asp:TextBox ID="apass" TextMode="Password" placeholder="Password" runat="server" CssClass="form-control mytxt" MaxLength="15" style="text-transform:none;"></asp:TextBox>
									</div><br />
									<a class="link" href="Forgot_Password" data-toggle="tooltip" data-placement="top" title="Reset Password" style="font-size:16px;"><i class="fas fa-key"></i> Forgot Password...?</a><br /><br />

									<asp:Button ID="alogin" runat="server" CssClass="btn btn-info btn-block click-on" style="font-family:Calibri;font-weight:bold;font-size:20px;padding:5px;" Text="Sign-In" OnClick="alogin_Click"/>
									
								</div>
							</div>                        
						</div>
					</div>
						<div class="arr-down">
							<span id="downbtn" class="glyphicon glyphicon-menu-down" style="color:aqua;"></span>
						</div>
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
		<div class="will-close"><div class="main-body">
			<div class="arr-up">
				<span id="upbtn" class="glyphicon glyphicon-menu-up" data-toggle="tooltip" data-placement="bottom" title="Login Page"></span>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-3">
						<div class="info-box">
							<span class="glyphicon glyphicon-record info-box-icon"></span>
							<h3 style="font-family:quicksand;letter-spacing:2px;">
								BE FOCUSED
							</h3>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="info-box">
							<span class="glyphicon glyphicon-flash info-box-icon"></span>
							<h3 style="font-family:quicksand;letter-spacing:2px;">
								BE DAUNTLESS
							</h3>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="info-box">
							<span class="glyphicon glyphicon-qrcode info-box-icon"></span>
							<h3 style="font-family:quicksand;letter-spacing:2px;">
								BE POSITIVE
							</h3>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="info-box">
							<span class="glyphicon glyphicon-signal info-box-icon"></span>
							<h3 style="font-family:quicksand;letter-spacing:2px;">
								BE THINKER
							</h3>
						</div>
					</div>
				</div>
				<br /><div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<div class="info-box-wh">
							<img src="Images/Developers/director.jpg" style="border-radius:3px;"/><br />
							<p>
								Prof. Jaimala<br />
								Dean Engg. & Technology
							</p><hr />
							<p style="font-size:16px;text-align:justify;">
								&emsp;Welcome to the SCRIET, C. C. S. University,
                                Meerut. We all are on a journey full of challenges,
                                may be economic, social, political, or ethical. The
                                vision of SCRIET is based on the fact that the combination
                                of curiosity, compassion, ethics and intellect always leads
                                to dissolve the complexities of life. We 
                                and our faculty try to address sensitively the managerial and engineering challenges
                                and their complexities of the present and the future through
                                challenging class room study, labs, interactive workshops, seminars,
                                tutorials and industrial visits. The Institute is on the way of
                                creating strong and enterprising community of innovators and leaders 
                                in the form of faculty, students, and alumni to keep pace with
                                fast-changing global demands. As a privileged Director and Dean,
                                I invite you to join this journey and to avail the best possible
                                opportunities that the Institute provides. Thank you all with the
                                hope that you will join us and give us opportunity to strengthen
                                you and the society.
							</p>
						</div>
						<div class="col-sm-2"></div>
					</div>
				</div>
				<br /><div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<div class="info-box-wh">
							<h3 style="font-family:quicksand;letter-spacing:2px;margin-top:0px;"><span></span> About SCRIET-SFS</h3><hr />
							<p style="font-size:16px;text-align:justify;">
								<b>&emsp;Sir Chhotu Ram Institute of Engineering & Technology</b> was established
                                in 2002 with the Aim of providing quality education in the field of
                                Engineering and Technology. The Institute is a constituent part of the
                                Ch. Charan Singh University, Meerut. The Institute is running B.Tech. courses
                                in seven branches i.e. Agricultural Engineering, Mechanical Engineering,
                                Electronics & Communication Engineering, Computer Science. Information
                                Technology, Chemical Engineering Electronics & Instrumentation, Master of
                                Computer Application and Master of Business Administration. Besides, these
                                departments of Applied Science and Humanities is also been here. <br />                                        
                                &emsp;To improve the quality of college, infrastructure,
                                teaching and curriculum. Sir Chhotu Ram Institute of Engineering & Technology,
                                Meerut launches a feedback website named SCRIET Student Feedback System (SCRIETSFS).
                                Which is developed by student of SCRIET. 
							</p>
						</div>
					</div>
					<div class="col-sm-2"></div>
				</div>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-sm-4">
								<br /><div class="panel panel-success">
									<div class="panel-heading"><b>PROJECT GUIDE</b></div>
									<div class="panel-body" style="padding:3px;">
										<div style="width:100%;"><img src="Images/Developers/praveensir.jpg" style="width:100%;" data-toggle="tooltip" data-placement="top" title="Project Guide"/></div>
									</div>
									<div class="panel-heading">
										<b>
											<i id="g" class="fas fa-user"></i> : <a href="https://www.facebook.com/pravin.panwar.14" target="_blank" data-toggle="tooltip" data-placement="top"  title="Open Facebook Profile" class="link" style="color:inherit;text-decoration:underline;">Er Pravin Panwar <span class="glyphicon glyphicon-new-window"></span></a><br />
											<i class="fas fa-briefcase"></i> : Lecturer - B.Tech (IT)<br />
											<i class="fas fa-graduation-cap"></i> : M.Tech<br />
											<i class="fas fa-envelope"></i> : <a href="mailto:pravinpanwar.ccs@gmail.com" target="_blank" data-toggle="tooltip" data-placement="top"  title="Send e-Mail" class="link" style="color:inherit;text-decoration:underline;">click to send a mail <span class="glyphicon glyphicon-new-window"></span></a>
										</b>                                            
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<br /><div class="panel panel-success">
									<div class="panel-heading"><b>LEAD DEVELOPER</b></div>
									<div class="panel-body" style="padding:3px;">
										<div style="width:100%;"><img src="Images/Developers/samsberk.jpg" style="width:100%;" data-toggle="tooltip" data-placement="top" title="Lead Developer"/></div>
									</div>
									<div class="panel-heading">
										<b>
											<i id="g" class="fas fa-user"></i> : <a href="http://www.facebook.com/samsberk" target="_blank" data-toggle="tooltip" data-placement="top"  title="Open Facebook Profile" class="link" style="color:inherit;text-decoration:underline;">Shivam Vishwakarma <span class="glyphicon glyphicon-new-window"></span></a><br />
											<i class="fas fa-briefcase"></i> : Student (2017 - 2020)<br />
											<i class="fas fa-graduation-cap"></i> : B.Tech - LE (IT)<br />
											<i class="fas fa-envelope"></i> : <a href="mailto:samsberk@gmail.com" target="_blank" data-toggle="tooltip" data-placement="top"  title="Send e-Mail" class="link" style="color:inherit;text-decoration:underline;">click to send a mail <span class="glyphicon glyphicon-new-window"></span></a><br />
											<i class="fa fa-phone-square"></i> : <a href="tel:9565709296" class="link" data-toggle="tooltip" data-placement="top"  title="Make a Call for Technical Assistance" style="color:inherit;text-decoration:underline;">Click to Make a Call</a>
										</b>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<br /><div class="panel panel-success">
									<div class="panel-heading"><b>CO-DEVELOPER</b></div>
									<div class="panel-body" style="padding:3px;">
										<div style="width:100%;"><img src="Images/Developers/akash.JPG" style="width:100%;" data-toggle="tooltip" data-placement="top" title="Co Developer"/></div>
									</div>
									<div class="panel-heading">
										<b>
											<i id="g" class="fas fa-user"></i> : <a href="http://www.facebook.com/akash.kumarjaiswal.779" target="_blank" data-toggle="tooltip" data-placement="top"  title="Open Facebook Profile" class="link" style="color:inherit;text-decoration:underline;">Akash Kumar Jaiswal <span class="glyphicon glyphicon-new-window"></span></a><br />
											<i class="fas fa-briefcase"></i> : Student (2015 - 2019)<br />
											<i class="fas fa-graduation-cap"></i> : B.Tech (IT)<br />
											<i class="fas fa-envelope"></i> : <a href="mailto:akashkumarjaiswal9889@gmail.com" target="_blank" data-toggle="tooltip" data-placement="top"  title="Send e-Mail" class="link" style="color:inherit;text-decoration:underline;">click to send a mail <span class="glyphicon glyphicon-new-window"></span></a>                                       
										</b>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
			<br /><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5152.643778891752!2d77.73373710130325!3d28.975804325522574!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390c64cf581e1e19%3A0x7b16980636869e9c!2sSir+Chhotu+Ram+Institute+of+Engineering+and+Technology%2C+Meerut!5e1!3m2!1sen!2sin!4v1543699551902" style="border:none;height:50vh;width:100%;" allowfullscreen></iframe>
		</div></div>
		
		<footer>
			&copy; SCRIET, CCSU - campus Meerut | All Rights Reserved<br />
			Some Rights Reserved for <a href="http://cvgclub.org" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Official Website">CVGClub</a><br />
			Designed & Developed By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="LinkedIN Profile">samsberk</a><br />
			<a style="font-family:'Sedgwick Ave';" href="http://www.ccsuniversity.ac.in/scriet/" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Official Website" >Sir Chhotu Ram Institute of Engineering & Technology, Meerut</a>                        
		</footer>
		<div class="notcon" runat="server"><div class="notification-box" runat="server">
			<div class="row">
				<div class="col-xs-8"><span style="color:#b9b9b9;"><b><span class="glyphicon glyphicon-bell" style="color:#b9b9b9;"></span>&ensp;Notification</b></span></div>
				<div class="col-xs-4"><p style="text-align:right;"><span class="glyphicon glyphicon-remove close-notice" style="color:#b9b9b9;" data-toggle="tooltip" data-placement="bottom" title="Close Notification"></span></p></div>
			</div><hr style="margin:0px;margin-bottom:10px;background:gray;" />
			<asp:Label ID="info" runat="server" style="font-weight:300;color:#b9b9b9;"></asp:Label>
		</div></div>
		<asp:Label runat="server" ID="informer"></asp:Label>
    </form>
	<script src="MyJS/FooterJS.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(".will-close").hide();
		$("#slogin").attr("disabled", true);
		$("#clogin").attr("disabled", true);
		$("#alogin").attr("disabled", true);
		$("#deptxt").change(function () {
			var x = document.getElementById("deptxt");
			var n = document.getElementById("nullbtxt");
			var bt = document.getElementById("btechtxt");
			var mb = document.getElementById("mbatxt");
			var mc = document.getElementById("mcatxt");
			var ny = document.getElementById("nullytxt");
			var by = document.getElementById("bytxt");
			var my = document.getElementById("mytxt");
			if (x.value === "SELECT DEPARTMENT") {
				n.style.display = "block";
				bt.style.display = "none";
				mb.style.display = "none";
				mc.style.display = "none";
				ny.style.display = "block";
				by.style.display = "none";
				my.style.display = "none";
			}
			else if (x.value === "B.TECH") {
				n.style.display = "none";
				bt.style.display = "block";
				mb.style.display = "none";
				mc.style.display = "none";
				ny.style.display = "none";
				by.style.display = "block";
				my.style.display = "none";
			}
			else if (x.value === "MBA") {
				n.style.display = "none";
				bt.style.display = "none";
				mb.style.display = "block";
				mc.style.display = "none";
				ny.style.display = "none";
				by.style.display = "none";
				my.style.display = "block";
			}
			else if (x.value === "MCA") {
				n.style.display = "none";
				bt.style.display = "none";
				mb.style.display = "none";
				mc.style.display = "block";
				ny.style.display = "none";
				by.style.display = "none";
				my.style.display = "block";
			}
		});

		$("#cpass").focus(function () {
			var cp = document.getElementById("deptxt");
			var bt = document.getElementById("btechtxt");
			var mb = document.getElementById("mbatxt");
			var mc = document.getElementById("mcatxt");
			if (cp.value == "SELECT DEPARTMENT") {
				$("#clogin").attr("disabled", true);
			}
			else {
				if (cp.value == "B.TECH") {
					if (bt.value == "SELECT BRANCH")
						$("#clogin").attr("disabled", true);
					else
						$("#clogin").attr("disabled", false);
				}
				else if (cp.value == "MBA") {
					if (mb.value == "SELECT BRANCH")
						$("#clogin").attr("disabled", true);
					else
						$("#clogin").attr("disabled", false);
				}
				else if (cp.value == "MCA") {
					$("#clogin").attr("disabled", false);
				}
			}
		});
		$("#sid").blur(function () {
			var id = document.getElementById("sid");
			if (id.value === "") {
				$("#slogin").attr("disabled", true);
			}
			else {
				$("#slogin").attr("disabled", false);
			}
		});
		$("#aid").blur(function () {
			var id = document.getElementById("aid");
			if (id.value === "") {
				$("#alogin").attr("disabled", true);
			}
			else {
				$("#alogin").attr("disabled", false);
			}
		});
		$("#downbtn").click(function () {
			$(".will-close").show();
			$(".arr-down").hide()
			$(".front-cover").slideUp();
		});
		$("#upbtn").click(function () {
			$(".front-cover").slideDown();
			$(".will-close").hide();
			$(".arr-down").show()
		});
		
		if ($("#informer").text() === "IncorrectUseridorPassword") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
		else if ($("#informer").text() === "IncorrectDeptBranchorPassword") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
		else if ($("#informer").text() === "IncorrectAdminidPassword") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
		else if ($("#informer").text() === "PleaseUpdateYourProfile") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
	</script>
</body>
</html>
