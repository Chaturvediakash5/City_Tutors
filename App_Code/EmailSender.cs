using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for EmailSender
/// </summary>
public class EmailSender
{
    MailMessage msg = new MailMessage();
    SmtpClient client = new SmtpClient();
    public string SendTo { get; set; }
    public string Subject { get; set; }
    public string AttachmentPath { get; set; }
    public string Cc { get; set; }
    public string Messege { get; set; }
	public EmailSender()
	{
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        client.UseDefaultCredentials = false;//give to rights.
        NetworkCredential nc = new NetworkCredential("chaturvediakash5@gmail.com", "Shiva@1991");
        client.Credentials = nc;
        client.EnableSsl = true;
	}
    public bool SendEmail()
    {
        try
        {
            MailAddress from = new MailAddress("chaturvediakash5@gmail.com");
            MailAddress to = new MailAddress(SendTo);
            msg.To.Add(to);
            msg.From = from;
            msg.Subject = Subject;
            msg.Body = Messege;
            msg.Sender = to;
            if (Cc != null && Cc != "")
            {
                MailAddress Ccmail = new MailAddress(Cc);
                msg.CC.Add(Ccmail);
            }
            if (AttachmentPath != null && AttachmentPath != "")
            {
                Attachment at = new Attachment(HttpContext.Current.Server.MapPath(AttachmentPath));
                msg.Attachments.Add(at);
            }
            client.Send(msg);//sending massege.
            return true;
        }
        catch
        {
            return false;
        }
    }
    }