using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Coordinator_Zone_StuReg : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		string st = "", col="SCRIET";
		int a, b;
		cmd = "select * from Coordinator where EmailID='" + Session["cid"] + "'";
		DataTable dc = dm.SelectQuary(cmd);
		if (dc.Rows.Count > 0)
		{
			cmd = "select * from SRegistration where Department='" + dc.Rows[0][2] + "' and Branch='" + dc.Rows[0][3] + "' and College='" + col + "'";
			DataTable dast = dm.SelectQuary(cmd);
			if (dast.Rows.Count > 0)
			{
				for (a = 0, b = 1; a < dast.Rows.Count; a++, b++)
				{
					if ("" + dast.Rows[a][16] != "NOT VERIFIED")
						allstu.Controls.Add(new Literal() { Text = "<tr><td>" + b + "</td><td><a href='Student_Details?for=" + em.EncryptMyData(dast.Rows[a][0].ToString()) + "&information=" + em.EncryptMyData("NothingtoShow") + "' class='link click-on' data-toggle='tooltip' data-placement='top' title='View Details for " + dast.Rows[a][0] + "'>" + dast.Rows[a][0] + "</a></td><td>" + dast.Rows[a][2]+" "+ dast.Rows[a][3] + "</td><td>" + dast.Rows[a][11] + "</td><td>" + dast.Rows[a][13] + "</td><td>" + dast.Rows[a][16] + "</td></tr>" });
					else
						allstu.Controls.Add(new Literal() { Text = "<tr><td>" + b + "</td><td><a href='Student_Details?for=" + em.EncryptMyData(dast.Rows[a][0].ToString()) + "&information=" + em.EncryptMyData("NothingtoShow") + "' class='link click-on' data-toggle='tooltip' data-placement='top' title='View Details for " + dast.Rows[a][0] + "'>" + dast.Rows[a][0] + "</a></td><td>" + dast.Rows[a][2] + " "+dast.Rows[a][3] + "</td><td>" + dast.Rows[a][11] + "</td><td>" + dast.Rows[a][13] + "</td><td>" + dast.Rows[a][16] + "</td></tr>" });
				}
			}
			else
				allstu.Controls.Add(new Literal() { Text = "<tr><td colspan='6'><b>No Registration found from your branch</b></td></tr>" });
			st = "VERIFIED";
			cmd = "select * from SRegistration where Department='" + dc.Rows[0][2] + "' and Branch='" + dc.Rows[0][3] + "' and College='" + col + "' and Status='" + st + "'";
			DataTable dvst = dm.SelectQuary(cmd);
			if (dvst.Rows.Count > 0)
			{
				for (a = 0, b = 1; a < dvst.Rows.Count; a++, b++)
				{
					varstu.Controls.Add(new Literal() { Text = "<tr><td>" + b + "</td><td><a href='Student_Details?for=" + em.EncryptMyData(dvst.Rows[a][0].ToString()) + "&information=" + em.EncryptMyData("NothingtoShow") + "' class='link click-on' data-toggle='tooltip' data-placement='top' title='View Details for " + dvst.Rows[a][0] + "'>" + dvst.Rows[a][0] + "</a></td><td>" + dvst.Rows[a][2] + " " + dvst.Rows[a][3] + "</td><td>" + dvst.Rows[a][11] + "</td><td>" + dvst.Rows[a][13] + "</td><td style='color:white;background:green;font-weight:bold;'>" + dvst.Rows[a][16] + "</td></tr>" });
				}
			}
			else
				varstu.Controls.Add(new Literal() { Text = "<tr><td colspan='6'><b>No Verified Registration found from your branch</b></td></tr>" });
			st = "NOT VERIFIED";
			cmd = "select * from SRegistration where Department='" + dc.Rows[0][2] + "' and Branch='" + dc.Rows[0][3] + "' and College='" + col + "' and Status='" + st + "'";
			DataTable dnvst = dm.SelectQuary(cmd);
			if (dnvst.Rows.Count > 0)
			{
				for (a = 0, b = 1; a < dnvst.Rows.Count; a++, b++)
				{
					nvarstu.Controls.Add(new Literal() { Text = "<tr><td>" + b + "</td><td><a href='Student_Details?for=" + em.EncryptMyData(dnvst.Rows[a][0].ToString()) + "&information=" + em.EncryptMyData("NothingtoShow") + "' class='link click-on' data-toggle='tooltip' data-placement='top' title='View Details for " + dnvst.Rows[a][0] + "'>" + dnvst.Rows[a][0] + "</a></td><td>" + dnvst.Rows[a][2] + " "+ dnvst.Rows[a][3] + "</td><td>" + dnvst.Rows[a][11] + "</td><td>" + dnvst.Rows[a][13] + "</td><td style='color:white;background:red;font-weight:bold;'>" + dnvst.Rows[a][16] + "</td></tr>" });
				}
			}
			else
				nvarstu.Controls.Add(new Literal() { Text = "<tr><td colspan='6'><b>No Un-Verified Registration found from your branch</b></td></tr>" });
			st = "REJECTED";
			cmd = "select * from SRegistration where Department='" + dc.Rows[0][2] + "' and Branch='" + dc.Rows[0][3] + "' and College='" + col + "' and Status='" + st + "'";
			DataTable drej = dm.SelectQuary(cmd);
			if (drej.Rows.Count > 0)
			{
				for (a = 0, b = 1; a < drej.Rows.Count; a++, b++)
				{
					rejstu.Controls.Add(new Literal() { Text = "<tr><td style='color:red;font-weight:bold;'>" + b + "</td><td style='color:red;font-weight:bold;'><a href='Student_Details?for=" + em.EncryptMyData(drej.Rows[a][0].ToString()) + "&information=" + em.EncryptMyData("NothingtoShow") + "' class='link click-on' data-toggle='tooltip' data-placement='top' title='View Details for " + drej.Rows[a][0] + "'>" + drej.Rows[a][0] + "</a></td><td style='color:red;font-weight:bold;'>" + drej.Rows[a][2] + " "+ drej.Rows[a][3] + "</td><td style='color:red;font-weight:bold;'>" + drej.Rows[a][11] + "</td><td style='color:red;font-weight:bold;'>" + drej.Rows[a][13] + "</td><td style='color:red;font-weight:bold;'>" + drej.Rows[a][16] + "</td></tr>" });
				}
			}
			else
				rejstu.Controls.Add(new Literal() { Text = "<tr><td colspan='6' style='color:red;font-weight:bold;'><b>No Rejected Registration found from your branch</b></td></tr>" });

		}
		else
			Response.Redirect("Home");
	}
}