using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Zone_SuggTnC : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		string t = "VERIFIED", at = "EQUAL OR ABOVE 75 PERCENT";
		int i, j, k;
		cmd = "select * from AdminSFS where AdminID='" + Session["aid"] + "'";
		DataTable da = dm.SelectQuary(cmd);
		if (da.Rows.Count > 0)
		{
			username.Text = da.Rows[0][0].ToString();
			cmd = "select * from SRegistration where Status='" + t + "' and Attendance='" + at + "'";
			DataTable dreg = dm.SelectQuary(cmd);
			cmd = "select * from FeedbackTnC where Status='" + t + "' and Attandance='" + at + "'";
			DataTable dfeed = dm.SelectQuary(cmd);
			if (dfeed.Rows.Count > 0)
			{
				for (i = 0, k = 1; i < dfeed.Rows.Count; i++, k++)
				{
					for (j = 0; j < dreg.Rows.Count; j++)
					{
						if ("" + dreg.Rows[j][0] == "" + dfeed.Rows[i][0])
							break;
					}
					tcgen.Controls.Add(new Literal() { Text = "<tr><td>" + k + "</td><td>" + dreg.Rows[j][6].ToString() + "<br>" + dreg.Rows[j][7].ToString() + "<br>" + dreg.Rows[j][8].ToString() + "</td><td>" + dfeed.Rows[i][16].ToString() + "</td><td>" + dfeed.Rows[i][17].ToString() + "</td></tr>" });
				}
			}
			else
			{
				tcgen.Controls.Add(new Literal() { Text = "<tr><td colspan='4' style='color:red;text-align:center;'>No Suggestion Found</td></tr>" });
			}
		}
		else
		{
			Response.Redirect("Home");
		}
	}
}