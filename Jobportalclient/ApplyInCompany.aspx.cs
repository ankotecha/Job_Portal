using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class ApplyInCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "Select Company";
                ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
                DataSet ds = s.GetCompanyData();
                DataTable dt = ds.Tables[0];
                List<string> l = (from DataRow dr in dt.Rows

                                  select  (string)dr["name"]).ToList<string>();
                var fl = l.Distinct();
                DropDownList1.DataSource = fl.ToList();
                DropDownList1.DataBind();



            }

        }



        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
          //  JobPortalRef.Service1Client s = new JobPortalRef.Service1Client("BasicHttpBinding_IService1");
            string c = DropDownList1.SelectedValue;//.Text;

            DataSet ds1 = s.GetCompanyData();
            DataTable dt1 = ds1.Tables[0];
            string SearchByColumn1 = "name = name";// + c;
            var rows1 = dt1.AsEnumerable()
               .Where(r => r.Field<string>("name") == c);

            if (rows1.Any())
                GridView1.DataSource = rows1.CopyToDataTable();
            GridView1.DataBind();


        }
        protected void LnKB_Click(object sender, System.EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            Button lb = sender as Button;

            GridViewRow clickedRow = ((Button)sender).NamingContainer as GridViewRow;
            int x = clickedRow.RowIndex;

            //  Label2.Text = GridView1.Rows[x].Cells[8].Text;
            GridView1.Rows[x].Cells[0].Text = "Applied";
            ServiceReference2.JobApplication j = new ServiceReference2.JobApplication();
            j.Companyname = GridView1.Rows[x].Cells[2].Text;
            j.Jobid = Convert.ToInt32(GridView1.Rows[x].Cells[8].Text);
            j.UserName = Session["username"].ToString();
            string k = s.ApplyForCompany(j);

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}