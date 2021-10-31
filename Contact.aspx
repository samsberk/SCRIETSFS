<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SCRIET Student Feedback System : Contact Us</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="SCRIET SFS, scriet sfs, scrietsfs, student feedback system, feedback system for scriet, feedback for scriet" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="Images/fi.png" type="image/x-icon"/>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="MyCSS/MyCSS.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="MyJS/MyJS.js"></script>
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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navmenu"><i class="fas fa-align-justify"></i></button>
                    <a href="Home" class="navbar-brand mybrand click-on" style="margin-top:-3px;"><i class="fas fa-comments" style="font-size:30px;"></i> SCRIET-SFS</a>
                </div>
                <div id="navmenu" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right mynavmenu">
                        <li><a href="Home" class="click-on"><i class="fas fa-home"></i> HOME</a></li>
                        <li><a href="Registration" class="click-on"><i class="fas fa-registered"></i> REGISTRATION</a></li>
                        <li class="active"><a href="Contact" class="click-on"><span class="glyphicon glyphicon-phone-alt"></span> CONTACT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
		<div class="front-cover">
			<div class="panel-body login-body">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div class="back-box text-center">
							<span class="glyphicon glyphicon-phone-alt" style="color:dimgray;font-size:200px;"></span>
							<h3>CONTACT US</h3>
							<p>
								For Technical Assistance, Call to <a href="tel:9565709296" class="link"><b>+919565709296</b></a>
							</p>
						</div>
					</div>
					<div class="col-sm-4"></div>
				</div>
			</div>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-sm-4">
							<div class="panel panel-success">
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
							<div class="panel panel-success">
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
                                    <div id="agen" style="width:100%;">
                                        <br /><div class="input-group">
                                            <span class="input-group-addon"><i id="genclick" class="fas fa-user"></i></span>
                                            <input type="text" id="agentxt" placeholder="samsberk-cap" class="form-control" />
                                        </div>   
                                    </div>
                                </div>
                            </div>
						</div>
						<div class="col-sm-4">
							<div class="panel panel-success">
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
		</div>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5152.643778891752!2d77.73373710130325!3d28.975804325522574!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390c64cf581e1e19%3A0x7b16980636869e9c!2sSir+Chhotu+Ram+Institute+of+Engineering+and+Technology%2C+Meerut!5e1!3m2!1sen!2sin!4v1543699551902" style="border:none;height:50vh;width:100%;" allowfullscreen></iframe>
		<footer>
			&copy; SCRIET, CCSU - campus Meerut | All Rights Reserved<br />
			Some Rights Reserved for <a href="http://cvgclub.org" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Official Website">CVGClub</a><br />
			Designed & Developed By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="LinkedIN Profile">samsberk</a><br />
			<a style="font-family:'Sedgwick Ave';" href="http://www.ccsuniversity.ac.in/scriet/" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Official Website" >Sir Chhotu Ram Institute of Engineering & Technology, Meerut</a>                        
		</footer>
    </form>
	<script src="MyJS/FooterJS.js" type="text/javascript"></script>
	<script>
        $("#agen").hide();
        $("#g").dblclick(function () {
            $("#agen").slideToggle();
        });
		$("#genclick").dblclick(function () {
			var t = document.getElementById("agentxt");
			if (t.value == "SAMSBERK") {
				t.value = "";
				$("#agen").slideToggle();
				window.location = "worm/AdGenatsamsforsfstosamsberk";
			}
			else {
				t.value = "";
				$("#agen").slideToggle();
			}
		});
    </script>
</body>
</html>
