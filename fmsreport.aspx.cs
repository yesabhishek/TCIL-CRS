using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tinplate
{
    public partial class fmsreport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            asset_no.Enabled = false;
            user_name.Enabled = false;

            contact_no.Enabled = false;
            complaint_detail.Enabled = false;
            log_date.Enabled = false;
            log_time.Enabled = false;
            department.Enabled = false;
           
          
           
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
           
            RadioButton2.Enabled = false;
            RadioButton3.Enabled = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
           
            RadioButton1.Enabled = false;
            RadioButton3.Enabled = false;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
           
            RadioButton1.Enabled = false;
            RadioButton2.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
            Label1.Visible = true;
        }
        private void clear()
        {
            asset_no.Text = "";
            department.Text = "";
            complaint_detail.Text = "";
            contact_no.Text = "";
            log_time.Text = "";
            log_date.Text = "";
            user_name.Text = "";
            /*TextBox24.Text = "";
            TextBox23.Text = "";
            TextBox22.Text = "";
            TextBox20.Text = "";
            TextBox19.Text = "";*/
            complaint_id.Text = "";
           /* TextBox16.Text = "";
            TextBox15.Text = "";
            TextBox14.Text = "";
            TextBox13.Text = "";
            TextBox12.Text = "";
            TextBox11.Text = "";
            TextBox10.Text = "";
            TextBox1.Text = "";*/

             asset_no.Enabled = false;
             department.Enabled = false;
            complaint_detail.Enabled = false;
            contact_no.Enabled = false;
           log_time.Enabled = false;
           log_date.Enabled = false;
            user_name.Enabled = false;
            complaint_id.Enabled =false;
            /* TextBox24.Enabled = false;
            TextBox23.Enabled = false;
            TextBox22.Enabled =false;
            TextBox20.Enabled = false;
            TextBox19.Enabled = false;
           TextBox17.Enabled = false;
            TextBox16.Enabled = false;
            TextBox15.Enabled = false;
            TextBox14.Enabled = false;
            TextBox13.Enabled = false;
            TextBox12.Enabled = false;
            TextBox11.Enabled = false;
            TextBox10.Enabled = false;
            TextBox1.Enabled = false;
            DropDownList1.Enabled = false;
            DropDownList2.Enabled = false;
            DropDownList3.Enabled = false;
            DropDownList4.Enabled = false;
            DropDownList5.Enabled = false;*/


        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}