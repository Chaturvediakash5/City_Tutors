using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for DBManager
/// </summary>
public class DBManager
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    public string MyCmdText { get; set; }
	public DBManager() // Defrault Constructor
	{
        con = new SqlConnection(ConfigurationManager.
            ConnectionStrings["CityTutorsDBConnectionString"].ToString());
        cmd = new SqlCommand();
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
	}
    public DBManager(string CommandText) // Parameterized Constructor
    {
        MyCmdText = CommandText;
        con = new SqlConnection(ConfigurationManager.
            ConnectionStrings["CityTutorsDBConnectionString"].ToString());
        cmd = new SqlCommand();
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
    }
    private void OpenDB()
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
    }
    private void CloseDB()
    {
        if (con.State == ConnectionState.Open)
            con.Close();
    }
    public bool ExecuteInsertUpdateOrDelete()
    {
        try
        {
            cmd.CommandText = MyCmdText;
            cmd.Connection = con;
            OpenDB();

            int n = cmd.ExecuteNonQuery();
            CloseDB();
            return n > 0 ? true : false;
        }
        catch
        {
            return false;
        }
       
    }
    public object ReadSingleValue()
    {
        try
        {
            cmd.CommandText = MyCmdText;
            cmd.Connection = con;
            OpenDB();
            object ob = cmd.ExecuteScalar();
            CloseDB();
            return ob;
        }
        catch
        {
            return "ERROR";
        }
    }
    public DataTable ReadBulkRecord()
    {
        try
        {
            dt = new DataTable();
            cmd.CommandText = MyCmdText;
            cmd.Connection = con;
            da.Fill(dt);
            return dt;
        }
        catch
        {
            return dt;
        }
    }
}