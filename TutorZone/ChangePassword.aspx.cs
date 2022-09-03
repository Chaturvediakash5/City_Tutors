using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TutorZone_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSign_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        Cryptography em = new Cryptography();
        string oldPass = em.EncryptMyData(TxtOpass.Text);
        string Newpass = em.EncryptMyData(TxtNPass.Text);
        string uid = Session["TutorId"].ToString();
        dm.MyCmdText="Update Tbl_Login set Pass='"+Newpass+"' where LUserId='"+uid+"' and Pass='"+oldPass+"'";
        bool b=dm.ExecuteInsertUpdateOrDelete();
        if(b==true)
        {
        LblMsg.Text="Your Password Change";
        LblMsg.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
         LblMsg.Text="Your Password Not Change";
         LblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }
}