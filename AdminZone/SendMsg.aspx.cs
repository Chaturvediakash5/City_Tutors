using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_SendMsg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSend_Click(object sender, EventArgs e)
    {
        if (TxtMsg.Text == "")
        {
            Lblmsg.Text = "Fill All Field";
            Lblmsg.ForeColor = System.Drawing.Color.Red;
        }
       else if (TxtMsg.Text == "")
        {
            Lblmsg.Text = "Fill All Field";
            Lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        SMSSender ss = new SMSSender();
        bool b=ss.SendMySMS(TxtTo.Text.Trim(), TxtMsg.Text.Trim());
        if (b == true)
        {
            TxtTo.Text = "";
            TxtMsg.Text = "";
            Response.Write("<script>alert('SMS sent successfully.');</script>");
        }
        else
            Response.Write("<script>alert('Unable to send SMS.');</script>");
    }
}