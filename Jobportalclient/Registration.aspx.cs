using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
            ServiceReference2.User u = new ServiceReference2.User();
            u.UserName = TextBox1.Text;
            u.Email = TextBox2.Text;
            u.Password = TextBox3.Text;
            string cpass = TextBox4.Text;
            u.Contact = TextBox5.Text;
            u.Role = DropDownList1.SelectedValue;
            if (!cpass.Equals(u.Password))
            {
                
                Label1.Text = "password and confirm password does not match";
                
           }
            else
            {
                string st = s.AddUser(u);

                if (st.Equals("Username already exist"))
                {
                    Label1.Text = "Username already exists";

                    //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username already exist')", true);
                    //   Response.Write("<script>alert('Username already exist')</script>");


                }
                else
                {
                   
                    Response.Redirect("Login.aspx");

                }

            }

        }
        //ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
        //    ServiceReference2.User u = new ServiceReference2.User();
        //    u.UserName = TextBox1.Text;
        //    u.Email = TextBox2.Text;
        //    u.Password = TextBox3.Text;
        //    u.Contact = TextBox5.Text;
        //    u.Role = TextBox6.Text;
            
        //    string st = s.AddUser(u);
            
        //        Response.Redirect("Login.aspx");
            


        
    }
}