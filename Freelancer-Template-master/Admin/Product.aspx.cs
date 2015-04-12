using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Text;
using System.Data;




public partial class Admin_Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MySqlConnection myconn = new MySqlConnection("server=127.0.0.1;user id=root;persistsecurityinfo=True;database=bkdb;port=3306;password=0000;");
            string strSQL = "select * from customer";
            myconn.Open();
            MySqlDataAdapter mydata = new MySqlDataAdapter(strSQL, myconn);

            MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(mydata);

            DataSet ds = new DataSet();

            mydata.Fill(ds);
            
          
            myconn.Close();
        }
//        string MyConString = "server=127.0.0.1;user id=root;persistsecurityinfo=True;database=bkdb;port=3306;password=0000";
//        MySqlConnection connection = new MySqlConnection(MyConString);
//        MySqlCommand command = connection.CreateCommand();
//        MySqlDataReader Reader;
//        command.CommandText = "SELECT firmName, authorizedName, authorizedSurname, firmPhone " + "FROM customer";
//        connection.Open();
//        command.CommandTimeout = 50000;
//        Reader = command.ExecuteReader();
//        Reader.Read();
//        while (Reader.Read())
//        {
//            string firmName = (string)Reader["firmName"];
//            string authorizedName = (string)Reader["amount"];
//        }

//     string taslak = @"<tr>
//                                <th>{0}</th>
//                                <th>{1}</th>
//                                <th>{2}</th>
//                                <th>{3}</th>
//                                <th>{4}</th>
//                                <th>{5}</th>
//                            </tr>";

//     string html = null;

//     while ( Reader.Read())
//     {
//         html += string.Format( taslak , "ali" , "veli" );
//     }
 
     //Literal1.Text = html;
    }
}
