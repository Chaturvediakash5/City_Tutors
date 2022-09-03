using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
/// <summary>
/// Summary description for SMSSender
/// </summary>
public class SMSSender
{
    string MyUserId, MyPassword, MySenderId, MyRoute, SmsType;
	public SMSSender()
	{
        MySenderId = "SPILKO";
        MyUserId = "SPIVT";
        MyPassword = "SPIVT011";
        SmsType = "Trans";
        MyRoute = "2";
	}
    public bool SendMySMS(string MobNo, string Message)
    {
        try
        {
            string APIUrl = "http://smsfortius.com/api/mt/SendSMS?user="
            +MyUserId+"&password="+MyPassword+"&senderid="+MySenderId+
            "&channel="+SmsType+"&DCS=0&flashsms=0&number=91"+MobNo+
            "&text="+Message+"&route="+MyRoute;
            WebClient wc = new WebClient();
            string result=wc.DownloadString(APIUrl);// Main instruction to sendSMS
            return true;
        }
        catch
        {
            return false;
        }
    }
}