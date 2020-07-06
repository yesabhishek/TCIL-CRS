using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;


/// <summary>
/// Summary description for CMS_Model
/// </summary>
public class Model
{
    OleDbConnection con;
   // OleDbConnection conc;
	public Model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    
    private OleDbConnection Connect()
    {
       
        con = new OleDbConnection();
       
        con.ConnectionString = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source =C:/Users/nEW u/Documents/Visual Studio 2010//test.accdb  ; Persist Security Info = True";
        con.ConnectionString = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source =C:/Users/nEW u/Documents/Visual Studio 2010//test.accdb  ; Persist Security Info = True";
        con.Open();
        return con;
    }

    
    private  void disconnect()
    {
        con.Close();
    }

    public Property login(Property p)
    {
        try
        {
            DataSet ds = new DataSet();
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "Select p_no, user_name from test_abc where user_id = :User_Id and password = :Password";
            cmd.Parameters.Add(":User_Id", OleDbType.VarChar).Value = p.user_id;
            cmd.Parameters.Add(":Password", OleDbType.VarChar).Value = p.Password;
            cmd.Connection = Connect();
            OleDbDataAdapter adp = new OleDbDataAdapter(cmd);
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.Rows[0];
            if (dt.Rows.Count > 0)
            {
               // p.P_no = dr[0].ToString();
                p.user_id= dr[0].ToString();
            }
            else
            {
                p = null;
            }

        }
        catch (Exception ex)
        {
            p = null;
            ex.ToString();
        }
        disconnect();
        return p;
    }
    
}