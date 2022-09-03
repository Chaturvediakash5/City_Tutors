using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgetPassword : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSign_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string Uid=Session["TutorId"].ToString();
        dm.MyCmdText = "select Code,ValidTill from Tbl_ForgotPassword where UserId='" + Uid + "' order By RequestDt desc";
        DataTable dt = dm.ReadBulkRecord();
        if (dt.Rows.Count > 0)
        {
            string code = dt.Rows[0][0].ToString();
            string Time = dt.Rows[0][1].ToString();
            string curenntTime=DateTime.Now.ToString("MM-dd-yyyy HH:mm:ss");
            Cryptography ch = new Cryptography();
            string pass = ch.EncryptMyData(TxtPass.Text.Trim());
            if (code == TxtOTP.Text.Trim())
            {
                dm.MyCmdText = "Update Tbl_Login set pass='" + pass + "' where LUserId='" + Uid + "'";
               bool b=dm.ExecuteInsertUpdateOrDelete();
               if (b == true)
               {
                   Response.Write("<script>alert('Password Change Successfully.')</script>");
               }
                else{
               Response.Write("<script>alert('Password Not change.')</script>");
               }
            }

            Response.Write("<script>alert('"+curenntTime+"')</script>");
            
        }
    }
}