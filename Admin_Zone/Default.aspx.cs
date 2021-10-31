using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Zone_Default : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		cmd = "select * from AdminSFS where AdminID='" + Session["aid"] + "'";
		DataTable dad = dm.SelectQuary(cmd);
		if (dad.Rows.Count > 0)
		{
			username.Text = dad.Rows[0][0].ToString();
			aidlbl.Text = dad.Rows[0][0].ToString();
		}
		else
		{
			Response.Redirect("Home");
		}
	}
}