using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class ViewByCompanyList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Select JobId";
            if (!IsPostBack)
            {
               
                ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
                DataSet ds = s.GetSingleCompanyData(Session["username"].ToString());
                DataTable dt = ds.Tables[0];

             
            List<string> l = (from DataRow dr in dt.Rows

                                  select (string)dr["jobid"]).ToList<string>();
                DropDownList1.DataSource = l;

                DropDownList1.DataBind();



            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");
            string c = DropDownList1.SelectedValue;//.Text;
            Label1.Text = "";
            DataSet ds1 = s.SelectUserbyPostCompany(Session["username"].ToString(), c);
            DataTable dt1 = ds1.Tables[0];
            //string SearchByColumn1 = "name = name";// + c;
            var row1 = from customer in dt1.AsEnumerable()
                   
                       select new
                       {
                           Id = customer.Field<int>("Id"),
                           UserName = customer.Field<string>("UserName"),
                           Contact = customer.Field<string>("Contact"),
                           Email = customer.Field<string>("Email"),
                           Role = customer.Field<string>("Role"),
                       };

            //if (rows1.Any())
            GridView1.DataSource = row1;//.CopyToDataTable();
            GridView1.DataBind();

        }


    }
}