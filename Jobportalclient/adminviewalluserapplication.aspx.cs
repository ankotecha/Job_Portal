﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportalclient
{
    public partial class adminviewalluserapplication : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client s = new ServiceReference2.Service1Client("BasicHttpBinding_IService1");

            DataSet ds1 = s.GetJobApplicationDetails();
            DataTable dt1 = ds1.Tables[0];


            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }
    }
}