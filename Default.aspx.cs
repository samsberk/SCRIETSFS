using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.QueryString["information"] == null)
			Response.Redirect("Home?information=" + em.EncryptMyData("DoNotShowAnything") + "");

		string information = em.DecryptMyData(Request.QueryString["information"]);
		if (information == "DoNotShowAnything")
		{
			if (Request.Cookies["student"] == null || Request.Cookies["student"].Equals("1"))
			{
				informer.Text = "new";
				info.Text = "&emsp;This website uses COOKIES to give you the best, most relevant experience. Using this website means you are <span style='color:lime;'>OK</span> with this.";
				HttpCookie scook = new HttpCookie("student");
				scook.Value = "new";
				scook.Expires = DateTime.Now.AddDays(10);
				Response.Cookies.Add(scook);
			}
			else
			{
				string sc = Request.Cookies["student"].Value.ToString();

			}
		}
		else if (information == "QueryNotSubmitted")
		{
			informer.Text = "QueryNotSubmitted";
			info.Text = "Something went wrong, Please try again later.";
		}
		else if (information == "IncorrectUseridorPassword")
		{
			informer.Text = "IncorrectUseridorPassword";
			info.Text = "Incorrect Email ID or Password.<br/>If you are not register on <a href='http://cvgclub.org/registration' target='_blank' class='link'>CVGClub</a> then Register yourself before Login for feedback.";
		}
		else if (information == "IncorrectDeptBranchorPassword")
		{
			informer.Text = "IncorrectDeptBranchorPassword";
			info.Text = "Incorrect Department, Branch or Password.";
		}
		else if (information == "IncorrectAdminidPassword")
		{
			informer.Text = "IncorrectAdminidPassword";
			info.Text = "Incorrect Admin ID or Password.";
		}
		else if (information == "PleaseUpdateYourProfile")
		{
			informer.Text = "PleaseUpdateYourProfile";
			info.Text = "Your Profile is not updated, Please Login <a href='http://cvgclub.org/Login' target='_blank' class='link'>Here</a> to Login & Update your Profile for Login in SCRIET-SFS.";
		}

	}
	protected void slogin_Click(object sender, EventArgs e)
	{
		string pas;
		pas = em.EncryptMyData(spass.Text);
		cmd = "select * from SRegistration where EmailID='" + sid.Text + "' and Password='" + pas + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			Response.Redirect("Student_Home");
			cmd = "update SRegistration set LCount=(LCount+1), LastLogin='" + DateTime.Now.ToString() + "' where EmailID='" + sid.Text + "'";
			if (dm.ExInsertUpdateorDelete(cmd) == true)
			{
				/*HttpCookie scook = new HttpCookie("student");
				scook.Value = sid.Text;
				scook.Expires = DateTime.Now.AddDays(10);
				Response.Cookies.Add(scook);*/
				Session["sid"] = sid.Text;
				Response.Redirect("Student_Home");
			}
			else
			{
				Response.Redirect("Home?information=" + em.EncryptMyData("QueryNotSubmitted") + "");
			}
		}
		else
		{
			cmd = "select * from Registration where EmailID='" + sid.Text + "' and Password='" + pas + "'";
			DataTable dtr = dm.SelectQuary(cmd);
			if (dtr.Rows.Count > 0)
			{
				Response.Redirect("Home?information=" + em.EncryptMyData("PleaseUpdateYourProfile") + "");
			}
			else
				Response.Redirect("Home?information=" + em.EncryptMyData("IncorrectUseridorPassword") + "");
		}
	}
	protected void clogin_Click(object sender, EventArgs e)
	{
		string pas, dep, br = "Branch";
		dep = deptxt.SelectedValue;
		if (deptxt.SelectedValue == "B.TECH")
			br = btechtxt.SelectedValue;
		else if (deptxt.SelectedValue == "MBA")
			br = mbatxt.SelectedValue;
		else if (deptxt.SelectedValue == "MCA")
			br = mcatxt.SelectedValue;
		pas = em.EncryptMyData(cpass.Text);
		cmd = "select * from Coordinator where Department='" + dep.ToUpper() + "' and Branch='" + br.ToUpper() + "' and Password='" + pas + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			cmd = "update Coordinator set LCount=(LCount + 1), LastLogin = '" + DateTime.Now.ToString() + "' where EmailID='" + dt.Rows[0][0].ToString() + "'";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				Session["cid"] = dt.Rows[0][0].ToString();
				Response.Redirect("Coordinator_Home");
			}
		}
		else
		{
			Response.Redirect("Home?information=" + em.EncryptMyData("IncorrectDeptBranchorPassword") + "");
		}
	}
	protected void alogin_Click(object sender, EventArgs e)
	{
		string pas;
		pas = em.EncryptMyData(apass.Text);
		cmd = "select * from AdminSFS where AdminID='" + aid.Text + "' and Password='" + pas + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			cmd = "update AdminSFS set LCount=(LCount+1), LastLogin='" + DateTime.Now.ToString() + "' where AdminID='" + aid.Text + "'";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				Session["aid"] = aid.Text;
				Response.Redirect("Admin_Home");
			}
		}
		else
		{
			Response.Redirect("Home?information=" + em.EncryptMyData("IncorrectAdminidPassword") + "");
		}
	}

}