using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class UpdatePostedJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client c = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            GridView1.DataSource = c.GetSingleCompanyData(Session["username"].ToString());
           // Label1.Text = Session["companyname"].ToString();
            GridView1.DataBind();

        }
        protected void LnKB_Click(object sender, System.EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            Button lb = sender as Button;
            GridViewRow clickedRow = ((Button)sender).NamingContainer as GridViewRow;
            int x = clickedRow.RowIndex;
            ServiceReference2.JobApplication j = new ServiceReference2.JobApplication();
            string name = GridView1.Rows[x].Cells[3].Text;
            string postname = GridView1.Rows[x].Cells[4].Text;
            string k = s.DeletePostedJob(name,postname);


            Response.Write("<script>alert('" + k + "')</script>");


        }
        protected void updatedetails(object sender, System.EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            Button lb = sender as Button;
            GridViewRow clickedRow = ((Button)sender).NamingContainer as GridViewRow;
            int x = clickedRow.RowIndex;
            ServiceReference2.CompanyDetails j = new ServiceReference2.CompanyDetails();
            j.Name= GridView1.Rows[x].Cells[3].Text;
            j.Postname = GridView1.Rows[x].Cells[4].Text;
            j.Vacancy = Int32.Parse(GridView1.Rows[x].Cells[5].Text);
            j.Qualification = GridView1.Rows[x].Cells[6].Text;
            j.Salary= GridView1.Rows[x].Cells[7].Text;
            j.Description= GridView1.Rows[x].Cells[8].Text;
            j.Jobid = GridView1.Rows[x].Cells[9].Text;
            int id = Int32.Parse(GridView1.Rows[x].Cells[2].Text);
           // string k = s.UpdatePostedJob(j,id);
            Session["j.Name"] = GridView1.Rows[x].Cells[3].Text;
            Session["j.Postname"] = GridView1.Rows[x].Cells[4].Text;
            Session["j.Vacancy"] = Int32.Parse(GridView1.Rows[x].Cells[5].Text);

     Session["j.Qualification"] = GridView1.Rows[x].Cells[6].Text;
             Session["j.Salary"] = GridView1.Rows[x].Cells[7].Text;
             Session["j.Description"] = GridView1.Rows[x].Cells[8].Text;
             Session["j.Jobid"]= GridView1.Rows[x].Cells[9].Text;
            Session["id"] = id.ToString();

           Response.Redirect("UpdateDetails.aspx");

        }
    }
}