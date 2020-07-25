﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class adminviewuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            DataSet ds1 = s.GetUsers();
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
        protected void LnKB_Click(object sender, System.EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            Button lb = sender as Button;

            GridViewRow clickedRow = ((Button)sender).NamingContainer as GridViewRow;
            int x = clickedRow.RowIndex;

            string user = GridView1.Rows[x].Cells[2].Text;
            //GridView1.Rows[x].Cells[0].Text = "Applied";

            string k = s.DeleteUser(user);
            Response.Redirect("adminviewuser.aspx");

        }
    }
}