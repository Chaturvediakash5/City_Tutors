using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TutorZone_ConfirmByTutors : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = Session["tutorid"].ToString();
        dm.MyCmdText = "Select r.FinalFee,t.Name,r.RequestDt,q.Qualification,r.Status from Tbl_TuitionRequests r,Tbl_RStudent t,Tbl_Qulification q where t.EmailId=r.StudentId and t.Courses=q.Qid and TutorId='" + uid + "' and r.status='Confirm'";
        DataTable dt = dm.ReadBulkRecord();
        Datat.DataSource = dt;
        Datat.DataBind();
    }

}