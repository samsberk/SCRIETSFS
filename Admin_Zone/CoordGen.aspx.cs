using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Zone_CoordGen : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.QueryString["information"] == null)
			Response.Redirect("Coordinator_ID_Generator?information=" + em.EncryptMyData("DoNotShowAnything") + "");
		string cmd = "select * from AdminSFS where AdminID='" + Session["aid"] + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			username.Text = dt.Rows[0][0].ToString();
		}
		else
		{
			Response.Redirect("Home");
		}
		string str = em.DecryptMyData(Request.QueryString["information"]);
		if (str == "AlreadyRegistered")
		{
			informer.Text = "AlreadyRegistered";
			info.Text = "This email id is already registered for a coordinator. Please enter another email.";
		}
		else if (str == "QueryNotSubmitted")
		{
			informer.Text = "QueryNotSubmitted";
			info.Text = "Something went wrong, Please try again later.";
		}
		else if (str == "SuccessfullyRegistered")
		{
			informer.Text = "SuccessfullyRegistered";
			info.Text = "Coordinator ID Successfully genereted & password was sent to given E-Mail ID.";
		}

	}
	protected void regsubbtn_Click(object sender, EventArgs e)
	{
		string dep, br = "Branch", pas;
		string cap = gc.getcode();
		pas = em.EncryptMyData(cap);
		dep = deptxt.SelectedValue;
		if (deptxt.SelectedValue == "B.TECH")
			br = btechtxt.SelectedValue;
		else if (deptxt.SelectedValue == "MBA")
			br = mbatxt.SelectedValue;
		else if (deptxt.SelectedValue == "MCA")
			br = mcatxt.SelectedValue;
		cmd = "select * from Coordinator where EmailID='" + emailtxt.Text + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			Response.Redirect("Coordinator_ID_Generator?information=" + em.EncryptMyData("AlreadyRegistered") + "");
		}
		else
		{
			cmd = "insert into Coordinator values('" + emailtxt.Text.ToString() + "','" + fntxt.Text.ToUpper() + "','" + dep.ToUpper() + "','" + br.ToUpper() + "','" + contxt.Text.ToString() + "','" + pas + "','" + DateTime.Now.ToString() + "',0,'" + DateTime.Now.ToString() + "')";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				cmd = "From <i>Director SCRIET,</i><br><br>Hello Mr/Mrs " + fntxt.Text.ToUpper() + "<br> inform to you that your ID for SFS account is generated.<br><b>Department= " + dep + "<br>Branch= " + br + "<br>Password= " + cap + "</b><br><br><br><br><i>For any Query:<br>Mr. Shivam Kumar Vishwakarma<br>Information Technology<br>Contact: 9565709296<br>or Mail at: samsberk@gmail.com</i>";
				mm.SendMail(emailtxt.Text, "Your SFS ID", cmd);
				Response.Redirect("Coordinator_ID_Generator?information=" + em.EncryptMyData("SuccessfullyRegistered") + "");
			}
			else
				Response.Redirect("Coordinator_ID_Generator?information=" + em.EncryptMyData("QueryNotSubmitted") + "");
		}
	}
}