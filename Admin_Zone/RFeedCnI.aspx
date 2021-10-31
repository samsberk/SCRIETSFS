<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RFeedCnI.aspx.cs" Inherits="Admin_Zone_RFeedCnI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Result for College & Infrastructure : SCRIET Student Feedback System</title>
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
	<style>
		td, th{
			font-size:16px;
		}
		p b{
			font-size:18px;
		}
		@media screen and (max-width: 768px) {
			p b {
				font-size: 12px;
			}
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
				<a href="Result_for_College_and_Infrastructure" class="click-on"><span class="glyphicon glyphicon-send now-open" data-toggle="tooltip" data-placement="right" title="SUBMITTED FEEDBACK FOR COLLEGE & INFRASTRUCTURE"></span></a>
				<a href="Suggestions_for_College_and_Infrastructure" class="click-on"><span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="SUBMITTED SUGGESTIONS FOR COLLEGE & INFRASTRUCTURE"></span></a>
				<a href="Result_for_Teaching_and_Curriculum" class="click-on"><span class="glyphicon glyphicon-send" data-toggle="tooltip" data-placement="right" title="SUBMITTED FEEDBACK FOR TEACHING & CURRICULUM"></span></a>
				<a href="Suggestions_for_Teaching_and_Curriculum" class="click-on"><span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="SUBMITTED SUGGESTIONS FOR TEACHING & CURRICULUM"></span></a>
				<a href="Total_List" class="click-on"><span class="glyphicon glyphicon-list-alt" data-toggle="tooltip" data-placement="right" title="TOTAL LIST OF STUDENT"></span></a>
			</div>
			<div class="side-menu-box">
				<div class="panel-body"><br />
					<h4><span class="glyphicon glyphicon-screenshot"></span> Feedback Result for College & Infrastructure :</h4><hr style="margin-bottom:0px;"/>
					<div class="row">
						<div class="col-md-6">
							<br /><p><b>1. The office staff in the college is cooperative and helpful :</b></p>
							<canvas id="myChart1"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q11" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q12" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q13" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q14" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q15" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><p><b>2. The library staff is cooperative and helpful :</b></p>
							<canvas id="myChart2"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q21" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q22" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q23" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q24" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q25" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>3. Online educational resources are available and accessible in the library :</b></p>
							<canvas id="myChart3"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q31" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q32" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q33" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q34" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q35" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>4. Internet facility provided in the Library is satisfactory :</b></p>
							<canvas id="myChart4"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q41" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q42" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q43" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q44" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q45" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>5. The prescribed books / reading materials are available in the library :</b></p>
							<canvas id="myChart5"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q51" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q52" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q53" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q54" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q55" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>6. Equipment in the lab(s) is in good working condition :</b></p>
							<canvas id="myChart6"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q61" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q62" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q63" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q64" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q65" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>7. Results are displayed by the college :</b></p>
							<canvas id="myChart7"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q71" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q72" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q73" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q74" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q75" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>8. Separate common rooms for girls and boys are available :</b></p>
							<canvas id="myChart8"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q81" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q82" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q83" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q84" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q85" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>9. Toilets / washrooms are clean and properly maintained :</b></p>
							<canvas id="myChart9"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q91" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q92" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q93" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q94" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q95" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>10. The classrooms are clean and well maintained :</b></p>
							<canvas id="myChart10"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q101" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q102" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q103" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q104" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q105" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>11. The campus is green and eco-friendly :</b></p>
							<canvas id="myChart11"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q111" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q112" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q113" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q114" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q115" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>12. Clean drinking water is available in the college campus :</b></p>
							<canvas id="myChart12"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q121" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q122" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q123" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q124" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q125" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>13. The buildings / classrooms are accessible to disabled persons :</b></p>
							<canvas id="myChart13"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q131" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q132" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q133" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q134" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q135" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>14. The campus has adequate power supply :</b></p>
							<canvas id="myChart14"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q141" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q142" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q143" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q144" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q145" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>15. Our grievances are redressed / problems are solved well in time :</b></p>
							<canvas id="myChart15"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q151" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q152" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q153" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q154" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q155" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>16. The functioning of the placement cell in the college is satisfactory:</b></p>
							<canvas id="myChart16"></canvas>
							<%--<table>
								<tr><td>Stongly Agree</td><td>: <asp:Label ID="q161" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q162" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q163" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q164" runat="server"></asp:Label></td></tr>
								<tr><td>Stongly Disagree</td><td>: <asp:Label ID="q165" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
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
	<asp:Label runat="server" ID="chart1"></asp:Label>
	<asp:Label runat="server" ID="chart2"></asp:Label>
	<asp:Label runat="server" ID="chart3"></asp:Label>
	<asp:Label runat="server" ID="chart4"></asp:Label>
	<asp:Label runat="server" ID="chart5"></asp:Label>
	<asp:Label runat="server" ID="chart6"></asp:Label>
	<asp:Label runat="server" ID="chart7"></asp:Label>
	<asp:Label runat="server" ID="chart8"></asp:Label>
	<asp:Label runat="server" ID="chart9"></asp:Label>
	<asp:Label runat="server" ID="chart10"></asp:Label>
	<asp:Label runat="server" ID="chart11"></asp:Label>
	<asp:Label runat="server" ID="chart12"></asp:Label>
	<asp:Label runat="server" ID="chart13"></asp:Label>
	<asp:Label runat="server" ID="chart14"></asp:Label>
	<asp:Label runat="server" ID="chart15"></asp:Label>
	<asp:Label runat="server" ID="chart16"></asp:Label>
	<script src="../MyJS/FooterJS.js"></script>
</body>
</html>
