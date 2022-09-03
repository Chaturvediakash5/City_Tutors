using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        dm.MyCmdText = "select T.TuName,A.Title,A.Article,A.ADT,s.SubjectName from Tbl_Tutors T,Tbl_Artical A,Tbl_Subject s where A.TutorsId=T.EmailId and A.Subject=s.Sid";
        DataTable dt = dm.ReadBulkRecord();
        Datat.DataSource = dt;
        Datat.DataBind();
    }
}