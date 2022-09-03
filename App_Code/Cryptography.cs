using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;
/// <summary>
/// Summary description for Cryptography
/// </summary>
public class Cryptography
{
    AesCryptoServiceProvider provider = new AesCryptoServiceProvider();

	public Cryptography()
	{
        provider.BlockSize = 128;
        provider.KeySize = 128;
        byte[] Keys = new byte[] { 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 154, 243, 55, 77 };
        byte[] InVect = new byte[] { 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160 };
        provider.Key = Keys;//fix security
        provider.IV = InVect;//fix encryption
        provider.Mode = CipherMode.CBC;
        provider.Padding = PaddingMode.PKCS7;
	}
    public string EncryptMyData(string PlainText)
    {
        ICryptoTransform transform = provider.CreateEncryptor();
        byte[] EncryptedBytes = transform.TransformFinalBlock(ASCIIEncoding.ASCII.GetBytes(PlainText), 0, PlainText.Length);
        string CiperText = Convert.ToBase64String(EncryptedBytes);
        return CiperText;
    }
    public string DecryptMyData(string CiperText)
    {
        ICryptoTransform transform = provider.CreateDecryptor();
        byte[] EncryptedBytes = Convert.FromBase64String(CiperText);
        byte[] DecryptedBytes = transform.TransformFinalBlock(EncryptedBytes, 0, EncryptedBytes.Length);
        string PlainText = ASCIIEncoding.ASCII.GetString(DecryptedBytes);
        return PlainText;
    }
}