using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_ChangPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
       
        string sid = Session["Adminid"].ToString();
        DBManager dm = new DBManager();
        Cryptography em = new Cryptography();
        string epass = em.EncryptMyData(TxtNewPass.Text.Trim());
        dm.MyCmdText = "update Tbl_Login set Pass='" + epass + "' where LUserId='" + sid + "'";
        bool x = dm.ExecuteInsertUpdateOrDelete();
        if (x == true)
        {
            Response.Write("<script>alert('Password changed successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Password is not changed')</script>");
        }
    }
}