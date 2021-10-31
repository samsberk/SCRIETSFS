using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_AdGenatsamsforsfstosamsberk : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void asub_Click(object sender, EventArgs e)
    {
        string cmd, pas;
        pas = em.EncryptMyData(apas.Text);
        cmd = "select * from AdminSFS where AdminID='" + aid.Text + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if(dt.Rows.Count>0)
        {
            Response.Write("<script>alert('Already infected.')</script>");
        }
        else
        {
            cmd = "insert into AdminSFS values('" + aid.Text + "','" + an.Text.ToUpper() + "','" + amail.Text.ToString() + "','" + acon.Text.ToString() + "','" + pas + "','" + DateTime.Now.ToString() + "',0,'" + DateTime.Now.ToString() + "')";
            if(dm.ExInsertUpdateorDelete(cmd))
            {
                Response.Write("<script>alert('Successfully infected.')</script>");
                aid.Text = "";
                apas.Text = "";
                an.Text = "";
                arepas.Text = "";
                amail.Text = "";
                acon.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Something went wrong.')</script>");
            }

        }
    }
    protected void bsub_Click(object sender, EventArgs e)
    {
        string cmd = "insert into VisitCount values('" + vistxt.Text.ToString() + "')";
        if (dm.ExInsertUpdateorDelete(cmd))
        {
            Response.Write("<script>alert('Successfully infected.')</script>");
            vistxt.Text = "";
        }

    }
    protected void csub_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Congratulations, Your device will blast in just 5 second.')</script>");
    }
}