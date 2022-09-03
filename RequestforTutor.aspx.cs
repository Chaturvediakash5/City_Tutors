using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestforTutor : System.Web.UI.Page
{
    string Email, max, min;
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["inform"] != null)
        {
            string[] id = Request.QueryString["inform"].Split(',');
            Email = id[0];
            max = id[2];
            min = id[1];
            lblmax.Text = max;
            lblmin.Text = min;
            HFEmail.Value = Email;
        }
        if (Request.QueryString["f"] != null)
        {
            string[] id = Request.QueryString["f"].Split(',');
            Email = id[2];
            max = id[1];
            min = id[0];
            lblmax.Text = max;
            lblmin.Text = min;
            HFEmail.Value = Email;
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtfromDate.Text == "")
        {
            LblMsg.Text = "please Fill all Fields";
            LblMsg.ForeColor = System.Drawing.Color.Red;
        }
        else if (txttodate.Text == "")
        {
            LblMsg.Text = "please Fill all Fields";
            LblMsg.ForeColor = System.Drawing.Color.Red;
        }
        else if (txtemail.Text == "")
        {
            LblMsg.Text = "please Fill all Fields";
            LblMsg.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            dm.MyCmdText = "select * from Tbl_RStudent where EmailId='" + txtemail.Text.Trim() + "'";
            DataTable dt = dm.ReadBulkRecord();
            if (dt.Rows.Count > 0)
            {
                string status = "request";
                dm.MyCmdText = "Insert into Tbl_TuitionRequests values('" + txtemail.Text.Trim() + "','" + Email + "','" + txtfromDate.Text + "','" + txttodate.Text + "','Request','" + null + "','" + null + "','"+DateTime.Now.ToString()+"')";
                bool b = dm.ExecuteInsertUpdateOrDelete();
                if (b == true)
                {

                    Response.Write("<script>confirm('Request Send')</script>");
                    LblMsg.Text = "Request Send";
                    LblMsg.ForeColor = System.Drawing.Color.Green;
                }

                else
                {
                    LblMsg.Text = "Request Not Send";
                    LblMsg.ForeColor = System.Drawing.Color.Red;
                }
            }
            //Response.Redirect("Index.aspx");

            else
            {
                Response.Write("Your Email Id Is Not Registered Click to New Registration");
            }

        }
    }
}