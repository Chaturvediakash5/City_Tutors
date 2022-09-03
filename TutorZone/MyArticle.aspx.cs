using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TutorZone_MyArticle : System.Web.UI.Page
{
    DBManager dm = new DBManager();
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnArtical_Click(object sender, EventArgs e)
    {
        string uid = Session["TutorId"].ToString();
        dm.MyCmdText = "Insert into Tbl_Artical values('" +ddlSubject.SelectedItem.Value+ "','" + TxtTitle.Text + "','" + TxtArticle.Text + "','" + uid + "','" + DateTime.Now.ToString() + "')";
   bool b= dm.ExecuteInsertUpdateOrDelete();
   if (b == true)
   {
       lblmsg.Text = "Your Artical Send";
       lblmsg.ForeColor = System.Drawing.Color.Green;
   }
   else
   {
       lblmsg.Text = "Your Artical not Send";
       lblmsg.ForeColor = System.Drawing.Color.Red;
   }

    }
}