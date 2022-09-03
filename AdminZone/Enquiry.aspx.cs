using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_Enquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {

            DBManager dm = new DBManager();
            dm.MyCmdText = "select * from Tbl_Enquiry";
            DataTable dt = dm.ReadBulkRecord();
            Dt.DataSource = dt;
            Dt.DataBind();
        }
    }
}