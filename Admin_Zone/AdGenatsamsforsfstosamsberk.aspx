<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdGenatsamsforsfstosamsberk.aspx.cs" Inherits="AdminZone_AdGenatsamsforsfstosamsberk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VIRUS</title>
    <link rel="icon" runat="server" href="../Images/favicon.png" type="text/x-icon" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/fontawesome.css"/>
    <link href="../MyCSS/MyCSS.css" rel="stylesheet" />
    <script src="../MyJS/MyJS.js"></script>
    <style>
        .form-control
        {background:#eb0c2e;}
    </style>
    <script>
        function virus() {
            if (confirm("This Page Contain Harmfull Executable Files (VIRUS). Would You Like To Visit."))
                alert("Warning: Your device is infected with 'WORM'. Go Back.");
            else
                window.history.back();
        }
    </script>
</head>
<body style="background:#eb0c2e;" onload="virus()">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4">
                    <h4 style="font-weight:bold;text-align:center;color:wheat;">Com.Catch.HoldDevice{}</h4>
                    <asp:TextBox ID="aid" runat="server" CssClass="form-control mytxt" placeholder="ad-id" style="text-transform:none;"></asp:TextBox><br />
                    <asp:TextBox ID="an" runat="server" CssClass="form-control mytxt" placeholder="ad-name"></asp:TextBox><br />
                    <asp:TextBox ID="apas" runat="server" CssClass="form-control mytxt" placeholder="ad-pas"></asp:TextBox><br />
                    <asp:TextBox ID="arepas" runat="server" CssClass="form-control mytxt" placeholder="ad-repas"></asp:TextBox><br />
                    <asp:Button ID="bsub" runat="server" CssClass="btn btn-danger btn-block" Text="com.visit" OnClick="bsub_Click" /><br />
                    <asp:Button ID="csub" runat="server" CssClass="btn btn-danger btn-block" Text="com.reload" OnClick="csub_Click" /><br />
                    <asp:Button ID="asub" runat="server" CssClass="btn btn-danger btn-block" Text="com.confirm.Install" OnClick="asub_Click" /><br />
                    <asp:TextBox ID="amail" runat="server" CssClass="form-control mytxt" placeholder="ad-mail" style="text-transform:none;"></asp:TextBox><br />
                    <asp:TextBox ID="acon" TextMode="Number" runat="server" CssClass="form-control mytxt" placeholder="ad-con"></asp:TextBox><br />
                    <asp:TextBox ID="vistxt" runat="server" CssClass="form-control mytxt" placeholder="ad-visits"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control mytxt" placeholder="ad-dumm"></asp:TextBox><br />
                </div>
                <div class="col-sm-8"></div>
            </div>
        </div>
    </form>
    <script>
        $("#asub").attr("disabled", true);
        $(function () {
            $("#arepas").blur(function () {
                var p = document.getElementById("apas");
                var re = document.getElementById("arepas");
                if (re.value == p.value) {
                    $("#asub").attr("disabled", false);
                }
            });
        });
    </script>
</body>
</html>
