using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

/// <summary>
/// Summary description for Captcha
/// </summary>
public class Captcha
{
	public Captcha()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string GetCaptchaCode()
    {
        string code = "";
        Random r = new Random();
        code += (char)r.Next(65, 90);
        code += (char)r.Next(49, 57);
        code += (char)r.Next(100, 120);
        code += (char)r.Next(70, 80);
        code += (char)r.Next(90, 110);
        code += (char)r.Next(70, 100);
        return code;
    }
    private Bitmap CreateCaptchaImg(string ImageText )
    {
        Bitmap Bmp = new Bitmap(135, 35);
        Pen RedPen = new Pen(Color.Red);
        Font f = new Font("Arial", 18, FontStyle.Strikeout, GraphicsUnit.Pixel);
        SolidBrush BlueBrush = new SolidBrush(Color.Blue);
        Graphics g = Graphics.FromImage(Bmp);
        g.Clear(Color.Silver);
        Rectangle r = new Rectangle(2, 2, 133, 33);
        g.DrawRectangle(RedPen, r);
        
        g.DrawString(ImageText, f, BlueBrush, 22, 8);
        g.Flush();
        return Bmp;
    
    }
    public string[] GetCaptchaImgAndCode()
    {
        string[] arr = new string[2];
      string Code = GetCaptchaCode();
        Bitmap bm = CreateCaptchaImg(Code);
        string FileName, FolderPath;
        FileName = Path.GetRandomFileName() + ".jpg";
        FolderPath = HttpContext.Current.Server.MapPath("~/CaptchaImg");
        if (!Directory.Exists(FolderPath))
            Directory.CreateDirectory(FolderPath);
        bm.Save(FolderPath + "/" + FileName, ImageFormat.Jpeg);
        arr[0] = FileName;
        arr[1] = Code;
        return arr;

    }
    public int getSecurityCode()
    {
        Random r = new Random();
        int num = r.Next(100000, 999999);
        return num;
    }
}