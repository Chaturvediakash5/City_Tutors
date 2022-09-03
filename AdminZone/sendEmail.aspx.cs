using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_sendEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        if (TxtTo.Text == "")
        {
            lblmsg.Text = "Fill All Field";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
      else if (TxtSub.Text == "")
        {
            lblmsg.Text = "Fill All Field";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        else if (TxtMsg.Text == "")
        {
            lblmsg.Text = "Fill All Field";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        //if (TxtCc.Text == "")
        //{
        //    lblmsg.Text = "Fill All Field";
        //    lblmsg.ForeColor = System.Drawing.Color.Red;
        //}
        EmailSender em = new EmailSender();
        em.SendTo = TxtTo.Text.Trim();
        em.Subject = TxtSub.Text.Trim();
        //em.Cc = TxtCc.Text.Trim();
        em.Messege = TxtMsg.Text.Trim();
        bool b = em.SendEmail();
        if (b == true)
        {
            Lbl.ForeColor = System.Drawing.Color.Green;
            Lbl.Text = "Email send Successfully";
        }
        else
        {
            Lbl.ForeColor = System.Drawing.Color.Red;
            Lbl.Text = "Unable To send Email";
        }
    }
}