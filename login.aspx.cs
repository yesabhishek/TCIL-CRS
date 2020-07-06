using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tinplate
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
          
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
           


            
             if (RadioButton2.Checked)
            {
                RadioButton1.Enabled = false;
                Application["user"] = TextBox1.Text;
                Panel1.Visible = true;
                Model m = new Model();
                Property p = new Property();
                p.user_id = TextBox1.Text;
                p.Password = TextBox2.Text;
                p = m.login(p);
                if (p == null)
                {
                    Label1.Text = " idk ";
                }
                else
                {
                    Label1.Text = " yes i know " + p.user_id;
                }
                //Response.Redirect("usercomplaint.aspx");
            }
             if (RadioButton1.Checked)
             {

                 Model m = new Model();
                 Property p = new Property();
                 p.user_id = TextBox1.Text;
                 p.Password = TextBox2.Text;
                 p = m.login(p);
                 if (p == null)
                 {
                     Label1.Text = " idk ";
                 }
                 else
                 {
                     Label1.Text = " yes i know " + p.user_id;
                 }
                RadioButton2.Enabled = false;
                Application["user"] = TextBox1.Text;
                 Panel1.Visible = true;
                 //Response.Redirect("facilitymanagementservices.aspx");
             }
             
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton1.Enabled = false;
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton2.Enabled = false;
        }

       

      
    }
}