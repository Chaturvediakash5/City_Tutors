using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Toturs : System.Web.UI.Page
{

    DataTable dt = new DataTable();
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
      
     
        if (IsPostBack == false)
        {
            int s, c;
            s = int.Parse(Request.QueryString["Sid"].ToString());
            c = int.Parse(Request.QueryString["Cid"].ToString());
          
             if (c == 0 && s == 0)
            {
                Response.Write("<script>alert('Please select subject and city')</script>");
               
            }
            else if (s > 0 && c > 0)
            {

                dm.MyCmdText = "select t.Tuname,t.EmailId,hq.Qualification,t.Minfee,t.maxfee,c.CityName,Tp.Filename,tp.FolderName,s.SubjectName from Tbl_Tutors t,Tbl_UserPic Tp,Tbl_Qulification hq,Tbl_Subject s,Tbl_City c where t.EmailId=Tp.UserId and t.HQId=hq.Qid and s.Sid='" + s + "' and t.ExpertiseSub='" + s + "' and c.CityId='" + c + "' and t.cityid='" + c + "'";

                DataTable dt = dm.ReadBulkRecord();
                if (dt.Rows.Count > 0)
                {
                    GVReview.DataSource = dt;
                    GVReview.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('This Subject And City Teacher is Not available')</script>");
                    LblMsg.Text = "Sorry Record is Not available please retry";
                    LblMsg.ForeColor = System.Drawing.Color.Orange;
               
                }
               
            }
            else if (s >= 1 && c == 0)
            {
                dm.MyCmdText = "select t.Tuname,t.EmailId,hq.Qualification,t.Minfee,t.maxfee,Tp.Filename,tp.FolderName,s.SubjectName from Tbl_Tutors t,Tbl_UserPic Tp,Tbl_Qulification hq,Tbl_Subject s where t.EmailId=Tp.UserId and t.HQId=hq.Qid and s.Sid='" + s + "' and t.ExpertiseSub='" + s + "' ";
                DataTable dt = dm.ReadBulkRecord();
                if (dt.Rows.Count > 0)
                {
                    GVReview.DataSource = dt;
                    GVReview.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('This Subject Teacher is Not available')</script>");
                    LblMsg.Text = "Sorry Record is Not available please retry";
                    LblMsg.ForeColor = System.Drawing.Color.Orange;
                  
                }
               
            }
            else if (c >= 1 && s == 0)
            {

                dm.MyCmdText = "select t.Tuname,t.EmailId,hq.Qualification,t.Minfee,t.maxfee,c.CityName,Tp.Filename,tp.FolderName,s.SubjectName,s.sid from Tbl_Tutors t,Tbl_UserPic Tp,Tbl_Qulification hq,Tbl_Subject s,Tbl_City c where t.EmailId=Tp.UserId and t.HQId=hq.Qid and s.sid=t.Expertisesub and c.CityId='" + c + "' and t.cityid='" + c + "' ";
                DataTable dt = dm.ReadBulkRecord();
                if (dt.Rows.Count > 0)
                {
                    GVReview.DataSource = dt;
                    GVReview.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('This city Teacher is Not available')</script>");
                    LblMsg.Text = "Sorry Record is Not available please retry";
                    LblMsg.ForeColor = System.Drawing.Color.Orange;
                   
                }
               
            }

           }
        }

}

  

