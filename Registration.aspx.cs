using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
     static string[] ImgAndCode = new string[2];
     Captcha cp = new Captcha();
     DBManager dm = new DBManager();
     EmailSender es = new EmailSender();
     string Rs, Ns;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DisplayCaptcha();

            for (int i = DateTime.Now.Year - 30; i <= DateTime.Now.Year; i++)
            {
                DdlCourseYear.Items.Add(i.ToString());
            }
            for (int i = DateTime.Now.Year - 70; i <= DateTime.Now.Year; i++)
            {
              DdlPassOut.Items.Add(i.ToString());
            }
            if (Request.QueryString["sid"] != null)
            {
                     Rs = Request.QueryString["sid"].ToString();
                    TxtEmail.Text = Rs;
                    RdbStudent.Checked = true;
                    RdbTutor.Checked = false;
                    RdbTutor.Visible = false;
                    TxtEmail.Text = Rs;
                   
            }
            if (Request.QueryString["Nid"] != null)
            {
                Ns = Request.QueryString["Nid"].ToString();
                RdbStudent.Checked = true;
                RdbTutor.Checked = false;
                RdbTutor.Visible = false;
            
            }
            
        }  
        
    }
    void DisplayCaptcha()
    {

        ImgAndCode = cp.GetCaptchaImgAndCode();
        ImgCap.ImageUrl = "CaptchaImg/" + ImgAndCode[0];
    }
    protected void btnRef_Click(object sender, ImageClickEventArgs e)
    {

        DisplayCaptcha();
        btnsubmit.Enabled = false;
        chk.Checked = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
     
      if(TxtCaptcha.Text.Trim()==ImgAndCode[1])
        {
            string FStatus = ""; 
            MyFileManager mfm = new MyFileManager();
            mfm.AllowedExtension = new string[] { ".png", ".jpg", ".jpeg" };
            mfm.FolderName = "StudentPic";
            mfm.MaxAllowedSizeInKB = 3072;
            mfm.MyFileUpload = UpPic;
            FStatus = mfm.ValidateMyFile();

            if (FStatus == "SUCCESS" || FStatus == "NOTFOUND")
            {
                bool gender = RdbMale.Checked == true ? true : false;
                if(RdbStudent.Checked==true)
                {

                    dm.MyCmdText = "insert into Tbl_RStudent values('" + TxtName.Text.Trim() + "','" + TxtFather.Text.Trim() + "','" + DdlCity.SelectedValue + "','" + TxtAddress.Text.Trim() + "','" + TxtMob.Text.Trim() + "','" +TxtEmail.Text + "','" + DdlCoures.SelectedValue + "','" + DdlCourseYear.SelectedValue + "','" + DateTime.Now.ToString("MM-dd-yyyy") + "','" + gender + "','" + TxtDob.Text.Trim() + "')";
                }
                else if(RdbTutor.Checked==true)
                {
                    dm.MyCmdText = "Insert into Tbl_Tutors values('" + TxtName.Text + "','" + gender + "','" + DdlHightQuali.SelectedValue + "','" + DdlPassOut.SelectedValue + "','" + DdlCity.SelectedValue + "','" + TxtAddress.Text.Trim() + "','" + ddlEXpsubject.SelectedValue + "','" + TxtMob.Text.Trim() + "','" + TxtEmail.Text.Trim() + "','" + DateTime.Now.ToString("MM-dd-yyyy") + "','" + TxtMinfee.Text + "','" + TxtMaxfee.Text + "')";
                }
                bool b = dm.ExecuteInsertUpdateOrDelete();
                if (RdbTutor.Checked == true)
                {
                    if (b == true)
                    {
                        Cryptography cm = new Cryptography();
                        string epass = cm.EncryptMyData(TxtPass.Text);
                        dm.MyCmdText = "Insert into Tbl_Login values('" + TxtEmail.Text.Trim() + "','" + epass + "','0','" + DateTime.Now.ToString("MM-dd-yyyy") + "','0','1')";

                        b = dm.ExecuteInsertUpdateOrDelete();

                        if (b == true && FStatus == "SUCCESS")
                        {
                            mfm.UploadMyFile();
                            dm.MyCmdText = "Insert into Tbl_UserPic values('" + TxtEmail.Text.Trim() + "','" + mfm.FileName + "','" + mfm.FolderName + "','" + mfm.FileExtension + "','" + mfm.FileSizeInKB + "','" + DateTime.Now.ToString("MM-dd-yyyy") + "')";
                            b = dm.ExecuteInsertUpdateOrDelete();
                        }

                    }
                }
                else

                    if (b == true && FStatus == "SUCCESS")
                    {
                        mfm.UploadMyFile();
                        dm.MyCmdText = "Insert into Tbl_StudenPic values('" + TxtEmail.Text + "','" + mfm.FileName + "','" + mfm.FolderName + "','" + mfm.FileExtension + "','" + mfm.FileSizeInKB + "','" + DateTime.Now.ToString("MM-dd-yyyy") + "')";
                        b = dm.ExecuteInsertUpdateOrDelete();
                    }
                if(b==true)
                {
                    // CLear Controls...
                    es.SendTo = TxtEmail.Text.Trim();
                    es.Subject = "CityTotors";
                    es.Messege = "You are Register In City Tutors";
                    bool c = es.SendEmail();
                  lblRes.Text =" Registration completed successfully"; 
                   lblRes.ForeColor = System.Drawing.Color.Green;
                   if (Request.QueryString["sid"] != null)
                       Rs = Request.QueryString["sid"].ToString(); 
                  if (Rs != null && Rs != "")
                  {
                      Response.Redirect("StudentReview.aspx?rs="+1);
                  }
                  if (Request.QueryString["nid"] != null)
                      Ns = Request.QueryString["nid"].ToString();
                 if(Ns != null && Ns !="")
                   {
                        Response.Redirect("RequestforTutor.aspx?F="+Ns);
                        Response.Write("<script>alert('"+Ns+"')</script>");
                   }
                  TxtName.Text = "";
                  TxtFather.Text = "";
                  TxtMob.Text = "";
                  TxtPass.Text = "";
                  TxtCPass.Text = "";
                  TxtCaptcha.Text = "";
                  TxtAddress.Text = "";
                  TxtEmail.Text = "";
                
                  TxtDob.Text = "";
                  
                   
                }
                else
                {
                    if (Ns != null && Ns != "")
                    {
                        Response.Redirect("RequestforTutor.aspx");
                        Response.Write("<script>alert('" + Ns + "')</script>");
                    }
                    lblRes.Text="Sorry! due to some technical errors we are unable to register.";
                    lblRes.ForeColor = System.Drawing.Color.Red;
                   
                }
            }
            else if (FStatus == "LARGE")
            {
               lblRes.Text="File size is large.";
               lblRes.ForeColor = System.Drawing.Color.Red;

            }
            else if (FStatus == "INVALID")
            {
               
                lblRes.Text = "Invalid file type for Student picture.";
                lblRes.ForeColor = System.Drawing.Color.Red;
            }
           
        }
        else
        {
            lblRes.Text = "Invalid Captcha";
            lblRes.ForeColor = System.Drawing.Color.Red;
      
        }
    }


    protected void chk_CheckedChanged(object sender, EventArgs e)
    {
        if (chk.Checked == true)
            btnsubmit.Enabled = true;
        else
            btnsubmit.Enabled = false;
    }
}