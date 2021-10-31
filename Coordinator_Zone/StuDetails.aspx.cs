using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Coordinator_Zone_StuDetails : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		cmd = "select * from Coordinator where EmailID='" + Session["cid"] + "'";
		DataTable dtc = dm.SelectQuary(cmd);
		if (dtc.Rows.Count > 0)
		{
			string formail = em.DecryptMyData(Request.QueryString["for"]);
			string information = em.DecryptMyData(Request.QueryString["information"]);
			cmd = "select * from SRegistration where EmailID='" + formail + "'";
			DataTable dt = dm.SelectQuary(cmd);
			if (dt.Rows.Count > 0)
			{
				sid.Text = "" + dt.Rows[0][0];
				rolltxt.Text = "" + dt.Rows[0][1];
				nametxt.Text = dt.Rows[0][2].ToString() + " " + dt.Rows[0][3].ToString();
				dobtxt.Text = "" + dt.Rows[0][4];
				gentxt.Text = "" + dt.Rows[0][5];
				deptxt.Text = "" + dt.Rows[0][6];
				brtxt.Text = "" + dt.Rows[0][7];
				yeartxt.Text = "" + dt.Rows[0][8];
				contxt.Text = "" + dt.Rows[0][11];
				emailtxt.Text = "" + dt.Rows[0][0];
				regdtxt.Text = "" + dt.Rows[0][13];
				statxt.Text = "" + dt.Rows[0][16];
				atttxt.Text = "" + dt.Rows[0][17];
				stupic.ImageUrl = "~/Images/UserPics/" + dt.Rows[0][10].ToString();
			}
		}
		else
		{
			Response.Redirect("Home");
		}
	}


	protected void rej_Click(object sender, EventArgs e)
	{
		string formail = em.DecryptMyData(Request.QueryString["for"]);
		string information = em.DecryptMyData(Request.QueryString["information"]);
		string st = "REJECTED";
		cmd = "update SRegistration set Status='" + st + "' where EmailID='" + formail + "'";
		dm.ExInsertUpdateorDelete(cmd);
		Response.Redirect("Student_Verification_Management");
	}

	protected void subreg_Click(object sender, EventArgs e)
	{
		string formail = em.DecryptMyData(Request.QueryString["for"]);
		string information = em.DecryptMyData(Request.QueryString["information"]);
		string st = "VERIFIED", at;
		at = attndnc.SelectedValue;
		cmd = "update FeedbackTnC set Status='" + st + "', Attandance='" + at + "' where EmailID='" + formail + "'";
		dm.ExInsertUpdateorDelete(cmd);
		cmd = "update FeedbackCnI set Status='" + st + "' where EmailID='" + formail + "'";
		dm.ExInsertUpdateorDelete(cmd);
		cmd = "update SRegistration set Status='" + st + "', Attendance='" + at + "' where EmailID='" + formail + "'";
		dm.ExInsertUpdateorDelete(cmd);
		Response.Redirect("Student_Verification_Management");
	}
}