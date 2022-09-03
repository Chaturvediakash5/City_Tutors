using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.IO;

/// <summary>
/// Summary description for MyFileManager
/// </summary>
public class MyFileManager
{
    public string FolderName { get; set; }
    public string FileName { get; set; }
    public int MaxAllowedSizeInKB { get; set; }
    public string[] AllowedExtension { get; set; }
    public FileUpload MyFileUpload { get; set; }
    public int FileSizeInKB;
    public string FileExtension;
	public MyFileManager()  // Constructor...
	{
        FolderName = "UserFiles";
        MaxAllowedSizeInKB = 2048;
        AllowedExtension=new string[]{".PNG",".JPG",
 ".JPEG",".DOC",".DOCX",".PDF",".XLS",".XALS",".PPT",
 ".PPTX"};
	}
    private void SetFileExtension()
    {
        FileExtension = MyFileUpload.FileName.
        Substring(MyFileUpload.FileName.LastIndexOf('.'));
    }
    private void SetFileSize()
    {
        int x = MyFileUpload.PostedFile.ContentLength;
        FileSizeInKB = x / 1024;
    }
    public string ValidateMyFile()
    {
        // Is File Exist...
        if (MyFileUpload.HasFile == true)
        {
            // Validate file Size
            SetFileSize();
            if (FileSizeInKB <= MaxAllowedSizeInKB)
            {
                // Validate file type
                SetFileExtension();
                bool Status = false;
                foreach (string type in AllowedExtension)
                {
                    if (type.ToUpper() == FileExtension.ToUpper())
                    {
                        Status = true;
                        break;
                    }
                }
                return Status == true ? "SUCCESS" : "INVALID";
            }
            else
                return "LARGE";
        }
        else
            return "NOTFOUND";
    }
    public bool UploadMyFile()
    {
        try
        {
            if (ValidateMyFile() == "SUCCESS")
            {
                FileName = Path.GetRandomFileName() +
                    MyFileUpload.FileName;
                string folderPath = HttpContext.Current.Server.
                    MapPath("~/" + FolderName);
                if (Directory.Exists(folderPath) == false)
                    Directory.CreateDirectory(folderPath);
                MyFileUpload.SaveAs(folderPath + "/" + FileName);
                return true;
            }
            else
                return false;
        }
        catch
        {
            return false;
        }
    }
}