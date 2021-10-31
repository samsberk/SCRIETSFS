using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;
using System.Web.Services;

public partial class Admin_Zone_CPassword : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.QueryString["information"] == null)
			Response.Redirect("Change_Password_Admin?information=" + em.EncryptMyData("DoNotShowAnything") + "");
		string cmd = "select * from AdminSFS where AdminID='" + Session["aid"] + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{

		}
		else
		{
			Response.Redirect("Home");
		}
		string str = em.DecryptMyData(Request.QueryString["information"]);
		if (str == "QueryNotSubmitted")
		{
			informer.Text = "QueryNotSubmitted";
			info.Text = "Something went wrong, Please try again later.";
		}
		else if (str == "SuccessfullyChanged")
		{
			informer.Text = "SuccessfullyChanged";
			info.Text = "Password Succesfully Changed.";
		}
		else if (str == "IncorrectOldPassword")
		{
			informer.Text = "IncorrectOldPassword";
			info.Text = "Incorrect old Password, Please Enter current login Password.";
		}
	}
	protected void sub_Click(object sender, EventArgs e)
	{
		string opas, npas;
		opas = em.EncryptMyData(opass.Text);
		npas = em.EncryptMyData(npass.Text);
		cmd = "select * from AdminSFS where AdminID='" + Session["aid"] + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (opas == "" + dt.Rows[0][4])
		{
			cmd = "update AdminSFS set Password='" + npas + "' where AdminID='" + Session["aid"] + "'";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				cmd = "Dear " + dt.Rows[0][1].ToString() + ",<br/>Your password was changed successfully at " + DateTime.Now.ToString() + " if, you do this then ignore this mail. Otherwise secure your account, or contact.<br><br><i>Mr. Shivam Kumar Vishwakarma<br>Information Technology<br>Contact: 9565709296<br>or mail at: samsberk@gmail.com</i>";
				mm.SendMail(dt.Rows[0][2].ToString(), "Password Updated for SCRIET-SFS", cmd);
				Response.Redirect("Change_Password_Admin?information=" + em.EncryptMyData("SuccessfullyChanged") + "");
			}
			else
			{
				Response.Redirect("Change_Password_Admin?information=" + em.EncryptMyData("QueryNotSubmitted") + "");
			}
		}
		else
		{
			Response.Redirect("Change_Password_Admin?information=" + em.EncryptMyData("IncorrectOldPassword") + "");
		}
	}
}