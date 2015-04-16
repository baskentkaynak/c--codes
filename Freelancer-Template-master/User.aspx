<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="RepeaterDeneme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Customer</title>

     <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--if lt IE 9>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <!endif-->

 
    </head>
<body>
    <form id="form1" runat="server">
        <div>
         <nav class="navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Default.aspx">Başkent Kaynak</a>
       
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">

      <li><a href="Customer.aspx">Müşteri</a></li>
        <li><a href="Product.aspx">Ürün</a></li>
          <li><a href="User.aspx">Kullanıcı</a></li>
          <li><a href="Default.aspx">Link</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

       
        
    <div>
    </div>
  
            
            
            
            
            
             <!-- <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            
            <tr>
               
                <th class="auto-style9">#</th>
                <th class="auto-style8">Ad</th>
                <th class="auto-style2">Soyad</th>
                <th class="auto-style7">Firma Adı</th>
                <th class="auto-style4">Telefon.</th>
                <th class="auto-style5">Cep Tel.</th>
                <th class="auto-style6">Fax</th>
                    
            </tr>
              
        </thead>
              
                <tr>
                    <asp:Repeater ID="rpt1" runat="server">
                          
                        <ItemTemplate>
                              
                            <tbody>
                                <td class="auto-style4">
                            <input class="no-margin" type="checkbox"/>
                                </td>
                            <td><%# DataBinder.Eval(Container.DataItem, "authorizedName") %> </td>

                            <td><%# DataBinder.Eval(Container.DataItem, "authorizedSurname") %> </td>

                            <td><%# DataBinder.Eval(Container.DataItem, "firmName") %> </td>
                            
                            <td><%# DataBinder.Eval(Container.DataItem, "firmPhone") %> </td>
                           
                             <td><%# DataBinder.Eval(Container.DataItem, "mobilePhone") %> </td>
                            
                            <td><%# DataBinder.Eval(Container.DataItem, "faxNumber") %> </td>

                             </tbody>
                        </ItemTemplate>
                    

                    </asp:Repeater>
                </tr>
    
                       	
            </table>-->
                      
                             
                            <asp:GridView ID="GridView1" CssClass="table" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" DataKeyNames="userID" >
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowInsertButton="false" ShowEditButton="True" ButtonType="Button" EditText="Değiştir" DeleteText="Sil" CancelText="Vazgeç" UpdateText="Değiştir"  ControlStyle-CssClass="btn-toolbar" />
                                    <asp:CheckBoxField DataField="isActive" HeaderText="isActive" SortExpression="isActive" />
                                    <asp:CheckBoxField DataField="isAdmin" HeaderText="isAdmin" SortExpression="isAdmin" />
                                    <asp:BoundField DataField="userID" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                                    <asp:BoundField DataField="loginName" HeaderText="Kullanıcı Adı" SortExpression="loginName" />
                                    <asp:BoundField DataField="loginPassword" HeaderText="Şifre" SortExpression="loginPassword" />
                                    <asp:BoundField DataField="userName" HeaderText="İsim" SortExpression="userName" />
                                    <asp:BoundField DataField="userSurname" HeaderText="Soyisim" SortExpression="userSurname" />
                                    <asp:BoundField DataField="mobilePhone" HeaderText="Cep Tel" SortExpression="mobilePhone" />
                                    <asp:BoundField DataField="email" HeaderText="E-Mail" SortExpression="email" />
                                    <asp:BoundField DataField="position" HeaderText="Pozisyon" SortExpression="position" />
                                    <asp:BoundField DataField="address" HeaderText="Adres" SortExpression="address" />
                                    <asp:BoundField DataField="note" HeaderText="Not" SortExpression="note" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:bkdbConnectionString4 %>" ProviderName="<%$ ConnectionStrings:bkdbConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM user WHERE isActive=1" ConflictDetection="CompareAllValues" DeleteCommand="UPDATE user SET isActive=0 WHERE userID=?" InsertCommand="INSERT INTO user (isActive, isAdmin, userID, loginName, loginPassword, userName, userSurname, mobilePhone, email, position, address, note) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE user SET isActive = 1, isAdmin = ?, loginName = ?, loginPassword = ?, userName = ?, userSurname = ?, mobilePhone = ?, email = ?, position = ?, address = ?, note = ? WHERE userID =? " >
                                <DeleteParameters>
                                    <asp:Parameter Name="original_userID" Type="Object" />
                                    <asp:Parameter Name="original_isActive" Type="Object" />
                                    <asp:Parameter Name="original_isAdmin" Type="Object" />
                                    <asp:Parameter Name="original_loginName" Type="String" />
                                    <asp:Parameter Name="original_loginPassword" Type="String" />
                                    <asp:Parameter Name="original_userName" Type="String" />
                                    <asp:Parameter Name="original_userSurname" Type="String" />
                                    <asp:Parameter Name="original_mobilePhone" Type="String" />
                                    <asp:Parameter Name="original_email" Type="String" />
                                    <asp:Parameter Name="original_position" Type="String" />
                                    <asp:Parameter Name="original_address" Type="String" />
                                    <asp:Parameter Name="original_note" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="isActive" Type="Object" />
                                    <asp:Parameter Name="isAdmin" Type="Object" />
                                    <asp:Parameter Name="userID" Type="Object" />
                                    <asp:Parameter Name="loginName" Type="String" />
                                    <asp:Parameter Name="loginPassword" Type="String" />
                                    <asp:Parameter Name="userName" Type="String" />
                                    <asp:Parameter Name="userSurname" Type="String" />
                                    <asp:Parameter Name="mobilePhone" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="position" Type="String" />
                                    <asp:Parameter Name="address" Type="String" />
                                    <asp:Parameter Name="note" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    
                                    <asp:Parameter Name="isAdmin" Type="Object" />
                                    <asp:Parameter Name="userID" Type="Object" />
                                    <asp:Parameter Name="loginName" Type="String" />
                                    <asp:Parameter Name="loginPassword" Type="String" />
                                    <asp:Parameter Name="userName" Type="String" />
                                    <asp:Parameter Name="userSurname" Type="String" />
                                    <asp:Parameter Name="mobilePhone" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="position" Type="String" />
                                    <asp:Parameter Name="address" Type="String" />
                                    <asp:Parameter Name="note" Type="String" />
                                    
                                </UpdateParameters>
                            </asp:SqlDataSource>
                             
</div>
       
          <div class="btn-block" role="group" ">
                            <a href="#add" role="button" class="btn btn-success" data-toggle="modal">Ekle</a>

               </div>
                            <div id="add" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Yeni Kullanıcı Ekle</h4>
            </div>
            <div class="modal-body">
                <fieldset>
                                  <div class="form-group">
                                        <asp:TextBox ID="loginName" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
                                        <asp:TextBox ID="loginPassword" runat="server" CssClass="form-control" placeholder="Kullanıcı Şifresi"></asp:TextBox>
                                        <asp:TextBox ID="userName" runat="server" CssClass="form-control" placeholder="İsim"></asp:TextBox>
                                        <asp:TextBox ID="userSurname" runat="server" CssClass="form-control" placeholder="Soyisim"></asp:TextBox>
                                        <asp:TextBox ID="mobilePhone" runat="server" CssClass="form-control" placeholder="Cep Telefonu"></asp:TextBox>
                                        <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="E-Mail"></asp:TextBox>
                                        <asp:TextBox ID="position" runat="server" CssClass="form-control" placeholder="Pozisyon"></asp:TextBox>
                                        <asp:TextBox ID="address" runat="server" CssClass="form-control" rows="4" placeholder=" Adres"></asp:TextBox>
                                        <asp:TextBox ID="note" runat="server" CssClass="form-control" placeholder="Not"></asp:TextBox>
                                        
                                    </div>
                                   
                                    
                                </fieldset>
             </div>
            <div class="modal-footer">
              
              <asp:Button ID="Add" runat="server" Text="Ekle" CommandName="insert" CommandArgument="#SqlDataSource1"               
                   CssClass="btn btn-lg btn-success btn-block" onclick="btnSubmit"/> 
            </div>
        </div>
    </div>
</div>


       

    </form>
</body>
      <!-- jQuery Version 1.11.0 -->
        <script src="js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/sb-admin-2.js"></script>
</html>
    