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

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
    }
    protected void btnSubmit(object sender, EventArgs e)
    {
        
      // SqlDataSource1.InsertParameters["authorizedName"].DefaultValue = ((TextBox)FindControl("authorizedName")).Text;
    }

   
    
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {

    }
    protected void SqlDataSource1_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
}