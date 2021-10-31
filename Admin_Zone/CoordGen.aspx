<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CoordGen.aspx.cs" Inherits="Admin_Zone_CoordGen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coordinator ID Generator : SCRIET Student Feedback System</title>
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
				<a href="Coordinator_ID_Generator" class="click-on"><span class="glyphicon glyphicon-user now-open" data-toggle="tooltip" data-placement="right" title="COORDINATOR ID MANAGER"></span></a>
				<a href="Change_Password_Admin" class="click-on"><span class="glyphicon glyphicon-lock" data-toggle="tooltip" data-placement="right" title="RESET PASSWORD"></span></a>
				<a href="Result_for_College_and_Infrastructure" class="click-on"><span class="glyphicon glyphicon-send" data-toggle="tooltip" data-placement="right" title="SUBMITTED FEEDBACK FOR COLLEGE & INFRASTRUCTURE"></span></a>
				<a href="Suggestions_for_College_and_Infrastructure" class="click-on"><span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="SUBMITTED SUGGESTIONS FOR COLLEGE & INFRASTRUCTURE"></span></a>
				<a href="Result_for_Teaching_and_Curriculum" class="click-on"><span class="glyphicon glyphicon-send" data-toggle="tooltip" data-placement="right" title="SUBMITTED FEEDBACK FOR TEACHING & CURRICULUM"></span></a>
				<a href="Suggestions_for_Teaching_and_Curriculum" class="click-on"><span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="SUBMITTED SUGGESTIONS FOR TEACHING & CURRICULUM"></span></a>
				<a href="Total_List" class="click-on"><span class="glyphicon glyphicon-list-alt" data-toggle="tooltip" data-placement="right" title="TOTAL LIST OF STUDENT"></span></a>
			</div>
			<div class="side-menu-box">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-md-6"><br />
							<h4><span class="glyphicon glyphicon-check"></span> Generate Coordinator ID</h4><hr />
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter Valid Email ID"><span class="glyphicon glyphicon-envelope"></span></span>
								<asp:TextBox ID="emailtxt" CssClass="form-control" runat="server" placeholder="Email ID" MaxLength="40" TextMode="Email" style="text-transform:lowercase;"></asp:TextBox>
							</div>
							<div class="input-group">
                                <span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter Coordinator Name"><span class="glyphicon glyphicon-user"></span></span>
                                <asp:TextBox ID="fntxt" CssClass="form-control" runat="server" placeholder="Coordinator Name" MaxLength="25" style="text-transform:uppercase;"></asp:TextBox>
                            </div>
							<div class="input-group">
                                <span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Enter 10 Digit Only" style="padding-left:15px;padding-right:15px;"><i class="fas fa-mobile"></i></span>
                                <asp:TextBox ID="contxt" CssClass="form-control" runat="server" TextMode="Number" Placeholder="Contact Number"></asp:TextBox>
                            </div>
							<div class="input-group">
                                <span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Select Department"><span class="glyphicon glyphicon-education"></span></span>
                                <asp:DropDownList ID="deptxt" runat="server" CssClass="form-control" style="font-weight:bold;" requierd="true">
                                    <asp:ListItem>SELECT DEPARTMENT</asp:ListItem>
                                    <asp:ListItem>B.TECH</asp:ListItem>
                                    <asp:ListItem>MBA</asp:ListItem>
                                    <asp:ListItem>MCA</asp:ListItem>
                                </asp:DropDownList>
                            </div>
							<div class="input-group">
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
							<div style="text-align:left;font-weight:bold;margin-bottom:10px;">
								<asp:CheckBox ID="agrtnc" runat="server" Text="&ensp;Agree"/><br />
								<label style="color:red;">* Password will send to given E-Mail ID.</label>
							</div>
							<asp:Button ID="regsubbtn" runat="server" CssClass="btn btn-success click-on" style="margin-top:15px;" OnClick="regsubbtn_Click" />
						</div>
						<div class="col-md-3"></div>
					</div>
					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-10">
							<div class="info-box-wh" style="overflow-x:auto;">
								<h4 style="margin:0px;"><span class="glyphicon glyphicon-exclamation-sign"></span> Manage Coordinator ID</h4><hr />
								<asp:GridView runat="server" ID="managecoord" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="EmailID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%" HeaderStyle-CssClass="text-center">
									<AlternatingRowStyle BackColor="White" />
									<Columns>
										<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"/>
										<asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
										<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
										<asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
										<asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
										<asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
									</Columns>
									<FooterStyle BackColor="#CCCC99" />
									<HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"/>
									<PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
									<RowStyle BackColor="#F7F7DE" />
									<SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
									<SortedAscendingCellStyle BackColor="#FBFBF2" />
									<SortedAscendingHeaderStyle BackColor="#848384" />
									<SortedDescendingCellStyle BackColor="#EAEAD3" />
									<SortedDescendingHeaderStyle BackColor="#575357" />
								</asp:GridView>
								<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" DeleteCommand="DELETE FROM [Coordinator] WHERE [EmailID] = @original_EmailID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([Branch] = @original_Branch) OR ([Branch] IS NULL AND @original_Branch IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL))" InsertCommand="INSERT INTO [Coordinator] ([EmailID], [Name], [Department], [Branch], [Contact]) VALUES (@EmailID, @Name, @Department, @Branch, @Contact)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmailID], [Name], [Department], [Branch], [Contact] FROM [Coordinator]" UpdateCommand="UPDATE [Coordinator] SET [Name] = @Name, [Department] = @Department, [Branch] = @Branch, [Contact] = @Contact WHERE [EmailID] = @original_EmailID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([Branch] = @original_Branch) OR ([Branch] IS NULL AND @original_Branch IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL))">
									<DeleteParameters>
										<asp:Parameter Name="original_EmailID" Type="String" />
										<asp:Parameter Name="original_Name" Type="String" />
										<asp:Parameter Name="original_Department" Type="String" />
										<asp:Parameter Name="original_Branch" Type="String" />
										<asp:Parameter Name="original_Contact" Type="String" />
									</DeleteParameters>
									<InsertParameters>
										<asp:Parameter Name="EmailID" Type="String" />
										<asp:Parameter Name="Name" Type="String" />
										<asp:Parameter Name="Department" Type="String" />
										<asp:Parameter Name="Branch" Type="String" />
										<asp:Parameter Name="Contact" Type="String" />
									</InsertParameters>
									<UpdateParameters>
										<asp:Parameter Name="Name" Type="String" />
										<asp:Parameter Name="Department" Type="String" />
										<asp:Parameter Name="Branch" Type="String" />
										<asp:Parameter Name="Contact" Type="String" />
										<asp:Parameter Name="original_EmailID" Type="String" />
										<asp:Parameter Name="original_Name" Type="String" />
										<asp:Parameter Name="original_Department" Type="String" />
										<asp:Parameter Name="original_Branch" Type="String" />
										<asp:Parameter Name="original_Contact" Type="String" />
									</UpdateParameters>
								</asp:SqlDataSource>
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
	<script type="text/javascript">
		$(function () {
            $("#deptxt").change(function () {
                var x = document.getElementById("deptxt");
                var n = document.getElementById("nullbtxt");
                var bt = document.getElementById("btechtxt");
                var mb = document.getElementById("mbatxt");
                var mc = document.getElementById("mcatxt");
                var ny = document.getElementById("nullytxt");
                var by = document.getElementById("bytxt");
                var my = document.getElementById("mytxt");
                if (x.value == "SELECT DEPARTMENT") {
                    n.style.display = "block";                    
                    bt.style.display = "none";
                    mb.style.display = "none";
                    mc.style.display = "none";
                    ny.style.display = "block";
                    by.style.display = "none";
                    my.style.display = "none";
                }
                else if (x.value == "B.TECH") {
                    n.style.display = "none";
                    bt.style.display = "block";
                    mb.style.display = "none";
                    mc.style.display = "none";
                    ny.style.display = "none";
                    by.style.display = "block";
                    my.style.display = "none";
                }
                else if (x.value == "MBA") {
                    n.style.display = "none";
                    bt.style.display = "none";
                    mb.style.display = "block";
                    mc.style.display = "none";
                    ny.style.display = "none";
                    by.style.display = "none";
                    my.style.display = "block";
                }
                else if (x.value == "MCA") {
                    n.style.display = "none";
                    bt.style.display = "none";
                    mb.style.display = "none";
                    mc.style.display = "block";
                    ny.style.display = "none";
                    by.style.display = "none";
                    my.style.display = "block";
                }
            });
        });
		$("#contxt").blur(function () {
			var c = document.getElementById("contxt");
			if (c.value == "") {

			}
			else if (c.value < 999999999 || c.value > 9999999999) {
				alert("Invalid Contact Number. Enter 10 Digit Only.");
				c.value = null;
				c.focus();
			}
		});
        $("#regsubbtn").attr("disabled", true);
        $("#regsubbtn").val("Please agree before submit");
        $("#agrtnc").bind("change", function () {
            var t1 = document.getElementById("emailtxt");
            var t2 = document.getElementById("fntxt");
            var chk = document.getElementById("agrtnc");
            var dep = document.getElementById("deptxt");
            var bt = document.getElementById("btechtxt");
            var mba = document.getElementById("mbatxt");
            var mca = document.getElementById("mcatxt");
            var t3 = document.getElementById("contxt");
			if (chk.checked == true) {
				if (t1.value == "")
				{
					alert("Please Enter E-Mail ID first.");
					chk.checked = false;
					t1.focus();
				}
				else if (t2.value == "")
				{
					alert("Please Enter Coordinator Name first.");
					chk.checked = false;
					t2.focus();
				}
				else if (t3.value == "")
				{
					alert("Please Enter Contact Number first.");
					chk.checked = false;
					t3.focus();
				}
                else if (dep.value == "SELECT DEPARTMENT") {
                    alert("Please select Department first.");
					chk.checked = false;
				}
                else {
                    if (dep.value == "B.TECH") {
                        if (bt.value == "SELECT BRANCH") {
                            alert("Select Branch.");
                            chk.checked = false;
                        }
                        else {
                            $("#regsubbtn").attr("disabled", false);
                            $("#regsubbtn").val("Submit");
                        }
                    }
                    else if (dep.value == "MBA") {
                        if (mba.value == "SELECT BRANCH") {
                            alert("Select Branch.");
                            chk.checked = false;
                        }
                        else {
                            $("#regsubbtn").attr("disabled", false);
                            $("#regsubbtn").val("Submit");
                        }
                    }
                    else if (dep.value == "MCA") {
                        $("#regsubbtn").attr("disabled", false);
                        $("#regsubbtn").val("Submit");
                    }                  
                }
            }
            else {
                $("#regsubbtn").attr("disabled", true);
                $("#regsubbtn").val("Please agree before submit");
            }
		});
		if ($("#informer").text() === "AlreadyRegistered") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
		else if ($("#informer").text() === "SuccessfullyRegistered") {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 2000);
		}
	</script>
</body>
</html>
