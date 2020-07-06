using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
//using System.Configuration;  
//using System.Data.SqlClient; 
using System.Data;

namespace Tinplate
{
    public partial class facilitymanagementservices : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\nEW u\Documents\Visual Studio 2010\Projects\Tinplate\Tinplate\bin\\tinplate.accdb");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (!this.IsPostBack)
            /* {
                 string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                 string selectSQL = "SELECT * from ucomplaint";
                 SqlConnection con = new SqlConnection(connectionString);
                 SqlCommand cmd = new SqlCommand(selectSQL, con);
                 SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                 DataSet ds = new DataSet();
                 adapter.Fill(ds, "ucomplaint");

                 gridview.DataSource = ds;
                 gridview.DataBind();
             } */
            {
                dataset();
            }
        }
        public void dataset()
        {
            try
            {
                con.Open();

                string sql = "Select * from ucomplaint";
                OleDbDataAdapter d = new OleDbDataAdapter(sql, con);
                DataSet ds = new DataSet();
                d.Fill(ds);
                if (ds != null)
                {
                    gridview.DataSource = ds;
                    gridview.DataBind();
                }
                else
                {
                    Label1.Text = "NO DATA";
                }
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }

}