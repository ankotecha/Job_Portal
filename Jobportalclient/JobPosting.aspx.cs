using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class JobPosting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            ServiceReference2.Service1Client client = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
            ServiceReference2.CompanyDetails c = new ServiceReference2.CompanyDetails();
            c.Name = Session["username"].ToString();
            c.Postname = PostName.Text;
            c.Qualification = Qualification.Text;
            c.Salary = Salary.Text;
            c.Vacancy = Int32.Parse(Vacancy.Text);
            c.Description = message.Text;
            c.Jobid = Jobid.Text;
            string mess = client.InsertData(c);

            Response.Write("<script>alert('"+mess+"')</script>");

           
        }

        
    }
}