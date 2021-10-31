<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CPassword.aspx.cs" Inherits="Coordinator_Zone_CPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coordinator Change Password : SCRIET Student Feedback System</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="SCRIET SFS, scriet sfs, scrietsfs, student feedback system, feedback system for scriet, feedback for scriet" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="../MyCSS/MyCSS.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src='https://www.google.com/recaptcha/api.js'></script>
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
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8"><br />
							<h4><span class="glyphicon glyphicon-edit"></span> Reset Password</h4><hr />
							<div class="input-group">
                                <span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Old Password"><i class="fas fa-key"></i></span>
                                <asp:TextBox ID="opass" TextMode="Password" CssClass="form-control mytxt" runat="server" placeholder="Enter Old Password" MaxLength="20" required="true" style="text-transform:none;"></asp:TextBox>
                            </div>
							<div class="input-group">
                                <span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter New Password"><i class="fas fa-key"></i></span>
                                <asp:TextBox ID="npass" TextMode="Password" CssClass="form-control mytxt" runat="server" placeholder="Enter New Password" MaxLength="20" required="true" style="text-transform:none;"></asp:TextBox>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Re-enter New Password"><i class="fas fa-key"></i></span>
                                <asp:TextBox ID="repass" TextMode="Password" CssClass="form-control mytxt" runat="server" placeholder="Re-enter New Password" MaxLength="20" required="true" style="text-transform:none;"></asp:TextBox>
                            </div><br />
                            <asp:CheckBox ID="agrtnc" runat="server" Text="&ensp;Agree"/><br /><br />
                            <asp:Button ID="sub" runat="server" CssClass="btn btn-success click-on" OnClick="sub_Click" />
							
						</div>
						<div class="col-md-2"></div>
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
		$("#sub").attr("disabled", true);
        $("#sub").val("Please agree before submit");
        $("#agrtnc").bind("change", function () {
            var chk = document.getElementById("agrtnc");
            var op = document.getElementById("opass");
            var np = document.getElementById("npass");
            var rp = document.getElementById("repass");
            if (chk.checked == true) {
                if (op.value == "") {
                    alert("Please enter old password first.");
					chk.checked = false;
					op.focus();
                }
                else if (np.value == "")
                {
                    alert("Enter new password first.");
					chk.checked = false;
					np.focus();
                }
                else if (np.value != rp.value) {
                    alert("Password does not match.");
                    rp.value = "";
					chk.checked = false;
					rp.focus();
                }
                else {
                    $("#sub").attr("disabled", false);
                    $("#sub").val("Submit");
                }
            }
            else {
                $("#sub").attr("disabled", true);
                $("#sub").val("Please agree T&C before submit");
            }
        });
		if ($("#informer").text() === "SuccessfullyChanged") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
		else if ($("#informer").text() === "IncorrectOldPassword") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
  
	</script>  
</body>
</html>
