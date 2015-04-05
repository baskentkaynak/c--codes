using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data;
using MySql.Data.MySqlClient;


public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        getir();
    }

    protected void getir()
    {
        string MyConString = "server=127.0.0.1;user id=root;persistsecurityinfo=True;database=bkdb;port=3306;password=0000";
        MySqlConnection connection = new MySqlConnection(MyConString);
        MySqlCommand command = connection.CreateCommand();
        MySqlDataReader Reader;
        command.CommandText = "SELECT loginName,loginPassword " + "FROM user" + " WHERE loginName = '" + txtUsername.Text + "' AND loginPassword = '" + txtPassword.Text + "'";
        connection.Open();
        command.CommandTimeout = 50000;
        Reader = command.ExecuteReader();
        Reader.Read();
        if (Reader.HasRows)
        {
            //Response.Write("Başarılı giriş");
            Reader.Close();
            connection.Close();
            Response.Redirect("Default.aspx",true);
        }
        else
        {
            //Response.Write("Hatalı giriş");
            Reader.Close();
            connection.Close();

        }
       
    }
}