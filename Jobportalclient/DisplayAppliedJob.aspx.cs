using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class DisplayAppliedJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session["user"] = "ak";
           ServiceReference2.Service1Client client = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
            GridView1.DataSource = client.DisplayAppliedPost(Session["username"].ToString());
            GridView1.DataBind();
        }
        protected void LnKB_Click(object sender, System.EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            Button lb = sender as Button;
            //   Label2.Text = "hello";
            GridViewRow clickedRow = ((Button)sender).NamingContainer as GridViewRow;
            int x = clickedRow.RowIndex;
            //  int id = Convert.ToInt32(GridView1.Rows[x].Cells[6].Text);

            //if (GridView1.Rows[x].Cells[0].Text ==)
            // Session["user"] = "ak";
            // Label2.Text = GridView1.Rows[x].Cells[8].Text;
            //    GridView1.Rows[x].Cells[0].Text = "Applied";
            ServiceReference2.JobApplication j = new ServiceReference2.JobApplication();
            j.Companyname = GridView1.Rows[x].Cells[3].Text;
            j.Jobid = Convert.ToInt32(GridView1.Rows[x].Cells[4].Text);
            j.UserName = Session["username"].ToString();
            string k = s.DeleteAppliedPosition(j);
            Response.Redirect("DisplayAppliedJob.aspx");

        }
    }
}