using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Student_Zone_Default : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{

		cmd = "select * from SRegistration where EmailID='" + Session["sid"] + "'";
		DataTable dsd = dm.SelectQuary(cmd);
		if (dsd.Rows.Count > 0)
		{
			username.Text = dsd.Rows[0][1].ToString();
		}
		else
		{
			//Response.Redirect("Home");
		}
	}
}