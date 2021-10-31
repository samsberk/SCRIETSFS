using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Zone_RFeedCnI : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		string cmd, t = "VERIFIED";
		int i, a1, a2, a3, a4, a5;
		cmd = "select * from AdminSFS where AdminID='" + Session["aid"] + "'";
		DataTable da = dm.SelectQuary(cmd);
		if (da.Rows.Count > 0)
		{
			username.Text = da.Rows[0][0].ToString();
			cmd = "Select * from FeedbackCnI where Status='" + t + "'";
			DataTable dfci = dm.SelectQuary(cmd);
			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][1] == "1")
					a1++;
				else if ("" + dfci.Rows[i][1] == "2")
					a2++;
				else if ("" + dfci.Rows[i][1] == "3")
					a3++;
				else if ("" + dfci.Rows[i][1] == "4")
					a4++;
				else if ("" + dfci.Rows[i][1] == "5")
					a5++;
			}
			//q11.Text = "" + a1.ToString();
			//q12.Text = "" + a2.ToString();
			//q13.Text = "" + a3.ToString();
			//q14.Text = "" + a4.ToString();
			//q15.Text = "" + a5.ToString();
			chart1.Text = "<script type='text/javascript'>" +
				"var ctx1 = document.getElementById('myChart1');" +
				"var myChart1 = new Chart(ctx1, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][2] == "1")
					a1++;
				else if ("" + dfci.Rows[i][2] == "2")
					a2++;
				else if ("" + dfci.Rows[i][2] == "3")
					a3++;
				else if ("" + dfci.Rows[i][2] == "4")
					a4++;
				else if ("" + dfci.Rows[i][2] == "5")
					a5++;
			}
			//q21.Text = "" + a1.ToString();
			//q22.Text = "" + a2.ToString();
			//q23.Text = "" + a3.ToString();
			//q24.Text = "" + a4.ToString();
			//q25.Text = "" + a5.ToString();
			chart2.Text = "<script type='text/javascript'>" +
				"var ctx2 = document.getElementById('myChart2');" +
				"var myChart2 = new Chart(ctx2, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][3] == "1")
					a1++;
				else if ("" + dfci.Rows[i][3] == "2")
					a2++;
				else if ("" + dfci.Rows[i][3] == "3")
					a3++;
				else if ("" + dfci.Rows[i][3] == "4")
					a4++;
				else if ("" + dfci.Rows[i][3] == "5")
					a5++;
			}
			//q31.Text = "" + a1.ToString();
			//q32.Text = "" + a2.ToString();
			//q33.Text = "" + a3.ToString();
			//q34.Text = "" + a4.ToString();
			//q35.Text = "" + a5.ToString();
			chart3.Text = "<script type='text/javascript'>" +
				"var ctx3 = document.getElementById('myChart3');" +
				"var myChart3 = new Chart(ctx3, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][4] == "1")
					a1++;
				else if ("" + dfci.Rows[i][4] == "2")
					a2++;
				else if ("" + dfci.Rows[i][4] == "3")
					a3++;
				else if ("" + dfci.Rows[i][4] == "4")
					a4++;
				else if ("" + dfci.Rows[i][4] == "5")
					a5++;
			}
			//q41.Text = "" + a1.ToString();
			//q42.Text = "" + a2.ToString();
			//q43.Text = "" + a3.ToString();
			//q44.Text = "" + a4.ToString();
			//q45.Text = "" + a5.ToString();
			chart4.Text = "<script type='text/javascript'>" +
				"var ctx4 = document.getElementById('myChart4');" +
				"var myChart4 = new Chart(ctx4, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][5] == "1")
					a1++;
				else if ("" + dfci.Rows[i][5] == "2")
					a2++;
				else if ("" + dfci.Rows[i][5] == "3")
					a3++;
				else if ("" + dfci.Rows[i][5] == "4")
					a4++;
				else if ("" + dfci.Rows[i][5] == "5")
					a5++;
			}
			//q51.Text = "" + a1.ToString();
			//q52.Text = "" + a2.ToString();
			//q53.Text = "" + a3.ToString();
			//q54.Text = "" + a4.ToString();
			//q55.Text = "" + a5.ToString();
			chart5.Text = "<script type='text/javascript'>" +
				"var ctx5 = document.getElementById('myChart5');" +
				"var myChart5 = new Chart(ctx5, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][6] == "1")
					a1++;
				else if ("" + dfci.Rows[i][6] == "2")
					a2++;
				else if ("" + dfci.Rows[i][6] == "3")
					a3++;
				else if ("" + dfci.Rows[i][6] == "4")
					a4++;
				else if ("" + dfci.Rows[i][6] == "5")
					a5++;
			}
			//q61.Text = "" + a1.ToString();
			//q62.Text = "" + a2.ToString();
			//q63.Text = "" + a3.ToString();
			//q64.Text = "" + a4.ToString();
			//q65.Text = "" + a5.ToString();
			chart6.Text = "<script type='text/javascript'>" +
				"var ctx6 = document.getElementById('myChart6');" +
				"var myChart6 = new Chart(ctx6, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][7] == "1")
					a1++;
				else if ("" + dfci.Rows[i][7] == "2")
					a2++;
				else if ("" + dfci.Rows[i][7] == "3")
					a3++;
				else if ("" + dfci.Rows[i][7] == "4")
					a4++;
				else if ("" + dfci.Rows[i][7] == "5")
					a5++;
			}
			//q71.Text = "" + a1.ToString();
			//q72.Text = "" + a2.ToString();
			//q73.Text = "" + a3.ToString();
			//q74.Text = "" + a4.ToString();
			//q75.Text = "" + a5.ToString();
			chart7.Text = "<script type='text/javascript'>" +
				"var ctx7 = document.getElementById('myChart7');" +
				"var myChart7 = new Chart(ctx7, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][8] == "1")
					a1++;
				else if ("" + dfci.Rows[i][8] == "2")
					a2++;
				else if ("" + dfci.Rows[i][8] == "3")
					a3++;
				else if ("" + dfci.Rows[i][8] == "4")
					a4++;
				else if ("" + dfci.Rows[i][8] == "5")
					a5++;
			}
			//q81.Text = "" + a1.ToString();
			//q82.Text = "" + a2.ToString();
			//q83.Text = "" + a3.ToString();
			//q84.Text = "" + a4.ToString();
			//q85.Text = "" + a5.ToString();
			chart8.Text = "<script type='text/javascript'>" +
				"var ctx8 = document.getElementById('myChart8');" +
				"var myChart8 = new Chart(ctx8, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][9] == "1")
					a1++;
				else if ("" + dfci.Rows[i][9] == "2")
					a2++;
				else if ("" + dfci.Rows[i][9] == "3")
					a3++;
				else if ("" + dfci.Rows[i][9] == "4")
					a4++;
				else if ("" + dfci.Rows[i][9] == "5")
					a5++;
			}
			//q91.Text = "" + a1.ToString();
			//q92.Text = "" + a2.ToString();
			//q93.Text = "" + a3.ToString();
			//q94.Text = "" + a4.ToString();
			//q95.Text = "" + a5.ToString();
			chart9.Text = "<script type='text/javascript'>" +
				"var ctx9 = document.getElementById('myChart9');" +
				"var myChart9 = new Chart(ctx9, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][10] == "1")
					a1++;
				else if ("" + dfci.Rows[i][10] == "2")
					a2++;
				else if ("" + dfci.Rows[i][10] == "3")
					a3++;
				else if ("" + dfci.Rows[i][10] == "4")
					a4++;
				else if ("" + dfci.Rows[i][10] == "5")
					a5++;
			}
			//q101.Text = "" + a1.ToString();
			//q102.Text = "" + a2.ToString();
			//q103.Text = "" + a3.ToString();
			//q104.Text = "" + a4.ToString();
			//q105.Text = "" + a5.ToString();
			chart10.Text = "<script type='text/javascript'>" +
				"var ctx10 = document.getElementById('myChart10');" +
				"var myChart10 = new Chart(ctx10, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][11] == "1")
					a1++;
				else if ("" + dfci.Rows[i][11] == "2")
					a2++;
				else if ("" + dfci.Rows[i][11] == "3")
					a3++;
				else if ("" + dfci.Rows[i][11] == "4")
					a4++;
				else if ("" + dfci.Rows[i][11] == "5")
					a5++;
			}
			//q111.Text = "" + a1.ToString();
			//q112.Text = "" + a2.ToString();
			//q113.Text = "" + a3.ToString();
			//q114.Text = "" + a4.ToString();
			//q115.Text = "" + a5.ToString();
			chart11.Text = "<script type='text/javascript'>" +
				"var ctx11 = document.getElementById('myChart11');" +
				"var myChart11 = new Chart(ctx11, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][12] == "1")
					a1++;
				else if ("" + dfci.Rows[i][12] == "2")
					a2++;
				else if ("" + dfci.Rows[i][12] == "3")
					a3++;
				else if ("" + dfci.Rows[i][12] == "4")
					a4++;
				else if ("" + dfci.Rows[i][12] == "5")
					a5++;
			}
			//q121.Text = "" + a1.ToString();
			//q122.Text = "" + a2.ToString();
			//q123.Text = "" + a3.ToString();
			//q124.Text = "" + a4.ToString();
			//q125.Text = "" + a5.ToString();
			chart12.Text = "<script type='text/javascript'>" +
				"var ctx12 = document.getElementById('myChart12');" +
				"var myChart12 = new Chart(ctx12, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][13] == "1")
					a1++;
				else if ("" + dfci.Rows[i][13] == "2")
					a2++;
				else if ("" + dfci.Rows[i][13] == "3")
					a3++;
				else if ("" + dfci.Rows[i][13] == "4")
					a4++;
				else if ("" + dfci.Rows[i][13] == "5")
					a5++;
			}
			//q131.Text = "" + a1.ToString();
			//q132.Text = "" + a2.ToString();
			//q133.Text = "" + a3.ToString();
			//q134.Text = "" + a4.ToString();
			//q135.Text = "" + a5.ToString();
			chart13.Text = "<script type='text/javascript'>" +
				"var ctx13 = document.getElementById('myChart13');" +
				"var myChart13 = new Chart(ctx13, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][14] == "1")
					a1++;
				else if ("" + dfci.Rows[i][14] == "2")
					a2++;
				else if ("" + dfci.Rows[i][14] == "3")
					a3++;
				else if ("" + dfci.Rows[i][14] == "4")
					a4++;
				else if ("" + dfci.Rows[i][14] == "5")
					a5++;
			}
			//q141.Text = "" + a1.ToString();
			//q142.Text = "" + a2.ToString();
			//q143.Text = "" + a3.ToString();
			//q144.Text = "" + a4.ToString();
			//q145.Text = "" + a5.ToString();
			chart14.Text = "<script type='text/javascript'>" +
				"var ctx14 = document.getElementById('myChart14');" +
				"var myChart14 = new Chart(ctx14, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][15] == "1")
					a1++;
				else if ("" + dfci.Rows[i][15] == "2")
					a2++;
				else if ("" + dfci.Rows[i][15] == "3")
					a3++;
				else if ("" + dfci.Rows[i][15] == "4")
					a4++;
				else if ("" + dfci.Rows[i][15] == "5")
					a5++;
			}
			//q151.Text = "" + a1.ToString();
			//q152.Text = "" + a2.ToString();
			//q153.Text = "" + a3.ToString();
			//q154.Text = "" + a4.ToString();
			//q155.Text = "" + a5.ToString();
			chart15.Text = "<script type='text/javascript'>" +
				"var ctx15 = document.getElementById('myChart15');" +
				"var myChart15 = new Chart(ctx15, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";

			a1 = a2 = a3 = a4 = a5 = 0;
			for (i = 0; i < dfci.Rows.Count; i++)
			{
				if ("" + dfci.Rows[i][16] == "1")
					a1++;
				else if ("" + dfci.Rows[i][16] == "2")
					a2++;
				else if ("" + dfci.Rows[i][16] == "3")
					a3++;
				else if ("" + dfci.Rows[i][16] == "4")
					a4++;
				else if ("" + dfci.Rows[i][16] == "5")
					a5++;
			}
			//q161.Text = "" + a1.ToString();
			//q162.Text = "" + a2.ToString();
			//q163.Text = "" + a3.ToString();
			//q164.Text = "" + a4.ToString();
			//q165.Text = "" + a5.ToString();
			chart16.Text = "<script type='text/javascript'>" +
				"var ctx16 = document.getElementById('myChart16');" +
				"var myChart16 = new Chart(ctx16, {type: 'bar',data: {labels: ['Strongly Agree', 'Agree', 'Not Sure', 'Disagree', 'Strongly Disagree'],datasets: [{label: ' No. of Votes ',data: [" + a1 + "," + a2 + "," + a3 + "," + a4 + "," + a5 + "],backgroundColor: 'rgba(105,105,105,0.7)'}],borderColor: 'rgba(105,105,105,1)',borderWidth: 1}});" +
				"</script>";
		}
		else
		{
			Response.Redirect("Home");
		}
	}
}