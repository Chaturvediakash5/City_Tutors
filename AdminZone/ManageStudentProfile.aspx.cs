using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_ManageStudentProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        dm.MyCmdText = "select top 6 s.Name,s.FName,s.Adddress,s.MobNo,s.EmailId,s.CourseYear,s.RaDate,s.Gender,p.FileName,p.folderName,su.Qualification,c.cityName from Tbl_RStudent s,Tbl_StudenPic p,Tbl_City c,Tbl_Qulification su where s.EmailId=p.UserId and su.Qid=s.courses and c.cityid=s.City order by s.RaDate desc";
        DataTable dt = dm.ReadBulkRecord();
        Dt.DataSource = dt;
        Dt.DataBind();
    }
}