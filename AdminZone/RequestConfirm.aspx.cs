using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_RequestConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        dm.MyCmdText = "select R.RequestNo,s.Name as StuName,R.StudentId,t.TuName as TuName,R.TutorId,R.Status,s.MobNo as Smob,T.MobNo as Tmob,R.FinalFee from Tbl_RStudent s,Tbl_Tutors T,Tbl_TuitionRequests R  where R.Status='Confirm' and R.StudentId=s.EmailId and R.TutorId=T.EmailId";
        DataTable dt = dm.ReadBulkRecord();
        Datat.DataSource = dt;
        Datat.DataBind();
    }
    [WebMethod]
    public static string TutorRequest(string status, int Rid, string Stumob, string Stumail, string tumob, string TuMail)
    {
        EmailSender es = new EmailSender();
        SMSSender sms = new SMSSender();
        DBManager dm = new DBManager();
        string value = "";
        if (status == "Confirm")
        {
            dm.MyCmdText = "Update Tbl_tuitionRequests set Remark='" + status + "' where RequestNo='" + Rid + "'";
            bool b = dm.ExecuteInsertUpdateOrDelete();
            if (b == true)
            {
                string msg = "Hello Student your Request is Confirm By Tutor in City Tutor.com <br/> " + TuMail + "</br>" + tumob;
                es.SendTo = Stumail;
                es.Subject = "Request Confirm By Tutor";
                es.Messege = msg;
                es.SendEmail(); // Sending email...
                bool x = sms.SendMySMS(Stumob, msg);  // Sending message...
                if (x == true)
                {
                    msg = "Hello Tutor Your Request Confirm By Admin in City Tutor.com <br/>" + Stumail + "<br/>" + Stumob;
                    es.SendTo = TuMail;
                    es.Subject = "Request Confirm By Admin";
                    es.Messege = msg;
                    sms.SendMySMS(tumob, msg);
                    value = "Request Confirm";
                }

            }
        }
        else if (status == "Cancel")
        {
            dm.MyCmdText = "Update Tbl_tuitionRequests set Remark='" + status + "' where RequestNo='" + Rid + "'";
            bool b = dm.ExecuteInsertUpdateOrDelete();
            if (b == true)
            {
                value = "Request Cancel";
            }
        }
        return value;
    }
}