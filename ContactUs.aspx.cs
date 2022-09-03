using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSend_Click(object sender, EventArgs e)
    {
        dm.MyCmdText = "insert into tbl_contactUs values('" + TxtName.Text.Trim() + "','" + TxtEmail.Text.Trim() + "','" + TxtMob.Text + "','" + TxtMsg.Text + "','" + DateTime.Now.ToShortDateString() + "')";
        bool b = dm.ExecuteInsertUpdateOrDelete();
        if (b == true)
        {
            lblmsg.Text = "Thanks You";
            TxtEmail.Text = "";
            TxtMob.Text = "";
            TxtMsg.Text = "";
            TxtName.Text = "";
        }
        else

            lblmsg.Text = "Not allowed";
    }
}