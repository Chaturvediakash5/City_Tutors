using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentReview : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnReviw_Click(object sender, EventArgs e)
    {
        dm.MyCmdText = "select * from Tbl_RStudent where EmailId='" + TxtEmail.Text + "'";
        DataTable dt=dm.ReadBulkRecord();
        if (dt.Rows.Count > 0)
        {
            int star = int.Parse(HFStar.Value);
            dm.MyCmdText = "Insert into TblReview values('" + TxtEmail.Text + "','" + DDLTutor.SelectedValue + "','" + star + "','" + TxtCmnts.Text + "','" + DateTime.Now.ToString("MM-dd-yyyy HH:mm:ss") + "')";
            bool b = dm.ExecuteInsertUpdateOrDelete();
            if (b == true)
            {
                // Clear COntrols...
                TxtEmail.Text = "";
                TxtCmnts.Text = "";
                Response.Write("<script>alert('Thanks for your valuable review.');</script>");
            }
            else
            {
                Response.Write("<script>alert('Review not saved.');</script>");
            }
        }
        else
        {
            Response.Redirect("Registration.aspx?sid=" + TxtEmail.Text);
        }
    }
  
 
}