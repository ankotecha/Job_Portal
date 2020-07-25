using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
            ServiceReference2.User u = new ServiceReference2.User();
            u.UserName = TextBox1.Text;
            u.Password = TextBox2.Text;
            u.Role = DropDownList1.SelectedValue;
            Session["username"] = u.UserName;
            Session["role"] = u.Role;

            if (u.UserName == "admin" && u.Password == "admin123")
                Response.Redirect("AdminHome.aspx");

    

            string st = s.Login(u);
            if (st.Equals("login") && u.Role.Equals("user"))
            {

                Session["username"] = u.UserName;
                Session["role"] = u.Role;
                Response.Redirect("UserHome.aspx");
            }

            else if (st.Equals("login") && u.Role.Equals("company"))
            {
                Session["username"] = u.UserName;
                Session["role"] = u.Role;
                Response.Redirect("company.aspx");
            }

            else
            {
                label1.Text = "Login details invalid";
                // Response.Redirect("Login.aspx");
            }
         
            
        }
    }
}