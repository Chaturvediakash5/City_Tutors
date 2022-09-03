using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisplayReview : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            dm.MyCmdText = "Select r.StudentId,r.TutorId,r.Star,r.Msg,r.RDT,s.Name,s.Gender,p.FIleName,p.FOlderName from TblReview r,Tbl_RStudent s,TBl_StudenPic p where r.StudentId=s.EmailId and r.StudentId=p.USerID order by r.reviewid desc";
            DataTable dt = dm.ReadBulkRecord();
            GVReview.DataSource = dt;
            GVReview.DataBind();
        }
    }
}