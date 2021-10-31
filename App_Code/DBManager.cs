using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBManager
/// </summary>
public class DBManager
{
    SqlConnection cn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=escriet;Integrated Security=True");

    public bool ExInsertUpdateorDelete(string ycmd)
    {
        SqlCommand mycmd = new SqlCommand(ycmd, cn);
        if (cn.State == ConnectionState.Closed)
        {
            cn.Open();
        }
        int NumofAffectedRows = mycmd.ExecuteNonQuery();
        cn.Close();
        if (NumofAffectedRows > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public DataTable SelectQuary(string commond)
    {
        SqlDataAdapter da = new SqlDataAdapter(commond, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}