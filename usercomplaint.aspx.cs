using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.IO;


namespace Tinplate
{

    public partial class usercomplaint : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\nEW u\Documents\Visual Studio 2010\Projects\Tinplate\Tinplate\bin\\tinplate.accdb");

        protected void Page_Load(object sender, EventArgs e)
        {
            photoattachment.Visible = false;
            complaint_id.Enabled = false;
            welcome.Enabled = false;
            recorded_time.Enabled = false;
            recorded_date.Enabled = false;
            if (Application["user"] != null)
            {
                string Name = Application["user"].ToString();
                welcome.Text += String.Format(Name);
            }

            
            recorded_date.Text = System.DateTime.Now.ToString("dd-MM-yyyy");
            recorded_time.Text = System.DateTime.Now.ToString("hh:mm dddd");
            counting();
            upload();
        }

        private void counting()
        {
            int count;
            String srt = "select Count(*) from ucomplaint";

            OleDbCommand cmd = new OleDbCommand(srt, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar()) + 1;
            complaint_id.Text = ("C00" + count);
            
            con.Close();
            
        }
        public void upload()
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string EXT = Path.GetExtension(FileUpload1.PostedFile.FileName).ToUpper();
                    if (FileUpload1.PostedFile.ContentLength < 200000000)
                    {
                        string complaint_no = complaint_id.Text.Replace("/", "");
                        string FileName = complaint_no + "_photo" + EXT;
                        String path = string.Concat(Server.MapPath("~/attachment/" + FileName));
                        FileUpload1.PostedFile.SaveAs(path);
                        photoattachment.Text = FileName;
                        //  FileUpload1.Text = FileName;

                    }
                }
                catch (Exception ex)
                {
                    ex.ToString();
                }
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {

                con.Open();
                string sql = "insert into ucomplaint(Complaint_ID,Asset_no,User_name,Department,Contact_no,Recorded_time, "+
                    "Recorded_date,complaint_detail,attachment)values('" + complaint_id.Text.Trim() + "','" + asset_no.Text.Trim() + "',"+
                    "'" + user_name.Text.Trim() + "','" + department.Text.Trim() + "','" + contact_no.Text.Trim() + "',"+
                    "'" + recorded_time.Text.Trim() + "','" + recorded_date.Text.Trim() + "',"+
                    "'" + complaint_details.Text.Trim() + "','" + photoattachment.Text.Trim() + "')";
                OleDbCommand cmd = new OleDbCommand(sql, con);
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("useracknowledgement.aspx?complaint_id="+complaint_id.Text+"");

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

           
        }

        
        
    }
}