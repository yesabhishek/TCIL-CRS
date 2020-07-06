using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Tinplate
{
    public partial class useracknowledgement : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\nEW u\Documents\Visual Studio 2010\Projects\Tinplate\Tinplate\bin\\tinplate.accdb");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
          
            if (IsPostBack == false)
            {
                complaint_id.Text = Request.QueryString["complaint_id"];

                Label1.Visible = false;
                complaint_id.Enabled = false;
                asset_no.Enabled = false;
                user_name.Enabled = false;
                department.Enabled = false;
                complaint_details.Enabled = false;
                recorded_time.Enabled = false;
                recorded_date.Enabled = false;
                contact_no.Enabled = false;
                attachment.Enabled = false;
                try
                {
                    con.Open();
                    // cmd.CommandText = "Select p_no, user_name from test_abc where user_id = :User_Id and password = :Password";
                    string sql = "Select * from ucomplaint where Complaint_ID ='" + complaint_id.Text + "'";
                    //string sql = "Select * from ucomplaint where Complaint_ID ='C002'";

                    OleDbDataAdapter d = new OleDbDataAdapter(sql, con);
                    DataSet ds = new DataSet();
                    d.Fill(ds);
                    // //complaint_id.Text = ((ds.Tables[0].Rows[0]
                    complaint_id.Text = ((ds.Tables[0].Rows[0].ItemArray[0]).ToString());
                    asset_no.Text = ((ds.Tables[0].Rows[0].ItemArray[1]).ToString());
                    user_name.Text = ((ds.Tables[0].Rows[0].ItemArray[2]).ToString());
                    department.Text = ((ds.Tables[0].Rows[0].ItemArray[3]).ToString());
                    contact_no.Text = ((ds.Tables[0].Rows[0].ItemArray[4]).ToString());
                    recorded_time.Text = ((ds.Tables[0].Rows[0].ItemArray[6]).ToString());
                    recorded_date.Text = ((ds.Tables[0].Rows[0].ItemArray[5]).ToString());
                    complaint_details.Text = ((ds.Tables[0].Rows[0].ItemArray[7]).ToString());
                    attachment.Text = ((ds.Tables[0].Rows[0].ItemArray[8]).ToString());
                    con.Close();
              //  dataset();


                }
                catch (Exception ex)
                {
                    Label2.Text = ex.ToString();
                }
            }

        }

      /*  public void dataset()
        {
            try
            {
                con.Open();
                // cmd.CommandText = "Select p_no, user_name from test_abc where user_id = :User_Id and password = :Password";
                string sql = "Select * from ucomplaint";
                //string sql = "Select * from ucomplaint where Complaint_ID ='C002'";

                OleDbDataAdapter d = new OleDbDataAdapter(sql, con);
                DataSet ds = new DataSet();
                d.Fill(ds);
                if (ds != null)
                {
                    grv_data.DataSource = ds;
                    grv_data.DataBind();
                }
                else
                {
                    Label2.Text = "NO data";
                }
                con.Close();


            }
            catch (Exception ex)
            {
                Label2.Text = ex.ToString();
            }
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {

           // Label1.Visible = true;
         

            try
            {

                con.Open();

                //string sql = "update ucomplaint set Asset_no ='" + asset_no.Text.Trim() + "',User_name ='" + user_name.Text.Trim() + "',Department='" + department.Text.Trim() + "',Contact_no='" + contact_no.Text.Trim() + "',Recorded_time='" + recorded_time.Text.Trim() + "',Recorded_date='" + recorded_date.Text.Trim() + "',complaint_detail ='" + complaint_details.Text.Trim() + "where Complaint_ID= 'C002'";
                string sql = "update ucomplaint set Asset_no ='" + asset_no.Text.Trim() + "',User_name ='" + user_name.Text.Trim() + "',Department='" + department.Text.Trim() + "',Contact_no='" + contact_no.Text.Trim() + "',Recorded_time='" + recorded_time.Text.Trim() + "',Recorded_date='" + recorded_date.Text.Trim() + "',complaint_detail ='" + complaint_details.Text.Trim() + "'where Complaint_ID='" + complaint_id.Text + "'";
                OleDbCommand cmd = new OleDbCommand(sql, con);
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    asset_no.Enabled = false;
                    user_name.Enabled = false;
                    department.Enabled = false;
                    complaint_details.Enabled = false;
                    recorded_date.Enabled = false;
                    recorded_time.Enabled = false;
                    contact_no.Enabled = false;
                    Label2.Text = "done";
                }
                else
                {
                    Label2.Text = "error";
                }
                con.Close();
                Label1.Visible = true;
               // dataset();

            }
            catch (Exception ex)
            {
                Label2.Text = ex.ToString();
            }
            complaint_id.Text = "";
            asset_no.Text = "";
            user_name.Text = " ";
            department.Text = " ";
           complaint_details.Text = " ";
            recorded_date.Text = " ";
           recorded_time.Text = " ";
            contact_no.Text = " ";
            attachment.Text = " ";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("home.aspx");
        }

       
        protected void Button3_Click1(object sender, EventArgs e)
        {
            
            asset_no.Enabled = true;
            user_name.Enabled = true;
            department.Enabled = true;
            complaint_details.Enabled = true;
            recorded_date.Enabled = false;
            recorded_time.Enabled = false;
            contact_no.Enabled = true;
            
        }

        
    }
}