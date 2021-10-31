<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RFeedTnC.aspx.cs" Inherits="Admin_Zone_RFeedTnC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Result for Teaching & Curriculum : SCRIET Student Feedback System</title>
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
				<a href="Result_for_College_and_Infrastructure" class="click-on"><span class="glyphicon glyphicon-send" data-toggle="tooltip" data-placement="right" title="SUBMITTED FEEDBACK FOR COLLEGE & INFRASTRUCTURE"></span></a>
				<a href="Suggestions_for_College_and_Infrastructure" class="click-on"><span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="SUBMITTED SUGGESTIONS FOR COLLEGE & INFRASTRUCTURE"></span></a>
				<a href="Result_for_Teaching_and_Curriculum" class="click-on"><span class="glyphicon glyphicon-send now-open" data-toggle="tooltip" data-placement="right" title="SUBMITTED FEEDBACK FOR TEACHING & CURRICULUM"></span></a>
				<a href="Suggestions_for_Teaching_and_Curriculum" class="click-on"><span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="SUBMITTED SUGGESTIONS FOR TEACHING & CURRICULUM"></span></a>
				<a href="Total_List" class="click-on"><span class="glyphicon glyphicon-list-alt" data-toggle="tooltip" data-placement="right" title="TOTAL LIST OF STUDENT"></span></a>
			</div>
			<div class="side-menu-box">
				<div class="panel-body"><br />
					<h4><span class="glyphicon glyphicon-screenshot"></span> Students Feedback Result for Teaching & Curriculum :</h4><hr style="margin-bottom:0px;"/>
					<div class="row">
						<div class="col-md-6">
							<br /><p><b>1. The entire syllabus is completed in time :</b></p>
							<canvas id="myChart1"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q11" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q12" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q13" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q14" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q15" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><p><b>2. The teachers are punctual and regular in taking lectures and practicals :</b></p>
							<canvas id="myChart2"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q21" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q22" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q23" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q24" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q25" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>3. The teachers come well prepared for the class :</b></p>
							<canvas id="myChart3"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q31" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q32" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q33" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q34" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q35" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>4. The teachers encourage participation and discussion in class :</b></p>
							<canvas id="myChart4"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q41" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q42" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q43" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q44" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q45" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>5. The teachers’ attitude towards the students is friendly & helpful :</b></p>
							<canvas id="myChart5"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q51" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q52" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q53" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q54" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q55" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>6. Modern teaching aids, power point presentations, web-resources, etc. are used by the teachers while teaching :</b></p>
							<canvas id="myChart6"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q61" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q62" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q63" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q64" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q65" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>7. The teachers are available and accessible in the Department after lecture timings :</b></p>
							<canvas id="myChart7"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q71" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q72" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q73" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q74" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q75" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>8. Periodical assessments are conducted as per schedule :</b></p>
							<canvas id="myChart8"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q81" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q82" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q83" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q84" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q85" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>9. Attendance record of the students is maintained by the teachers :</b></p>
							<canvas id="myChart9"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q91" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q92" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q93" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q94" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q95" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>10. Regular and timely feedback is given on our performance :</b></p>
							<canvas id="myChart10"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q101" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q102" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q103" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q104" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q105" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>11. The evaluation process is fair and unbiased :</b></p>
							<canvas id="myChart11"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q111" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q112" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q113" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q114" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q115" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>12. The teachers guide the students for overall personality development of the students :</b></p>
							<canvas id="myChart12"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q121" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q122" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q123" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q124" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q125" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>13. The curriculum is designed so as to enhance our employability :</b></p>
							<canvas id="myChart13"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q131" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q132" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q133" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q134" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q135" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
							<br /><br /><p><b>14. The courses studied by me are relevant and the contents are revised at reasonable intervals :</b></p>
							<canvas id="myChart14"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q141" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q142" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q143" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q144" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q145" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<br /><br /><p><b>15. The courses studied by me have enhanced my knowledge as well as my skills and my capabilities :</b></p>
							<canvas id="myChart15"></canvas>
							<%--<table>
								<tr><td>Strongly Agree</td><td>: <asp:Label ID="q151" runat="server"></asp:Label></td></tr>
								<tr><td>Agree</td><td>: <asp:Label ID="q152" runat="server"></asp:Label></td></tr>
								<tr><td>Not Sure</td><td>: <asp:Label ID="q153" runat="server"></asp:Label></td></tr>
								<tr><td>Disagree</td><td>: <asp:Label ID="q154" runat="server"></asp:Label></td></tr>
								<tr><td>Strongly Disagree</td><td>: <asp:Label ID="q155" runat="server"></asp:Label></td></tr>
							</table>--%>
						</div>
						<div class="col-md-6">
                            
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
	<script src="../MyJS/FooterJS.js"></script>
	<script>
		//var ctx1 = document.getElementById("myChart1");
		//var ctx2 = document.getElementById("myChart2");
		//var ctx3 = document.getElementById("myChart3");
		//var ctx4 = document.getElementById("myChart4");
		//var ctx5 = document.getElementById("myChart5");
		//var ctx6 = document.getElementById("myChart6");
		//var ctx7 = document.getElementById("myChart7");
		//var ctx8 = document.getElementById("myChart8");
		//var ctx9 = document.getElementById("myChart9");
		//var ctx10 = document.getElementById("myChart10");
		//var ctx11 = document.getElementById("myChart11");
		//var ctx12 = document.getElementById("myChart12");
		//var ctx13 = document.getElementById("myChart13");
		//var ctx14 = document.getElementById("myChart14");
		//var ctx15 = document.getElementById("myChart15");
		//var myChart1 = new Chart(ctx1, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart2 = new Chart(ctx2, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart3 = new Chart(ctx3, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart4 = new Chart(ctx4, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart5 = new Chart(ctx5, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart6 = new Chart(ctx6, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart7 = new Chart(ctx7, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart8 = new Chart(ctx8, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart9 = new Chart(ctx9, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart10 = new Chart(ctx10, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart11 = new Chart(ctx11, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart12 = new Chart(ctx12, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart13 = new Chart(ctx13, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart14 = new Chart(ctx14, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});
		//var myChart15 = new Chart(ctx15, {
		//	type: 'bar',
		//	data: {
		//		labels: ["Strongly Agree", "Agree", "Not Sure", "Disagree", "Strongly Disagree"],
		//		datasets: [{
		//			label: ' No. of Votes ',
		//			data: [3, 19, 3, 5, 34.4],
		//			backgroundColor: 'rgba(105,105,105,0.7)'
		//		}],
		//		borderColor: 'rgba(105,105,105,1)',
		//		borderWidth: 1
		//	}
		//});

	</script>
</body>
</html>
