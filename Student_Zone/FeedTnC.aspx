<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedTnC.aspx.cs" Inherits="Student_Zone_FeedTnC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback About Teachning & Curriculum : SCRIET Student Feedback System</title>
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
</head>
<body>
    <div id="loader"></div>
	<div class="after-click"></div>
    <form id="form1" runat="server">
        <%--<nav class="nav navbar-fixed-top mymnav">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navmenu"><span class="glyphicon glyphicon-user"></span> <asp:Label ID="username" runat="server"></asp:Label></button>
                    <a href="Home" class="navbar-brand mybrand click-on" style="margin-top:-3px;"><i class="fas fa-comments" style="font-size:30px;"></i> SCRIET-SFS</a>
                </div>
                <div id="navmenu" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right mynavmenu">
                        <li><a href="Student_Home" class="click-on"><i class="fas fa-home"></i> DASHBOARD</a></li>
                        <li><a href="Student_Logout" class="click-on"><span class="glyphicon glyphicon-off"></span> LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </nav>--%>
		<div class="front-cover">
			<div class="panel-body login-body">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div class="back-box text-center">
							<span class="glyphicon glyphicon-ok" style="color:dimgray;font-size:200px;"></span>
							<h3>FEEDBACK SUBMITTED</h3>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							</p>
						</div>
					</div>
					<div class="col-sm-4"></div>
				</div>
			</div>
		</div>
		<div class="panel-body will-hide" style="padding-top:65px;min-height:100vh;">
            <div class="panel panel-primary" style="border:none;">
                <div class="panel-body" style="font-size:17px;">
                    <h3 style="">Feedback from You About Teaching & Curriculum <span class="glyphicon glyphicon-comment"></span> </h3><hr />
                    <p><b>Dear <asp:Label ID="udname" runat="server"></asp:Label>,</b><br />
                    &emsp;&emsp;This form has been designed to seek feedback from you to strengthen the
                    quality of teaching-learning environment and to improve the performance of the teachers.
                    The information provided by you will be kept confidential.</p>
                    <p><b>Directions:</b> For each item please indicate your level of agreement with the following statements by selecting appropriate option.</p><br />
                    <p style="color:red;">
                        <b><span class="glyphicon glyphicon-blackboard"></span> Important Notice for You :</b><br />
                        <i class="fas fa-arrow-right"></i> &ensp;All fields are mandatoty. (*)<br />
                        <i class="fas fa-arrow-right"></i> &ensp;You can submit this form only at once. So be carefull during option selection.<br />
                        <i class="fas fa-arrow-right"></i> &ensp;Your feedback will kept confidential.
                    </p><br />
                    <p><b>1. The entire syllabus is completed in time :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="ciofst1" runat="server" CssClass="myrdobtn" GroupName="ci1" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="ciofst2" runat="server" CssClass="myrdobtn" GroupName="ci1" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="ciofst3" runat="server" CssClass="myrdobtn" GroupName="ci1" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="ciofst4" runat="server" CssClass="myrdobtn" GroupName="ci1" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="ciofst5" runat="server" CssClass="myrdobtn" GroupName="ci1" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>2. The teachers are punctual and regular in taking lectures and practicals :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cilibst1" runat="server" CssClass="myrdobtn" GroupName="ci2" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cilibst2" runat="server" CssClass="myrdobtn" GroupName="ci2" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cilibst3" runat="server" CssClass="myrdobtn" GroupName="ci2" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cilibst4" runat="server" CssClass="myrdobtn" GroupName="ci2" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cilibst5" runat="server" CssClass="myrdobtn" GroupName="ci2" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>3. The teachers come well prepared for the class :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cionedu1" runat="server" CssClass="myrdobtn" GroupName="ci3" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cionedu2" runat="server" CssClass="myrdobtn" GroupName="ci3" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cionedu3" runat="server" CssClass="myrdobtn" GroupName="ci3" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cionedu4" runat="server" CssClass="myrdobtn" GroupName="ci3" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cionedu5" runat="server" CssClass="myrdobtn" GroupName="ci3" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>4. The teachers encourage participation and discussion in class :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="ciintfac1" runat="server" CssClass="myrdobtn" GroupName="ci4" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="ciintfac2" runat="server" CssClass="myrdobtn" GroupName="ci4" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="ciintfac3" runat="server" CssClass="myrdobtn" GroupName="ci4" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="ciintfac4" runat="server" CssClass="myrdobtn" GroupName="ci4" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="ciintfac5" runat="server" CssClass="myrdobtn" GroupName="ci4" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>5. The teachers’ attitude towards the students is friendly & helpful :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cipreslib1" runat="server" CssClass="myrdobtn" GroupName="ci5" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cipreslib2" runat="server" CssClass="myrdobtn" GroupName="ci5" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cipreslib3" runat="server" CssClass="myrdobtn" GroupName="ci5" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cipreslib4" runat="server" CssClass="myrdobtn" GroupName="ci5" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cipreslib5" runat="server" CssClass="myrdobtn" GroupName="ci5" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>6. Modern teaching aids, power point presentations, web-resources, etc. are used by the teachers while teaching :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cieqlab1" runat="server" CssClass="myrdobtn" GroupName="ci6" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cieqlab2" runat="server" CssClass="myrdobtn" GroupName="ci6" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cieqlab3" runat="server" CssClass="myrdobtn" GroupName="ci6" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cieqlab4" runat="server" CssClass="myrdobtn" GroupName="ci6" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cieqlab5" runat="server" CssClass="myrdobtn" GroupName="ci6" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>7. The teachers are available and accessible in the Department after lecture timings :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cirescol1" runat="server" CssClass="myrdobtn" GroupName="ci7" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cirescol2" runat="server" CssClass="myrdobtn" GroupName="ci7" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cirescol3" runat="server" CssClass="myrdobtn" GroupName="ci7" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cirescol4" runat="server" CssClass="myrdobtn" GroupName="ci7" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cirescol5" runat="server" CssClass="myrdobtn" GroupName="ci7" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>8. Periodical assessments are conducted as per schedule :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cisepcroom1" runat="server" CssClass="myrdobtn" GroupName="ci8" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cisepcroom2" runat="server" CssClass="myrdobtn" GroupName="ci8" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cisepcroom3" runat="server" CssClass="myrdobtn" GroupName="ci8" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cisepcroom4" runat="server" CssClass="myrdobtn" GroupName="ci8" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cisepcroom5" runat="server" CssClass="myrdobtn" GroupName="ci8" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>9. Attendance record of the students is maintained by the teachers :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="citwclean1" runat="server" CssClass="myrdobtn" GroupName="ci9" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="citwclean2" runat="server" CssClass="myrdobtn" GroupName="ci9" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="citwclean3" runat="server" CssClass="myrdobtn" GroupName="ci9" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="citwclean4" runat="server" CssClass="myrdobtn" GroupName="ci9" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="citwclean5" runat="server" CssClass="myrdobtn" GroupName="ci9" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>10. Regular and timely feedback is given on our performance :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicclean1" runat="server" CssClass="myrdobtn" GroupName="ci10" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicclean2" runat="server" CssClass="myrdobtn" GroupName="ci10" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicclean3" runat="server" CssClass="myrdobtn" GroupName="ci10" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicclean4" runat="server" CssClass="myrdobtn" GroupName="ci10" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cicclean5" runat="server" CssClass="myrdobtn" GroupName="ci10" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>11. The evaluation process is fair and unbiased :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicampge1" runat="server" CssClass="myrdobtn" GroupName="ci11" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicampge2" runat="server" CssClass="myrdobtn" GroupName="ci11" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicampge3" runat="server" CssClass="myrdobtn" GroupName="ci11" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicampge4" runat="server" CssClass="myrdobtn" GroupName="ci11" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cicampge5" runat="server" CssClass="myrdobtn" GroupName="ci11" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>12. The teachers guide the students for overall personality development of the students :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicleanw1" runat="server" CssClass="myrdobtn" GroupName="ci12" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicleanw2" runat="server" CssClass="myrdobtn" GroupName="ci12" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicleanw3" runat="server" CssClass="myrdobtn" GroupName="ci12" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicleanw4" runat="server" CssClass="myrdobtn" GroupName="ci12" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cicleanw5" runat="server" CssClass="myrdobtn" GroupName="ci12" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>13. The curriculum is designed so as to enhance our employability :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cibcaccessd1" runat="server" CssClass="myrdobtn" GroupName="ci13" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cibcaccessd2" runat="server" CssClass="myrdobtn" GroupName="ci13" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cibcaccessd3" runat="server" CssClass="myrdobtn" GroupName="ci13" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cibcaccessd4" runat="server" CssClass="myrdobtn" GroupName="ci13" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cibcaccessd5" runat="server" CssClass="myrdobtn" GroupName="ci13" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>14. The courses studied by me are relevant and the contents are revised at reasonable intervals :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicampps1" runat="server" CssClass="myrdobtn" GroupName="ci14" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicampps2" runat="server" CssClass="myrdobtn" GroupName="ci14" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicampps3" runat="server" CssClass="myrdobtn" GroupName="ci14" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cicampps4" runat="server" CssClass="myrdobtn" GroupName="ci14" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cicampps5" runat="server" CssClass="myrdobtn" GroupName="ci14" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <p><b>15. The courses studied by me have enhanced my knowledge as well as my skills and my capabilities :</b></p>
                    <div class="row">
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cigriprobs1" runat="server" CssClass="myrdobtn" GroupName="ci15" Text="&ensp;Strongly Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cigriprobs2" runat="server" CssClass="myrdobtn" GroupName="ci15" Text="&ensp;Agree" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cigriprobs3" runat="server" CssClass="myrdobtn" GroupName="ci15" Text="&ensp;Not Sure" /></div>
                        <div class="col-sm-2 mycol5"><asp:RadioButton ID="cigriprobs4" runat="server" CssClass="myrdobtn" GroupName="ci15" Text="&ensp;Disagree" /></div>
                        <div class="col-sm-3 mycol5"><asp:RadioButton ID="cigriprobs5" runat="server" CssClass="myrdobtn" GroupName="ci15" Text="&ensp;Strongly Disagree" /></div>
                    </div><br />
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6 mycol5"><label for="suggestxt">Suggestion (If any):</label><asp:TextBox ID="suggestxt" runat="server" MaxLength="240" TextMode="MultiLine" Rows="5" CssClass="form-control mytxt" placeholder="Enter Your Suggesstion in max. 100 word. (Optional) " style="resize:none;background:#eee;text-transform:none;font-family:kalam;font-size:18px;"></asp:TextBox></div>
                        <div class="col-sm-3"></div>
                    </div><br />
                    <div class="row">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4 mycol5"><asp:CheckBox ID="agrtnc" CssClass="myrdobtn" runat="server" Text="&ensp;Agree T&C" /><br /><br /><asp:Button ID="subsugges" runat="server" CssClass="btn btn-block btn-success" style="font-weight:bold;font-size:25px;" OnClick="subsugges_Click"/></div>
                        <div class="col-sm-4"></div>
                    </div><br />
                </div>
                
            </div>
        </div>
		<div class="notcon" runat="server"><div class="notification-box" runat="server">
			<div class="row">
				<div class="col-xs-8"><span style="color:#b9b9b9;"><b><span class="glyphicon glyphicon-bell" style="color:#b9b9b9;"></span>&ensp;Notification</b></span></div>
				<div class="col-xs-4"><p style="text-align:right;"><span class="glyphicon glyphicon-remove close-notice" style="color:#b9b9b9;" data-toggle="tooltip" data-placement="bottom" title="Close Notification"></span></p></div>
			</div><hr style="margin:0px;margin-bottom:10px;background:gray;" />
			<asp:Label ID="info" runat="server" style="font-weight:300;color:#b9b9b9;"></asp:Label>
		</div></div>
		<asp:Label ID="informer" runat="server"></asp:Label>
		<footer>
			&copy; SCRIET, CCSU - campus Meerut | All Rights Reserved<br />
			Some Rights Reserved for <a href="http://cvgclub.org" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Official Website">CVGClub</a><br />
			Designed & Developed By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="LinkedIN Profile">samsberk</a><br />
			<a style="font-family:'Sedgwick Ave';" href="http://www.ccsuniversity.ac.in/scriet/" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Official Website" >Sir Chhotu Ram Institute of Engineering & Technology, Meerut</a>                        
		</footer>
    </form>
	<script src="../MyJS/FooterJS.js"></script>
	<script>
        $(".front-cover").hide();
        $("#subsugges").attr("disabled", true);
        $("#subsugges").val("Please agree T&C before submit ");
        $("#agrtnc").bind("change", function () {
            var chk = document.getElementById("agrtnc");
            var q11 = document.getElementById("ciofst1");
            var q12 = document.getElementById("ciofst2");
            var q13 = document.getElementById("ciofst3");
            var q14 = document.getElementById("ciofst4");
            var q15 = document.getElementById("ciofst5");

            var q21 = document.getElementById("cilibst1");
            var q22 = document.getElementById("cilibst2");
            var q23 = document.getElementById("cilibst3");
            var q24 = document.getElementById("cilibst4");
            var q25 = document.getElementById("cilibst5");

            var q31 = document.getElementById("cionedu1");
            var q32 = document.getElementById("cionedu2");
            var q33 = document.getElementById("cionedu3");
            var q34 = document.getElementById("cionedu4");
            var q35 = document.getElementById("cionedu5");

            var q41 = document.getElementById("ciintfac1");
            var q42 = document.getElementById("ciintfac2");
            var q43 = document.getElementById("ciintfac3");
            var q44 = document.getElementById("ciintfac4");
            var q45 = document.getElementById("ciintfac5");

            var q51 = document.getElementById("cipreslib1");
            var q52 = document.getElementById("cipreslib2");
            var q53 = document.getElementById("cipreslib3");
            var q54 = document.getElementById("cipreslib4");
            var q55 = document.getElementById("cipreslib5");

            var q61 = document.getElementById("cieqlab1");
            var q62 = document.getElementById("cieqlab2");
            var q63 = document.getElementById("cieqlab3");
            var q64 = document.getElementById("cieqlab4");
            var q65 = document.getElementById("cieqlab5");

            var q71 = document.getElementById("cirescol1");
            var q72 = document.getElementById("cirescol2");
            var q73 = document.getElementById("cirescol3");
            var q74 = document.getElementById("cirescol4");
            var q75 = document.getElementById("cirescol5");

            var q81 = document.getElementById("cisepcroom1");
            var q82 = document.getElementById("cisepcroom2");
            var q83 = document.getElementById("cisepcroom3");
            var q84 = document.getElementById("cisepcroom4");
            var q85 = document.getElementById("cisepcroom5");

            var q91 = document.getElementById("citwclean1");
            var q92 = document.getElementById("citwclean2");
            var q93 = document.getElementById("citwclean3");
            var q94 = document.getElementById("citwclean4");
            var q95 = document.getElementById("citwclean5");

            var q101 = document.getElementById("cicclean1");
            var q102 = document.getElementById("cicclean2");
            var q103 = document.getElementById("cicclean3");
            var q104 = document.getElementById("cicclean4");
            var q105 = document.getElementById("cicclean5");

            var q111 = document.getElementById("cicampge1");
            var q112 = document.getElementById("cicampge2");
            var q113 = document.getElementById("cicampge3");
            var q114 = document.getElementById("cicampge4");
            var q115 = document.getElementById("cicampge5");

            var q121 = document.getElementById("cicleanw1");
            var q122 = document.getElementById("cicleanw2");
            var q123 = document.getElementById("cicleanw3");
            var q124 = document.getElementById("cicleanw4");
            var q125 = document.getElementById("cicleanw5");

            var q131 = document.getElementById("cibcaccessd1");
            var q132 = document.getElementById("cibcaccessd2");
            var q133 = document.getElementById("cibcaccessd3");
            var q134 = document.getElementById("cibcaccessd4");
            var q135 = document.getElementById("cibcaccessd5");

            var q141 = document.getElementById("cicampps1");
            var q142 = document.getElementById("cicampps2");
            var q143 = document.getElementById("cicampps3");
            var q144 = document.getElementById("cicampps4");
            var q145 = document.getElementById("cicampps5");

            var q151 = document.getElementById("cigriprobs1");
            var q152 = document.getElementById("cigriprobs2");
            var q153 = document.getElementById("cigriprobs3");
            var q154 = document.getElementById("cigriprobs4");
            var q155 = document.getElementById("cigriprobs5");
            if (chk.checked == true) {
                if (q11.checked != true && q12.checked != true && q13.checked != true && q14.checked != true && q15.checked != true) {
                    alert("Please Choose any Option for Question No: 1");
                    chk.checked = false;
                }
                else if (q21.checked != true && q22.checked != true && q23.checked != true && q24.checked != true && q25.checked != true) {
                    alert("Please Choose any Option for Question No: 2");
                    chk.checked = false;
                }
                else if (q31.checked != true && q32.checked != true && q33.checked != true && q34.checked != true && q35.checked != true) {
                    alert("Please Choose any Option for Question No: 3");
                    chk.checked = false;
                }
                else if (q41.checked != true && q42.checked != true && q43.checked != true && q44.checked != true && q45.checked != true) {
                    alert("Please Choose any Option for Question No: 4");
                    chk.checked = false;
                }
                else if (q51.checked != true && q52.checked != true && q53.checked != true && q54.checked != true && q55.checked != true) {
                    alert("Please Choose any Option for Question No: 5");
                    chk.checked = false;
                }
                else if (q61.checked != true && q62.checked != true && q63.checked != true && q64.checked != true && q65.checked != true) {
                    alert("Please Choose any Option for Question No: 6");
                    chk.checked = false;
                }
                else if (q71.checked != true && q72.checked != true && q73.checked != true && q74.checked != true && q75.checked != true) {
                    alert("Please Choose any Option for Question No: 7");
                    chk.checked = false;
                }
                else if (q81.checked != true && q82.checked != true && q83.checked != true && q84.checked != true && q85.checked != true) {
                    alert("Please Choose any Option for Question No: 8");
                    chk.checked = false;
                }
                else if (q91.checked != true && q92.checked != true && q93.checked != true && q94.checked != true && q95.checked != true) {
                    alert("Please Choose any Option for Question No: 9");
                    chk.checked = false;
                }
                else if (q101.checked != true && q102.checked != true && q103.checked != true && q104.checked != true && q105.checked != true) {
                    alert("Please Choose any Option for Question No: 10");
                    chk.checked = false;
                }
                else if (q111.checked != true && q112.checked != true && q113.checked != true && q114.checked != true && q115.checked != true) {
                    alert("Please Choose any Option for Question No: 11");
                    chk.checked = false;
                }
                else if (q121.checked != true && q122.checked != true && q123.checked != true && q124.checked != true && q125.checked != true) {
                    alert("Please Choose any Option for Question No: 12");
                    chk.checked = false;
                }
                else if (q131.checked != true && q132.checked != true && q133.checked != true && q134.checked != true && q135.checked != true) {
                    alert("Please Choose any Option for Question No: 13");
                    chk.checked = false;
                }
                else if (q141.checked != true && q142.checked != true && q143.checked != true && q144.checked != true && q145.checked != true) {
                    alert("Please Choose any Option for Question No: 14");
                    chk.checked = false;
                }
                else if (q151.checked != true && q152.checked != true && q153.checked != true && q154.checked != true && q155.checked != true) {
                    alert("Please Choose any Option for Question No: 15");
                    chk.checked = false;
                }
                else {
                    $("#subsugges").attr("disabled", false);
                    $("#subsugges").val("Submit Feedback ");
                }
            }
            else {
                $("#subsugges").attr("disabled", true);
                $("#subsugges").val("Please agree T&C before submit ");
            }
		});
		if ($("#informer").text() === "Submitted") {
			$(".front-cover").show();
			$(".will-hide").hide();
		}
		else if ($("#informer").text() === "success") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
    </script>
</body>
</html>
