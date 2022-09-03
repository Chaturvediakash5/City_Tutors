using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (  Session["AdminId"] ==null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (Request.QueryString["Status"] != null)
        {

            DBManager dm = new DBManager();
            string uid = Session["AdminId"].ToString();
            dm.MyCmdText = "select FileName,FolderName from Tbl_UserPic where UserId='" + uid + "' order by PicId desc";
            DataTable dt = dm.ReadBulkRecord();
            if (dt.Rows.Count > 0)
            {
                imgadmin.ImageUrl = "~/" + dt.Rows[0][1] + "/" + dt.Rows[0][0];
            }
        }
        if (IsPostBack == false)
        {
            DBManager dm = new DBManager();
            string uid = Session["AdminId"].ToString();
            dm.MyCmdText = "Select TuName,Gender from Tbl_Tutors where EmailId='" + uid + "'";
            DataTable dt = dm.ReadBulkRecord();
            lblName.Text = "Hello " + dt.Rows[0][0].ToString();
            string gender = bool.Parse(dt.Rows[0][1].ToString()) == true ? "Female" : "Male";
            dm.MyCmdText = "select FileName,FolderName from Tbl_UserPic where UserId='" + uid + "' order by picid desc";
            dt.Clear();
            dt = dm.ReadBulkRecord();
            if (dt.Rows.Count > 0)
            {
                imgadmin.ImageUrl = "~/" + dt.Rows[0][1] + "/" + dt.Rows[0][0];
            }
            else
            {
                if (gender == "Male")
                    imgadmin.ImageUrl = "~/images/2(1).jpg";
                else
                    imgadmin.ImageUrl = "~/images/1.jpg";
            }
        }
    }
}
