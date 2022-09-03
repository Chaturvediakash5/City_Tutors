using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_LoginManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        dm.MyCmdText = "select  pr.TuName,up.FIleName,up.FolderName,l.LUserId,l.LastLogin,l.LCount,l.Status from Tbl_Tutors pr,Tbl_UserPic up,tbl_Login l where l.LUserId=pr.EmailId and l.LUserId=up.userid order by LastLogin desc";
        DataTable dt = dm.ReadBulkRecord();
        Dt.DataSource = dt;
        Dt.DataBind();
    }
    [WebMethod]
    public static bool ManageUSerStatus(string uid, bool ustatus)
    {
        try
        {
            DBManager dm = new DBManager();
            dm.MyCmdText = "Update Tbl_Login set Status='" + ustatus + "' where USerId='" + uid + "'";
            bool b = dm.ExecuteInsertUpdateOrDelete();
            return b;
        }
        catch
        {
            return false;
        }
    }
}