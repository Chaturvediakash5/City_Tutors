using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TutorZone_Feedback : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnFeed_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string uid = Session["TutorId"].ToString();
        dm.MyCmdText = "Insert into Tbl_Feedback values('" + uid + "','" + TxtSubject.Text + "','" + TxtMsg.Text + "','" + DateTime.Now.ToString() + "')";
      bool c= dm.ExecuteInsertUpdateOrDelete();
      if (c == true)
          lblmsg.Text = "Thanks You";
      else
          lblmsg.Text = "Sorry";

    }
}