using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
public partial class TutorZone_TuitionRequest : System.Web.UI.Page
{

    DBManager dm = new DBManager();
    static string uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            string uid = Session["TutorId"].ToString();
            dm.MyCmdText = "Select r.requestNo,r.FinalFee,t.Name,r.RequestDt,q.Qualification from Tbl_TuitionRequests r,Tbl_RStudent t,Tbl_Qulification q where t.EmailId=r.StudentId and t.Courses=q.Qid and TutorId='" + uid + "' and r.status!='Confirm'";
            DataTable dt = dm.ReadBulkRecord();
            Datat.DataSource = dt;
            Datat.DataBind();
  
        }
    }
    [WebMethod]
    public static string StudentRequest(string status, int Rid, int fee)
    {
        DBManager dm = new DBManager();
        string value = "";
        if (status == "Confirm")
        {
            dm.MyCmdText = "Update Tbl_TuitionRequests set Status='" + status + "',finalfee='" + fee + "' where RequestNo='" + Rid + "'";
            bool b = dm.ExecuteInsertUpdateOrDelete();
            if (b == true)
            {
                value = "Request Confirm";

            }
        }
        else if (status == "Cancel")
        {
            dm.MyCmdText = "delete from Tbl_tuitionRequests where RequestNo='" + Rid + "'";
            bool b = dm.ExecuteInsertUpdateOrDelete();
            if (b == true)
            {
                value = "Request Cancel";
            }
        }
        return value;
    }
}