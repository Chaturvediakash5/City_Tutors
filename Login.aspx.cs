using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class Login : System.Web.UI.Page
{
    DataTable dt;
    DBManager dm = new DBManager();
    Cryptography cm = new Cryptography();
    bool status;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (Rdbtutors.Checked == true)
        {
            string epass = cm.EncryptMyData(TxtPass.Text);
            dm.MyCmdText = "select type,Status from Tbl_Login where LUserId='" + TxtMail.Text.Trim() + "' and Pass='" + epass + "'";
             dt = dm.ReadBulkRecord();
             if (dt.Rows.Count > 0)
            {
                status = bool.Parse(dt.Rows[0][1].ToString());
                if (status == true)
                {
                    bool utype = bool.Parse(dt.Rows[0][0].ToString());
                    if (utype == false)
                    {


                        Session["TutorId"] = TxtMail.Text;
                        
                        Response.Redirect("TutorZone/TutorHome.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid User ');</script>");
                    }
                }
               
                else
                {
                    Response.Write("<script>alert('You are Blocked')</script>");
                }
            }
            else
            {
                TxtMail.Text = "";
                TxtPass.Text = "";
                Response.Write("<script>alert('Invalid UserId and PassOut')</script>");
            }
        }
        else if (RdbAdmin.Checked == true)
        {
            string npass = cm.EncryptMyData(TxtPass.Text);
            dm.MyCmdText = "select type,Status from Tbl_Login where LUserId='" + TxtMail.Text + "' and Pass='" + npass + "'";
            DataTable dt1 = dm.ReadBulkRecord();
            if (dt1.Rows.Count > 0)
            {
                status = bool.Parse(dt1.Rows[0][1].ToString());
                if (status == true)
                {
                    bool utype = bool.Parse(dt1.Rows[0][0].ToString());
                    if (utype == true)
                    {

                        //Tutors Login
                        Session["AdminId"] = TxtMail.Text;
                        //TxtMail.Text = "";
                        //TxtPass.Text = "";
                        // Response.Write("<script>alert('drftyuiytrd');</script>");
                        Response.Redirect("AdminZone/Home.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid User ');</script>");
                    }
                }
            }
        }
    }
    protected void BtnOtp_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgetPassword.aspx");
    }
    [WebMethod]
    public static string GetVarificationCode(string MobNo,string  Email)
    {
        DBManager dm = new DBManager();
        dm.MyCmdText = "Select mobNo,TuName,EmailId from Tbl_Tutors where EmailId='" +
            Email + "'";
        DataTable dt = dm.ReadBulkRecord();
        string response = "";
        if (dt.Rows.Count > 0)
        {
            string mob = dt.Rows[0][0].ToString();
            mob = mob.Substring(mob.Length - 4);
            if (mob.Equals(MobNo) == true)
            {
                Captcha c=new Captcha ();
                int scode = c.getSecurityCode();
                SMSSender ss = new SMSSender();
                EmailSender es = new EmailSender();
                mob = dt.Rows[0][0].ToString();
                string msg="Hello "+dt.Rows[0][1]+", someone is trying to reset your password of City Tutors.If you are that person then enter varification code, otherwise ignore this email.<br><br>Your varification code is: "+scode;
                es.SendTo=dt.Rows[0][2].ToString();
                es.Subject="Password reset request";
                es.Messege=msg;
                es.SendEmail(); // Sending email...
                msg="Your verification code is for City Tutors is: "+scode;
                bool x=ss.SendMySMS(mob, msg);  // Sending message...
                dm.MyCmdText = "Insert into Tbl_FOrgotPassword values('"+
                    dt.Rows[0][2] .ToString()+ "','"+scode+"','"+
                    DateTime.Now.AddMinutes(5)+"','0','"+DateTime.Now+"')";
                bool b=dm.ExecuteInsertUpdateOrDelete();
                response = "SUCCESS";

               HttpContext.Current.Session["TutorId"] = Email;
                
            }
            else
            {
                response = "Invalid last digits of mobile number.";
            }
        }
        else
        {
            response = "Invalid email Id.";
        }
        return response;
    }
}



