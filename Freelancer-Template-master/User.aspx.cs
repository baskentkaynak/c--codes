using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
           /* MySqlConnection myconn = new MySqlConnection("server=127.0.0.1;user id=root;persistsecurityinfo=True;database=bkdb;port=3306;password=0000;");
            string strSQL = "select * from customer";
            myconn.Open();
            MySqlDataAdapter mydata = new MySqlDataAdapter(strSQL, myconn);

            MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(mydata);

            DataSet ds = new DataSet();

            mydata.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            myconn.Close();
            //string MyConString = "server=127.0.0.1;user id=root;persistsecurityinfo=True;database=bkdb;port=3306;password=0000";
            //MySqlConnection connection = new MySqlConnection(MyConString);
            //connection.Open();
            //DataTable table = new DataTable();*/

           
            //MySqlDataAdapter adapter = new MySqlDataAdapter("Select * From customer", connection);
            //adapter.Fill(table);
            //GridView1.DataSource = table;
            //string set = "asda";
            //Response.Write(table);
            //Response.Write(set);
            //connection.Close();
        }
        catch (Exception)
        {
            
            throw;
        }
        
       
     
     

       

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}