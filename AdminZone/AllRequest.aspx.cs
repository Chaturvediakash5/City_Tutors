using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_AllRequest : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        dm.MyCmdText = "select * from Tbl_tuitionRequests";
        DataTable dt = dm.ReadBulkRecord();
        Datat.DataSource = dt;
        Datat.DataBind();
    }
}