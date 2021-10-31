<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TotalList.aspx.cs" Inherits="Admin_Zone_TotalList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Total List for Submitted Feedback : SCRIET Student Feedback System</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="SCRIET SFS, scriet sfs, scrietsfs, student feedback system, feedback system for scriet, feedback for scriet" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="../MyCSS/MyCSS.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="../MyJS/MyJS.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Kalam|Muli|Pacifico|Quicksand|Sedgwick+Ave" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/fontawesome.css"/>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-130418676-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-130418676-1');
	</script>
	<style>
		th, td{
			padding:2px 5px;
			text-align:center;
		}
		.header:hover{
			background:gray;
			border-color:white;
			color:white;
			font-weight:bold;
		}
		.bglgray{
			background:gray;
			color:white;
			border-color:white;
		}
		.hovtr{
			border:1px dotted lightgray;
		}
		.hovtr:hover{
			background:gray;
			border-color:white;
			color:white;
			font-weight:bold;
		}
	</style>
</head>
<body>
    <div id="loader"></div>
	<div class="after-click"></div>
    <form id="form1" runat="server">
        <nav class="nav navbar-fixed-top mymnav">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navmenu"><span class="glyphicon glyphicon-user"></span> <asp:Label ID="username" runat="server"></asp:Label></button>
                    <a href="Home" class="navbar-brand mybrand click-on" style="margin-top:-3px;"><i class="fas fa-comments" style="font-size:30px;"></i> SCRIET-SFS</a>
                </div>
                <div id="navmenu" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right mynavmenu">
                        <li class="active"><a href="Admin_Home" class="click-on"><i class="fas fa-home"></i> DASHBOARD</a></li>
                        <li><a href="Admin_Logout" class="click-on"><span class="glyphicon glyphicon-off"></span> LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
		<div class="panel-body" style="min-height:100vh;padding:0px;border:none;">
			<div class="side-menu">
				<a href="Admin_Home" class="click-on"><span class="glyphicon glyphicon-th" style="border-top:1px solid gray;padding-left:20%;" data-toggle="tooltip" data-placement="right" title="DASHBOARD"></span></a>
				<a href="Coordinator_ID_Generator" class="click-on"><span class="glyphicon glyphicon-user" data-toggle="tooltip" data-placement="right" title="COORDINATOR ID MANAGER"></span></a>
				<a href="Change_Password_Admin" class="click-on"><span class="glyphicon glyphicon-lock" data-toggle="tooltip" data-placement="right" title="RESET PASSWORD"></span></a>
				<a href="Result_for_College_and_Infrastructure" class="click-on"><span class="glyphicon glyphicon-send" data-toggle="tooltip" data-placement="right" title="SUBMITTED FEEDBACK FOR COLLEGE & INFRASTRUCTURE"></span></a>
				<a href="Suggestions_for_College_and_Infrastructure" class="click-on"><span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="SUBMITTED SUGGESTIONS FOR COLLEGE & INFRASTRUCTURE"></span></a>
				<a href="Result_for_Teaching_and_Curriculum" class="click-on"><span class="glyphicon glyphicon-send" data-toggle="tooltip" data-placement="right" title="SUBMITTED FEEDBACK FOR TEACHING & CURRICULUM"></span></a>
				<a href="Suggestions_for_Teaching_and_Curriculum" class="click-on"><span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="SUBMITTED SUGGESTIONS FOR TEACHING & CURRICULUM"></span></a>
				<a href="Total_List" class="click-on"><span class="glyphicon glyphicon-list-alt now-open" data-toggle="tooltip" data-placement="right" title="TOTAL LIST OF STUDENT"></span></a>
			</div>
			<div class="side-menu-box">
				<div class="panel-body"><br />
					<div class="row">
						<div class="col-sm-6">
							<div class="info-box-wh">
								<h4><span class="glyphicon glyphicon-list-alt"></span> List of Feedback for College & Infrastructure :</h4><hr />
								<table style="width:100%;" border="1">
									<tr class="hovtr"><th>Total</th><td><asp:Label runat="server" ID="totfci"></asp:Label></td></tr>
									<tr class="hovtr"><th>Verified</th><td><asp:Label runat="server" ID="verfci"></asp:Label></td></tr>
									<tr class="hovtr"><th>Not-Verified</th><td><asp:Label runat="server" ID="nverfci"></asp:Label></td></tr>
									<tr class="hovtr"><th>Rejected</th><td><asp:Label runat="server" ID="rejfci"></asp:Label></td></tr>
								</table>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="info-box-wh">
								<h4><span class="glyphicon glyphicon-list-alt"></span> List of Feedback for Teaching & Curriculum :</h4><hr />
								<table style="width:100%;" border="1">
									<tr class="hovtr"><th>Total</th><td><asp:Label runat="server" ID="totftc"></asp:Label></td></tr>
									<tr class="hovtr"><th>Attendance >= 75%</th><td><asp:Label runat="server" ID="verfaeftc"></asp:Label></td></tr>
									<tr class="hovtr"><th>Attendance < 75%</th><td><asp:Label runat="server" ID="verfbftc"></asp:Label></td></tr>
									<tr class="hovtr"><th>Not-Verified</th><td><asp:Label runat="server" ID="nverftc"></asp:Label></td></tr>
									<tr class="hovtr"><th>Rejected</th><td><asp:Label runat="server" ID="rejftc"></asp:Label></td></tr>
								</table>
							</div>
						</div>
					</div><br />
					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-10">
							<h4><span class="glyphicon glyphicon-list-alt"></span> List of total Registered Students :</h4><hr />
							<div style="width:100%;overflow-x:auto;">
								<table style="width:100%;" border="1">
									<tr class="header"><th>Department</th><th>Branch</th><th>Year</th><th>Registered</th></tr>
									<tr><td rowspan="28">B.TECH</td><td rowspan="4">AGRICULTURE ENGINEERING</td><td>1<sup>st</sup> YEAR</td><td><asp:Label runat="server" ID="btag1ci"></asp:Label><asp:Label runat="server" ID="btag1tc"></asp:Label><asp:Label runat="server" ID="btag1reg"></asp:Label></td></tr>
									<tr><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="btag2ci"></asp:Label><asp:Label runat="server" ID="btag2tc"></asp:Label><asp:Label runat="server" ID="btag2reg"></asp:Label></td></tr>
									<tr><td>3<sup>rd</sup> YEAR</td><td><asp:Label runat="server" ID="btag3ci"></asp:Label><asp:Label runat="server" ID="btag3tc"></asp:Label><asp:Label runat="server" ID="btag3reg"></asp:Label></td></tr>
									<tr><td>4<sup>th</sup> YEAR</td><td><asp:Label runat="server" ID="btag4ci"></asp:Label><asp:Label runat="server" ID="btag4tc"></asp:Label><asp:Label runat="server" ID="btag4reg"></asp:Label></td></tr>
									<tr class="bglgray"><td rowspan="4">CHEMICAL ENGINEERING</td><td>1<sup>st</sup> YEAR</td><td><asp:Label runat="server" ID="btch1ci"></asp:Label><asp:Label runat="server" ID="btch1tc"></asp:Label><asp:Label runat="server" ID="btch1reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="btch2ci"></asp:Label><asp:Label runat="server" ID="btch2tc"></asp:Label><asp:Label runat="server" ID="btch2reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>3<sup>rd</sup> YEAR</td><td><asp:Label runat="server" ID="btch3ci"></asp:Label><asp:Label runat="server" ID="btch3tc"></asp:Label><asp:Label runat="server" ID="btch3reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>4<sup>th</sup> YEAR</td><td><asp:Label runat="server" ID="btch4ci"></asp:Label><asp:Label runat="server" ID="btch4tc"></asp:Label><asp:Label runat="server" ID="btch4reg"></asp:Label></td></tr>
									<tr><td rowspan="4">COMPUTER SCIENCE</td><td>1<sup>st</sup> YEAR</td><td><asp:Label runat="server" ID="btcs1ci"></asp:Label><asp:Label runat="server" ID="btcs1tc"></asp:Label><asp:Label runat="server" ID="btcs1reg"></asp:Label></td></tr>
									<tr><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="btcs2ci"></asp:Label><asp:Label runat="server" ID="btcs2tc"></asp:Label><asp:Label runat="server" ID="btcs2reg"></asp:Label></td></tr>
									<tr><td>3<sup>rd</sup> YEAR</td><td><asp:Label runat="server" ID="btcs3ci"></asp:Label><asp:Label runat="server" ID="btcs3tc"></asp:Label><asp:Label runat="server" ID="btcs3reg"></asp:Label></td></tr>
									<tr><td>4<sup>th</sup> YEAR</td><td><asp:Label runat="server" ID="btcs4ci"></asp:Label><asp:Label runat="server" ID="btcs4tc"></asp:Label><asp:Label runat="server" ID="btcs4reg"></asp:Label></td></tr>
									<tr class="bglgray"><td rowspan="4">ELECTRONICS & COMMUNICATION</td><td>1<sup>st</sup> YEAR</td><td><asp:Label runat="server" ID="btec1ci"></asp:Label><asp:Label runat="server" ID="btec1tc"></asp:Label><asp:Label runat="server" ID="btec1reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="btec2ci"></asp:Label><asp:Label runat="server" ID="btec2tc"></asp:Label><asp:Label runat="server" ID="btec2reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>3<sup>rd</sup> YEAR</td><td><asp:Label runat="server" ID="btec3ci"></asp:Label><asp:Label runat="server" ID="btec3tc"></asp:Label><asp:Label runat="server" ID="btec3reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>4<sup>th</sup> YEAR</td><td><asp:Label runat="server" ID="btec4ci"></asp:Label><asp:Label runat="server" ID="btec4tc"></asp:Label><asp:Label runat="server" ID="btec4reg"></asp:Label></td></tr>
									<tr><td rowspan="4">ELECTRONICS & INSTRUMENTATION</td><td>1<sup>st</sup> YEAR</td><td><asp:Label runat="server" ID="btei1ci"></asp:Label><asp:Label runat="server" ID="btei1tc"></asp:Label><asp:Label runat="server" ID="btei1reg"></asp:Label></td></tr>
									<tr><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="btei2ci"></asp:Label><asp:Label runat="server" ID="btei2tc"></asp:Label><asp:Label runat="server" ID="btei2reg"></asp:Label></td></tr>
									<tr><td>3<sup>rd</sup> YEAR</td><td><asp:Label runat="server" ID="btei3ci"></asp:Label><asp:Label runat="server" ID="btei3tc"></asp:Label><asp:Label runat="server" ID="btei3reg"></asp:Label></td></tr>
									<tr><td>4<sup>th</sup> YEAR</td><td><asp:Label runat="server" ID="btei4ci"></asp:Label><asp:Label runat="server" ID="btei4tc"></asp:Label><asp:Label runat="server" ID="btei4reg"></asp:Label></td></tr>
									<tr class="bglgray"><td rowspan="4">MECHANICAL ENGINEERING</td><td>1<sup>st</sup> YEAR</td><td><asp:Label runat="server" ID="btme1ci"></asp:Label><asp:Label runat="server" ID="btme1tc"></asp:Label><asp:Label runat="server" ID="btme1reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="btme2ci"></asp:Label><asp:Label runat="server" ID="btme2tc"></asp:Label><asp:Label runat="server" ID="btme2reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>3<sup>rd</sup> YEAR</td><td><asp:Label runat="server" ID="btme3ci"></asp:Label><asp:Label runat="server" ID="btme3tc"></asp:Label><asp:Label runat="server" ID="btme3reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>4<sup>th</sup> YEAR</td><td><asp:Label runat="server" ID="btme4ci"></asp:Label><asp:Label runat="server" ID="btme4tc"></asp:Label><asp:Label runat="server" ID="btme4reg"></asp:Label></td></tr>
									<tr><td rowspan="4">INFORMATION TECHNOLOGY</td><td>1<sup>st</sup> YEAR</td><td><asp:Label runat="server" ID="btit1ci"></asp:Label><asp:Label runat="server" ID="btit1tc"></asp:Label><asp:Label runat="server" ID="btit1reg"></asp:Label></td></tr>
									<tr><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="btit2ci"></asp:Label><asp:Label runat="server" ID="btit2tc"></asp:Label><asp:Label runat="server" ID="btit2reg"></asp:Label></td></tr>
									<tr><td>3<sup>rd</sup> YEAR</td><td><asp:Label runat="server" ID="btit3ci"></asp:Label><asp:Label runat="server" ID="btit3tc"></asp:Label><asp:Label runat="server" ID="btit3reg"></asp:Label></td></tr>
									<tr><td>4<sup>th</sup> YEAR</td><td><asp:Label runat="server" ID="btit4ci"></asp:Label><asp:Label runat="server" ID="btit4tc"></asp:Label><asp:Label runat="server" ID="btit4reg"></asp:Label></td></tr>
									<tr><td rowspan="4">MBA</td><td rowspan="2" class="bglgray">MBA</td><td class="bglgray">1<sup>st</sup> YEAR</td><td class="bglgray"><asp:Label runat="server" ID="mb1ci"></asp:Label><asp:Label runat="server" ID="mb1tc"></asp:Label><asp:Label runat="server" ID="mb1reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="mb2ci"></asp:Label><asp:Label runat="server" ID="mb2tc"></asp:Label><asp:Label runat="server" ID="mb2reg"></asp:Label></td></tr>
									<tr><td rowspan="2">MBA (HA)</td><td>1<sup>st</sup> YEAR</td><td><asp:Label runat="server" ID="mbha1ci"></asp:Label><asp:Label runat="server" ID="mbha1tc"></asp:Label><asp:Label runat="server" ID="mbha1reg"></asp:Label></td></tr>
									<tr><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="mbha2ci"></asp:Label><asp:Label runat="server" ID="mbha2tc"></asp:Label><asp:Label runat="server" ID="mbha2reg"></asp:Label></td></tr>
									<tr><td rowspan="2">MCA</td><td class="bglgray">-</td><td class="bglgray">1<sup>st</sup> YEAR</td><td class="bglgray"><asp:Label runat="server" ID="mc1ci"></asp:Label><asp:Label runat="server" ID="mc1tc"></asp:Label><asp:Label runat="server" ID="mc1reg"></asp:Label></td></tr>
									<tr class="bglgray"><td>-</td><td>2<sup>nd</sup> YEAR</td><td><asp:Label runat="server" ID="mc2ci"></asp:Label><asp:Label runat="server" ID="mc2tc"></asp:Label><asp:Label runat="server" ID="mc2reg"></asp:Label></td></tr>
								</table>
							</div>
						</div>
						<div class="col-sm-1"></div>
					</div>
				</div>
			</div>
		</div><br />
		<footer >
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
	<script src="../MyJS/FooterJS.js"></script>
</body>
</html>
