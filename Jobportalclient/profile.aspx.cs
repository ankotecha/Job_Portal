using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class profile : System.Web.UI.Page
    {
        string pass, id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ServiceReference2.Service1Client c = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
                GridView grid = new GridView();
                grid.DataSource = c.getUser(Session["username"].ToString());
                grid.DataBind();
                Username.Text = grid.Rows[0].Cells[1].Text;
                Contact.Text = grid.Rows[0].Cells[3].Text;
                Email.Text = grid.Rows[0].Cells[4].Text;
                Role.Text = grid.Rows[0].Cells[5].Text;
                id = grid.Rows[0].Cells[0].Text;
                Session["pass"]= grid.Rows[0].Cells[2].Text;
            }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
               ServiceReference2.Service1Client c = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
            ServiceReference2.User user = new ServiceReference2.User();
            user.Contact = Contact.Text;
            user.Email = Email.Text;
            user.Password = Session["pass"].ToString();
            user.Role = Role.Text;
            user.UserName = Username.Text;
        
            Console.WriteLine(user.Email);
            string ret = c.UpdateUser(user);
            if (ret == "updated")
            {
                Response.Redirect("UserHome.aspx");
                 }
        }
    }
}