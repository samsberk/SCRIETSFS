using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Student_Zone_FeedCnI : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		/*string cmd = "select * from SRegistration where EmailID='" + Session["sid"] + "'";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			udname.Text = "" + dt.Rows[0][1];
			username.Text = "" + dt.Rows[0][1];
			cmd = "select * from FeedbackCnI where EmailID='" + Session["sid"] + "'";
			DataTable dci = dm.SelectQuary(cmd);
			if (dci.Rows.Count > 0)
			{
				informer.Text = "Submitted";
			}
		}
		else
		{
			Response.Redirect("Home");
		}*/
	}
	protected void subsugges_Click(object sender, EventArgs e)
	{
		string f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16;
		cmd = "select * from SRegistration where EmailID='" + Session["sid"] + "'";
		DataTable dss = dm.SelectQuary(cmd);
		f1 = f2 = f3 = f4 = f5 = f6 = f7 = f8 = f9 = f10 = f11 = f12 = f13 = f14 = f15 = f16 = "NONE";
		if(dss.Rows.Count>0)
		{
			if (ciofst1.Checked == true)
				f1 = "1";
			else if (ciofst2.Checked == true)
				f1 = "2";
			else if (ciofst3.Checked == true)
				f1 = "3";
			else if (ciofst4.Checked == true)
				f1 = "4";
			else if (ciofst5.Checked == true)
				f1 = "5";

			if (cilibst1.Checked == true)
				f2 = "1";
			else if (cilibst2.Checked == true)
				f2 = "2";
			else if (cilibst3.Checked == true)
				f2 = "3";
			else if (cilibst4.Checked == true)
				f2 = "4";
			else if (cilibst5.Checked == true)
				f2 = "5";

			if (cionedu1.Checked == true)
				f3 = "1";
			else if (cionedu2.Checked == true)
				f3 = "2";
			else if (cionedu3.Checked == true)
				f3 = "3";
			else if (cionedu4.Checked == true)
				f3 = "4";
			else if (cionedu5.Checked == true)
				f3 = "5";

			if (ciintfac1.Checked == true)
				f4 = "1";
			else if (ciintfac2.Checked == true)
				f4 = "2";
			else if (ciintfac3.Checked == true)
				f4 = "3";
			else if (ciintfac4.Checked == true)
				f4 = "4";
			else if (ciintfac5.Checked == true)
				f4 = "5";

			if (cipreslib1.Checked == true)
				f5 = "1";
			else if (cipreslib2.Checked == true)
				f5 = "2";
			else if (cipreslib3.Checked == true)
				f5 = "3";
			else if (cipreslib4.Checked == true)
				f5 = "4";
			else if (cipreslib5.Checked == true)
				f5 = "5";

			if (cieqlab1.Checked == true)
				f6 = "1";
			else if (cieqlab2.Checked == true)
				f6 = "2";
			else if (cieqlab3.Checked == true)
				f6 = "3";
			else if (cieqlab4.Checked == true)
				f6 = "4";
			else if (cieqlab5.Checked == true)
				f6 = "5";

			if (cirescol1.Checked == true)
				f7 = "1";
			else if (cirescol2.Checked == true)
				f7 = "2";
			else if (cirescol3.Checked == true)
				f7 = "3";
			else if (cirescol4.Checked == true)
				f7 = "4";
			else if (cirescol5.Checked == true)
				f7 = "5";

			if (cisepcroom1.Checked == true)
				f8 = "1";
			else if (cisepcroom2.Checked == true)
				f8 = "2";
			else if (cisepcroom3.Checked == true)
				f8 = "3";
			else if (cisepcroom4.Checked == true)
				f8 = "4";
			else if (cisepcroom5.Checked == true)
				f8 = "5";

			if (citwclean1.Checked == true)
				f9 = "1";
			else if (citwclean2.Checked == true)
				f9 = "2";
			else if (citwclean3.Checked == true)
				f9 = "3";
			else if (citwclean4.Checked == true)
				f9 = "4";
			else if (citwclean5.Checked == true)
				f9 = "5";

			if (cicclean1.Checked == true)
				f10 = "1";
			else if (cicclean2.Checked == true)
				f10 = "2";
			else if (cicclean3.Checked == true)
				f10 = "3";
			else if (cicclean4.Checked == true)
				f10 = "4";
			else if (cicclean5.Checked == true)
				f10 = "5";

			if (cicampge1.Checked == true)
				f11 = "1";
			else if (cicampge2.Checked == true)
				f11 = "2";
			else if (cicampge3.Checked == true)
				f11 = "3";
			else if (cicampge4.Checked == true)
				f11 = "4";
			else if (cicampge5.Checked == true)
				f11 = "5";

			if (cicleanw1.Checked == true)
				f12 = "1";
			else if (cicleanw2.Checked == true)
				f12 = "2";
			else if (cicleanw3.Checked == true)
				f12 = "3";
			else if (cicleanw4.Checked == true)
				f12 = "4";
			else if (cicleanw5.Checked == true)
				f12 = "5";

			if (cibcaccessd1.Checked == true)
				f13 = "1";
			else if (cibcaccessd2.Checked == true)
				f13 = "2";
			else if (cibcaccessd3.Checked == true)
				f13 = "3";
			else if (cibcaccessd4.Checked == true)
				f13 = "4";
			else if (cibcaccessd5.Checked == true)
				f13 = "5";

			if (cicampps1.Checked == true)
				f14 = "1";
			else if (cicampps2.Checked == true)
				f14 = "2";
			else if (cicampps3.Checked == true)
				f14 = "3";
			else if (cicampps4.Checked == true)
				f14 = "4";
			else if (cicampps5.Checked == true)
				f14 = "5";

			if (cigriprobs1.Checked == true)
				f15 = "1";
			else if (cigriprobs2.Checked == true)
				f15 = "2";
			else if (cigriprobs3.Checked == true)
				f15 = "3";
			else if (cigriprobs4.Checked == true)
				f15 = "4";
			else if (cigriprobs5.Checked == true)
				f15 = "5";

			if (cifunplace1.Checked == true)
				f16 = "1";
			else if (cifunplace2.Checked == true)
				f16 = "2";
			else if (cifunplace3.Checked == true)
				f16 = "3";
			else if (cifunplace4.Checked == true)
				f16 = "4";
			else if (cifunplace5.Checked == true)
				f16 = "5";

			cmd = "insert into FeedbackCnI values('" + Session["sid"].ToString().ToLower() + "','" + f1 + "','" + f2 + "','" + f3 + "','" + f4 + "','" + f5 + "','" + f6 + "','" + f7 + "','" + f8 + "','" + f9 + "','" + f10 + "','" + f11 + "','" + f12 + "','" + f13 + "','" + f14 + "','" + f15 + "','" + f16 + "',N'" + suggestxt.Text + "','" + DateTime.Now.ToString() + "','" + dss.Rows[0][16].ToString() + "')";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				informer.Text = "success";
				info.Text = "You have successfully submitted your feedback. Thank You<br/>Refresh This Page <a href='Feedback_for_College_and_Infrastructure' class='link click-on'>Here</a> to Confirm.";
				agrtnc.Checked = false;
				suggestxt.Text = "";
			}
			else
			{
				Response.Write("<script>alert('Something went wrong, Please try again later. Thank You')</script>");
				agrtnc.Checked = false;
			}
		}
	}
}