<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuDetails.aspx.cs" Inherits="Coordinator_Zone_StuDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coordinator : Student Details for Verification : SCRIET Student Feedback System</title>
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
		td{
			font-family:muli;
			font-size:18px;
			padding:3px 5px;
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
                        <li class="active"><a href="Coordinator_Home" class="click-on"><i class="fas fa-home"></i> DASHBOARD</a></li>
                        <li><a href="Coordinator_Logout" class="click-on"><span class="glyphicon glyphicon-off"></span> LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
		<div class="panel-body" style="min-height:100vh;padding:0px;border:none;">
			<div class="side-menu">
				<a href="Coordinator_Home" class="click-on"><span class="glyphicon glyphicon-th" style="border-top:1px solid gray;padding-left:20%;" data-toggle="tooltip" data-placement="right" title="DASHBOARD"></span></a>
				<a href="Change_Password" class="click-on"><span class="glyphicon glyphicon-lock now-open" data-toggle="tooltip" data-placement="right" title="RESET PASSWORD"></span></a>
				<a href="Student_Verification_Management" class="click-on"><span class="glyphicon glyphicon-list-alt" data-toggle="tooltip" data-placement="right" title="VERIFY STUDENT DETAILS"></span></a>
			</div>
			<div class="side-menu-box">
				<div class="panel-body"><br />
					<ul class="breadcrumb">
						<li><a href="Coordinator_Home" class="link click-on">Home</a></li>
						<li><a href="Student_Verification_Management" class="link click-on">Management</a></li>
						<li class="active">Details</li>
					</ul>
					<h4>Student Details for <asp:Label runat="server" ID="sid"></asp:Label> :</h4><hr />
					<div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-5">
                            <table style="width:100%;">
                                <tr><td>Roll Number:</td><td><asp:Label ID="rolltxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Name:</td><td><asp:Label ID="nametxt" runat="server"></asp:Label></td></tr>
                                <tr><td>DOB:</td><td><asp:Label ID="dobtxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Gender:</td><td><asp:Label ID="gentxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Department:</td><td><asp:Label ID="deptxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Branch:</td><td><asp:Label ID="brtxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Year:</td><td><asp:Label ID="yeartxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Contact:</td><td><asp:Label ID="contxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Email ID:</td><td><asp:Label ID="emailtxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Reg. Date:</td><td><asp:Label ID="regdtxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Status:</td><td><asp:Label ID="statxt" runat="server"></asp:Label></td></tr>
                                <tr><td>Attendance:</td><td><asp:Label ID="atttxt" runat="server"></asp:Label></td></tr>
                            </table>                            
                        </div>
                        <div class="col-sm-3">
                            <asp:Image ID="stupic" runat="server" AlternateText="&ensp;Student Picture is not available" style="width:50%;" /><br />
                        </div>
                        <div class="col-sm-3">
                            <asp:CheckBox ID="agrtnc" runat="server" Text="&ensp;Confirm" /><br /><br />
                            <asp:Button ID="rej" runat="server" CssClass="btn btn-danger btn-block" Text="Reject" OnClick="rej_Click"  /><br />
                            <button type="button" id="vari" class="btn btn-success btn-block">Verify</button><br />
                            <div id="att">
                                <asp:DropDownList ID="attndnc" runat="server" CssClass="form-control" style="font-weight:bold;">
                                    <asp:ListItem>SELECT ATTANDANCE</asp:ListItem>
                                    <asp:ListItem>EQUAL OR ABOVE 75 PERCENT</asp:ListItem>
                                    <asp:ListItem>BELOW 75 PERCENT</asp:ListItem>
                                </asp:DropDownList><br />
                                <asp:Button ID="subreg" runat="server" CssClass="btn btn-success pull-right" Text="Submit" OnClick="subreg_Click" />
                            </div>
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
	<script src="../MyJS/FooterJS.js"></script>
	<script type="text/javascript">
		$("#rej").attr("disabled", true);
        $("#vari").attr("disabled", true);
        $("#subreg").attr("disabled", true);
        $("#att").hide();
        $("#vari").click(function () {
            $("#att").slideToggle();
        });
        $("#agrtnc").bind("change", function () {
            var ch = document.getElementById("agrtnc");
            if (ch.checked == true) {
                $("#rej").attr("disabled", false);
                $("#vari").attr("disabled", false);
            }
            else {
                $("#rej").attr("disabled", true);
                $("#vari").attr("disabled", true);
                $("#att").hide();
            }
        });
        $("#attndnc").bind("change", function () {
            var drp = document.getElementById("attndnc");
            if (drp.value == "SELECT ATTANDANCE") {
                $("#subreg").attr("disabled", true);
                $("#rej").attr("disabled", false);
                $("#vari").attr("disabled", false);
            }
            else {
                $("#subreg").attr("disabled", false);
                $("#rej").attr("disabled", true);
                $("#vari").attr("disabled", true);
            }
        });
	</script>
</body>
</html>
