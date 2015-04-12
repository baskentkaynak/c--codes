using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class RepeaterDeneme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                MySqlConnection myconn = new MySqlConnection("server=127.0.0.1;user id=root;persistsecurityinfo=True;database=bkdb;port=3306;password=0000;");
                string strSQL = "select * from customer";
                myconn.Open();
                MySqlDataAdapter mydata = new MySqlDataAdapter(strSQL, myconn);

                MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(mydata);

                DataSet ds = new DataSet();

                mydata.Fill(ds);

                rpt1.DataSource = ds;
                rpt1.DataBind();
                myconn.Close();
            }
            catch (Exception)
            {
                
                throw;
            }
           
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Clickk(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            try
            {
                string MyConString = "server=127.0.0.1;user id=root;persistsecurityinfo=True;database=bkdb;port=3306;password=0000";
                MySqlConnection connection = new MySqlConnection(MyConString);
                connection.Open();
                MySqlCommand command = new MySqlCommand("Insert into customer (firmName,authorizedName, authorizedSurname,firmPhone,mobilePhone,faxNumber,email,companyAddress,deliveryAddress,taxDepartment,taxNumber) values(@pfirmName,@pauthorizedName,@pauthorizedSurname,@pfirmPhone,@pmobilePhone,@pfaxNumber,@pemail,@pcompanyAddress,@pdeliveryAddress,@ptaxDepartment,@ptaxNumber)", connection);
             
                command.Parameters.AddWithValue("@pfirmName", firmName.Text);
                command.Parameters.AddWithValue("@pauthorizedName", authorizedName.Text);
                command.Parameters.AddWithValue("@pauthorizedSurname", authorizedSurname.Text);
                command.Parameters.AddWithValue("@pfirmPhone", firmPhone.Text);
                command.Parameters.AddWithValue("@pmobilePhone", mobilePhone.Text);
                command.Parameters.AddWithValue("@pfaxNumber", faxNumber.Text);
                command.Parameters.AddWithValue("@pemail", email.Text);
                command.Parameters.AddWithValue("@pcompanyAddress", companyAddress.Text);
                command.Parameters.AddWithValue("@pdeliveryAddress", deliveryAddress.Text);
                command.Parameters.AddWithValue("@ptaxDepartment", taxDepartment.Text);
                command.Parameters.AddWithValue("@ptaxNumber", taxNumber.Text);
                command.ExecuteNonQuery();
                command.Dispose();
                connection.Close();


            }
            catch (Exception)
            {

                throw;
            }

        }
    }
    
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}