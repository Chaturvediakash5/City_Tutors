using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_ManageTutorProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {

            
            DBManager dm = new DBManager();
            dm.MyCmdText = "select s.TuName,s.Gender,s.PassoutYear,s.Address,s.MobNo,s.EmailId,s.DTReg,p.FileName,p.FolderName,c.CityName,q.Qualification,x.SubjectName from Tbl_Tutors s,Tbl_UserPic p,Tbl_City c,Tbl_Qulification q,Tbl_Subject x where s.EmailId=p.UserId and c.CityId=s.CityId and q.Qid=s.HQId and x.Sid=s.ExpertiseSub order by s.DTReg desc";
            DataTable dt = dm.ReadBulkRecord();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        DBManager dm = new DBManager();
        dm.MyCmdText = "select  s.TuName,s.Gender,s.PassoutYear,s.Address,s.MobNo,s.EmailId,s.DTReg,p.FileName,p.FolderName,c.CityName,q.Qualification,x.SubjectName from Tbl_Tutors s,Tbl_UserPic p,Tbl_City c,Tbl_Qulification q,Tbl_Subject x where s.EmailId=p.UserId and c.CityId=s.CityId and q.Qid=s.HQId and x.Sid=s.ExpertiseSub order by s.DTReg desc";
        DataTable dt = dm.ReadBulkRecord();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}