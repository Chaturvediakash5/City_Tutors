using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Index : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            string bind1 = "";
            string bind2 = "";
            string bind3 = "";
            DBManager db = new DBManager();
            db.MyCmdText = "select t.tuname,s.name,r.msg,r.rdt,sp.filename from TblReview r,tbl_tutors t,tbl_rstudent s,Tbl_StudenPic sp where t.emailid=r.tutorid and r.studentid=s.emailid and sp.UserId=s.EmailId";
            DataTable dt = new DataTable();
            dt = db.ReadBulkRecord();
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i = i + 3)
                {
                    if (i == 0)
                        bind1 += "<div class='item active'>";
                    else
                    
                        bind1 += "<div class='item'>";
                        bind1 += "<div class='testimonial4_slide'><img src='StudentPic/" + dt.Rows[i][4] + "' class='img-circle img-responsive' /><p> " + dt.Rows[i][2] + "</p><h4>" + dt.Rows[i][1] + "</h4><h4>" + dt.Rows[i][0] + "</h4><h6>" + dt.Rows[i][3] + "</h6></div></div>";

                    
                    if ((i + 1) < dt.Rows.Count)
                    {
                        if (i == 1)
                            bind2 += "<div class='item active'>";

                        else
                        
                            bind2 += "<div class='item'>";
                            bind2 += "<div class='testimonial4_slide'><img src='StudentPic/" + dt.Rows[i + 1][4] + "' class='img-circle img-responsive' /><p>" + dt.Rows[i + 1][2] + "</p><h4>" + dt.Rows[i + 1][1] + "</h4><h4>" + dt.Rows[i + 1][0] + "</h4><h6>" + dt.Rows[i + 1][3] + "</h6></div></div>";
                        
                     }
                    if ((i + 2) < dt.Rows.Count)
                    {
                        if (i == 2)
                            bind3 += "<div class='item active'>";
                        else
                        
                            bind3 += "<div class='item'>";
                            bind3 += "<div class='testimonial4_slide'><img src='StudentPic/" + dt.Rows[i + 2][4] + "' class='img-circle img-responsive' /><p>" + dt.Rows[i + 2][2] + "</p><h4>" + dt.Rows[i + 2][1] + "</h4><h4>" + dt.Rows[i + 2][0] + "</h4><h6>" + dt.Rows[i + 2][3] + "</h6></div></div>";
                        
                      }
                }
            }
            Lblfeedback1.Text = bind1;
            Lblfeedback2.Text = bind2;
            Lblfeedback3.Text = bind3;
            DBManager dm = new DBManager();
            dm.MyCmdText = "select top(4) t.TuName,hq.qualification,Tp.FileName,tp.Foldername,s.SubjectName from Tbl_Tutors t,Tbl_UserPic Tp, Tbl_Qulification hq,tbl_Subject s where t.EmailId=tp.UserId and t.HQID=hq.Qid and s.Sid=t.ExpertiseSub order by DtReg desc;";
            dt = dm.ReadBulkRecord();
            datalistview.DataSource = dt;
            datalistview.DataBind();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        dm.MyCmdText = "insert into Tbl_Enquiry values('" + TxtName.Text.Trim() + "','" + TxtEmail.Text.Trim() + "','" + TxtMNO.Text + "','" + TxtMsg.Text + "','" + DateTime.Now.ToShortDateString() + "')";
        bool b = dm.ExecuteInsertUpdateOrDelete();
        if (b == true)
        {
            Response.Write("<script>alert('Thanks You')</script>");

        }
        else
        {
            Response.Write("<script>alert('Sorry')</script>");
        }
        TxtEmail.Text = "";
        TxtMNO.Text = "";
        TxtMsg.Text = "";
        TxtName.Text = "";
    }
 
    //protected void btnSearch_Click(object sender, EventArgs e)
    //{
       
            
    //        if (DdlSearchCity.SelectedValue != null && DdlSearchSubject != null)
    //        {
    //            Response.Redirect("Toturs.aspx?Sid=" + DdlSearchSubject.SelectedValue + "&Cid=" + DdlSearchCity.SelectedValue);
    //        }
      
    //    else
    //        Response.Redirect("Toturs.aspx");
       
    //}
}