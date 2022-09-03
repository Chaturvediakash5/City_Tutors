using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TutorZone_MyProfile : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    DataTable dt = new DataTable();
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        enable();
         if (IsPostBack == false)
        {
            
            DDLCity.Visible = false;
            DDLExperSubject.Visible = false;
            DDLHiQu.Visible = false;
            DDLPassYear.Visible = false;
            RdbFemale.Visible = false;
            RdbMale.Visible = false;
            BtnEdit.Visible = true;
            BtnUpdate.Visible = false;

            DisplayProfile();
          
            for (int i = DateTime.Now.Year - 70; i <= DateTime.Now.Year; i++)
            {
                DDLPassYear.Items.Add(i.ToString());
            }
            dm.MyCmdText = "select *from Tbl_subject order by SubjectName";
            DataTable td = dm.ReadBulkRecord();
            for (int i = 0; i < td.Rows.Count; i++)
            {
                DDLExperSubject.DataSource = td;
                DDLExperSubject.DataTextField = "SubjectName";
                DDLExperSubject.DataValueField = "Sid";
                DDLExperSubject.DataBind();
            }
            dm.MyCmdText = "Select *from Tbl_Qulification order by Qualification";
            DataTable r = dm.ReadBulkRecord();
            for (int c = 0; c < r.Rows.Count; c++)
            {
                DDLHiQu.DataSource = r;
                DDLHiQu.DataTextField = "Qualification";
                DDLHiQu.DataValueField = "Qid";
                DDLHiQu.DataBind();
            }
            dm.MyCmdText = "select *from Tbl_City order by CityName";
            DataTable t = dm.ReadBulkRecord();
            for (int x = 0; x < t.Rows.Count; x++)
            {
                DDLCity.DataSource = t;
                DDLCity.DataTextField = "CityName";
                DDLCity.DataValueField = "CityId";
                DDLCity.DataBind();
            }
            string uid = Session["TutorId"].ToString();
            dm.MyCmdText = "Select TuName,Gender from Tbl_Tutors where EmailId='" + uid + "'";
            DataTable dt = dm.ReadBulkRecord();
            string gender = bool.Parse(dt.Rows[0][1].ToString()) == true ? "Female" : "Male";
            dm.MyCmdText = "select FileName,FolderName from Tbl_UserPic where UserId='" + uid + "' order by PicId desc";
            dt.Clear();
            dt = dm.ReadBulkRecord();
            if (dt.Rows.Count > 0)
            {
                ImgUserPic.ImageUrl = "~/" + dt.Rows[0][1] + "/" + dt.Rows[0][0];
            }
            else
            {
                if (gender == "Male")
                    ImgUserPic.ImageUrl = "~/images/2(1).jpg";
                else
                    ImgUserPic.ImageUrl = "~/images/1.jpg";
            }
         }
    }
    void enable()
    {
        TxtName.ReadOnly = true;
        txtCity.ReadOnly = true;
        TxtMobileNo.ReadOnly = true;
        txtCity.ReadOnly = true;
        txtExSub.ReadOnly = true;
        TxtMaxSal.ReadOnly = true;
        TxtMinSal.ReadOnly = true;
        TxtHQ.ReadOnly = true;
        txtGen.ReadOnly = true;
        
    }
    void disable()
    {
        TxtName.ReadOnly = false;
        txtCity.ReadOnly = false;
        TxtMobileNo.ReadOnly = false;
        txtCity.ReadOnly = false;
        txtExSub.ReadOnly = false;
        TxtMaxSal.ReadOnly = false;
        TxtMinSal.ReadOnly = false;
        TxtHQ.ReadOnly = false;
    }
        void DisplayProfile()
    {
        string uid = Session["TutorId"].ToString();      
            dm.MyCmdText = "select t.tuname,t.Gender,t.Hqid,t.PassoutYear,t.CityId,t.Address,t.ExpertiseSub,t.MobNo,t.EmailId,t.Minfee,t.Maxfee,c.CityName,c.CityId,s.sid,s.SubjectName,hq.Qid,hq.Qualification from Tbl_Tutors t,Tbl_Qulification hq,Tbl_City c,Tbl_Subject s where t.EmailId='"+uid+"' and t.hqid=hq.Qid and t.cityId=c.CityId and t.ExpertiseSub=s.sid";
        DataTable dt = dm.ReadBulkRecord();
        if (dt.Rows.Count > 0)
        {
            TxtName.Text=dt.Rows[0][0].ToString();
           string gender = dt.Rows[0][1].ToString();

            if (RdbMale.Checked == true)
                txtGen.Text = "Male";
            if (RdbFemale.Checked == true)
               txtGen.Text = "Female";
           
            TxtHQ.Text = dt.Rows[0][16].ToString();
            txtpasout.Text = dt.Rows[0][3].ToString();
            txtCity.Text = dt.Rows[0][11].ToString();
            TxtAddres.Text = dt.Rows[0][5].ToString();
            txtExSub.Text = dt.Rows[0][14].ToString();
            TxtMobileNo.Text = dt.Rows[0][7].ToString();
            LBLEmailId.Text = dt.Rows[0][8].ToString();
            TxtMinSal.Text = dt.Rows[0][9].ToString();
            TxtMaxSal.Text = dt.Rows[0][10].ToString();
           
            
        }
    }
    

    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        disable(); 
        BtnUpdate.Visible = true;
        BtnEdit.Visible = false;

        txtCity.Visible = false;
        DDLCity.Visible = true;

        txtpasout.Visible = false;
        DDLPassYear.Visible = true;

        RdbFemale.Visible = true;
        RdbMale.Visible = true;
        txtGen.Visible = false;
       
        TxtHQ.Visible = false;
        DDLHiQu.Visible = true;

        txtExSub.Visible = false;
        DDLExperSubject.Visible = true;
    }

protected void BtnUpdate_Click(object sender, EventArgs e)
{
    string uid = Session["TutorId"].ToString();
    bool gender = RdbMale.Checked == true ? true : false;
    int year = int.Parse(DDLPassYear.SelectedItem.ToString());
    dm.MyCmdText = "Update Tbl_Tutors set TuName='" + TxtName.Text + "',Gender='" + gender + "',HQId='" + DDLHiQu.SelectedValue + "',PassoutYear='" +year+ "',CityId='" + DDLCity.SelectedValue + "',Address='" + TxtAddres.Text.Trim() + "',ExpertiseSub='" + DDLExperSubject.SelectedValue + "',MobNo='" + TxtMobileNo.Text.Trim() + "',Minfee='" + TxtMinSal.Text.Trim() + "',Maxfee='" + TxtMaxSal.Text.Trim() + "'  where EmailId='" + uid+ "'";
    
    bool x = dm.ExecuteInsertUpdateOrDelete();
    if (x == true)
    {
     
        Response.Write("<script>alert('Your Profile is Updated');</script>");

        BtnEdit.Visible = true;
        BtnUpdate.Visible = false;

        txtCity.Visible = true;
        txtCity.ReadOnly = true;

        txtpasout.Visible = true;
        txtpasout.ReadOnly = true;

        txtGen.Visible = true;
        txtGen.ReadOnly = true;

        TxtHQ.Visible = true;
        TxtHQ.ReadOnly = true;

        txtExSub.Visible = true;
        txtExSub.ReadOnly = true;

        DDLCity.Visible = false;
        DDLExperSubject.Visible = false;
        DDLHiQu.Visible = false;
        DDLPassYear.Visible = false;
        RdbFemale.Visible = false;
        RdbMale.Visible = false;
        DisplayProfile();
    }
    else
    {
        Response.Write("<script>alert('Your Profile is not updated');</script>");
    }

     }

protected void BtnUpload_Click(object sender, EventArgs e)
{
    string FStatus = "";
    string uid = Session["TutorId"].ToString();
    MyFileManager mfm = new MyFileManager();
    mfm.AllowedExtension = new string[] { ".png", ".jpg", ".jpeg" };
    mfm.FolderName = "StudentPic";
    mfm.MaxAllowedSizeInKB = 3072;
    mfm.MyFileUpload = FuPic;
    FStatus = mfm.ValidateMyFile();
    if (FStatus == "SUCCESS")
    {
        mfm.UploadMyFile();
        dm.MyCmdText = "Insert into Tbl_UserPic values('" + uid + "','" + mfm.FileName + "','" + mfm.FolderName + "','" + mfm.FileExtension + "','" + mfm.FileSizeInKB + "','" + DateTime.Now.ToString("MM-dd-yyyy") + "')";
        bool b = dm.ExecuteInsertUpdateOrDelete();
        if (b == true)
        {
            
            dm.MyCmdText = "select FileName,FolderName from Tbl_UserPic where UserId='" + uid + "' order by PicId desc";
            dt = dm.ReadBulkRecord();
            ImgUserPic.ImageUrl = dt.Rows[0][1] + "/" + dt.Rows[0][0];
            Response.Redirect("TutorHome.aspx?Status=" + true);
        }
    }
    else
    {
        Response.Write("<script>alert('Not Upload')</script>");
    }
}
}

