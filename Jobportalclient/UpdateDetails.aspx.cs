using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class UpdateDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                name.Text = Session["j.Name"].ToString();
                id.Text = Session["id"].ToString();

                postname.Text = Session["j.Postname"].ToString();
                vacancy.Text = Session["j.Vacancy"].ToString();// = Int32.Parse(GridView1.Rows[x].Cells[5].Text);

                qualification.Text = Session["j.Qualification"].ToString();// = GridView1.Rows[x].Cells[6].Text;
                salary.Text = Session["j.Salary"].ToString();// = GridView1.Rows[x].Cells[7].Text;
                description.Text = Session["j.Description"].ToString();// = GridView1.Rows[x].Cells[8].Text;
                jobid.Text = Session["j.Jobid"].ToString();
            }
          //= GridView1.Rows[x].Cells[9].Text;
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            ServiceReference2.CompanyDetails j = new ServiceReference2.CompanyDetails();

            j.Name = name.Text;
            j.Postname = postname.Text;
            j.Vacancy = Int32.Parse(vacancy.Text);
            j.Qualification = qualification.Text;
            j.Salary =salary.Text;
            j.Description =description.Text;
            j.Jobid = jobid.Text;
            int id = Int32.Parse(Session["id"].ToString());

            string k = s.UpdatePostedJob(j, id);

            Response.Redirect("UpdatePostedJob.aspx");


        }
    }
}