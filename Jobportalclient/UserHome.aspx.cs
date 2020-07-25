using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
                DataSet ds = s.GetCompanyData();
                DataTable dt = ds.Tables[0];
                List<string> l = (from DataRow dr in dt.Rows

                                  select (string)dr["name"]).ToList<string>();
              
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ApplyInCompany.aspx");
        }

     
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayAppliedJob.aspx");
        }
    }
}