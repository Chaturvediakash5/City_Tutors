using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_FeedbackTutor : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            //dm.MyCmdText = "select f.UserId,f.Subject,f.FeedbackMsg,f.FDT,t.TuName,t.EmailId,s.Sid,s.SubjectName from Tbl_Feedback f,Tbl_Tutors t,Tbl_Subject s where f.UserId=t.EmailId and f.Subject=s.Sid";
            //DataTable dt = dm.ReadBulkRecord();

            //Dt.DataSource = dt;
            //Dt.DataBind();
            DBManager dm = new DBManager();
            dm.MyCmdText = "select * from Tbl_Feedback";
            DataTable dt = dm.ReadBulkRecord();
            Dt.DataSource = dt;
            Dt.DataBind();
        }
    }
}