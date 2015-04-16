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
      <a class="navbar-brand" href="#">Başkent Kaynak</a>
       
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

      
        <asp:GridView ID="GridView1" CssClass="table" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource5" AutoGenerateColumns="False" DataKeyNames="productID">
            <Columns>
               
                 
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" EditText="Değiştir" DeleteText="Sil" CancelText="Vazgeç" UpdateText="Değiştir"  ControlStyle-CssClass="btn-toolbar" />
                <asp:CheckBoxField DataField="isActive" HeaderText="isActive" SortExpression="isActive" />
                <asp:BoundField DataField="productID" HeaderText="productID" InsertVisible="False" ReadOnly="True" SortExpression="productID" />
                <asp:BoundField DataField="productName" HeaderText="Ürün İsmi" SortExpression="productName" />
                <asp:BoundField DataField="length" HeaderText="Boy" SortExpression="length" />
                <asp:BoundField DataField="width" HeaderText="En" SortExpression="width" />
                <asp:BoundField DataField="diameter" HeaderText="Genişlil" SortExpression="diameter" />
                <asp:BoundField DataField="cellularradiatorlenght" HeaderText="Petek Sayısı" SortExpression="cellularradiatorlenght" />
                <asp:BoundField DataField="price" HeaderText="Fiyat" SortExpression="price" />
                <asp:BoundField DataField="stockAmount" HeaderText="Stok" SortExpression="stockAmount" />
                <asp:BoundField DataField="barcodeNumber" HeaderText="Barkod No" SortExpression="barcodeNumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bkdbConnectionString3 %>" DeleteCommand="UPDATE  product SET isActive = 0 WHERE productID = ? " InsertCommand="INSERT INTO product (isActive, productID, productName, length, width, diameter, cellularradiatorlenght, price, stockAmount, barcodeNumber) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:bkdbConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM product WHERE (isActive = 1) ORDER BY productID" UpdateCommand="UPDATE product SET isActive = 1,productID= ?, productName = ?, length = ?, width = ?, diameter = ?, cellularradiatorlenght = ?, price = ?, stockAmount = ?, barcodeNumber = ? WHERE productID = ? ">
            <DeleteParameters>
                <asp:Parameter Name="productID" Type="Object" />
                <asp:Parameter Name="isActive" Type="Object" />
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="length" Type="String" />
                <asp:Parameter Name="width" Type="String" />
                <asp:Parameter Name="diameter" Type="String" />
                <asp:Parameter Name="cellularradiatorlenght" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="stockAmount" Type="Object" />
                <asp:Parameter Name="barcodeNumber" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="isActive" Type="Object" />
                <asp:Parameter Name="productID" Type="Object" />
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="length" Type="String" />
                <asp:Parameter Name="width" Type="String" />
                <asp:Parameter Name="diameter" Type="String" />
                <asp:Parameter Name="cellularradiatorlenght" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="stockAmount" Type="Object" />
                <asp:Parameter Name="barcodeNumber" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="isActive" Type="Object" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="isActive" Type="Object" />
                <asp:Parameter Name="productID" Type="Object" />
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="length" Type="String" />
                <asp:Parameter Name="width" Type="String" />
                <asp:Parameter Name="diameter" Type="String" />
                <asp:Parameter Name="cellularradiatorlenght" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="stockAmount" Type="Object" />
                <asp:Parameter Name="barcodeNumber" Type="String" />
               
            </UpdateParameters>
        </asp:SqlDataSource>


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
                        <div class="btn-block" role="group" ">
                            <a href="#add" role="button" class="btn btn-success" data-toggle="modal">Ekle</a>
                             
</div>
        </div>

              
                            <div id="add" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Yeni Ürün Ekle</h4>
            </div>
            <div class="modal-body">
                <fieldset>
                                    <div class="form-group">
                                        <asp:TextBox ID="authorizedName" runat="server" CssClass="form-control" placeholder="İsim"></asp:TextBox>
                                        <asp:TextBox ID="authorizedSurname" runat="server" CssClass="form-control" placeholder="Soyisim"></asp:TextBox>
                                        <asp:TextBox ID="firmNamee" runat="server" CssClass="form-control" placeholder="Firma Adı"></asp:TextBox>
                                        <asp:TextBox ID="firmPhone" runat="server" CssClass="form-control" placeholder="Firma Telefonu"></asp:TextBox>
                                        <asp:TextBox ID="mobilePhone" runat="server" CssClass="form-control" placeholder="Cep Telefonu"></asp:TextBox>
                                        <asp:TextBox ID="faxNumber" runat="server" CssClass="form-control" placeholder="Fax"></asp:TextBox>
                                        <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="E-Mail"></asp:TextBox>
                                        <asp:TextBox ID="companyAddress" runat="server" CssClass="form-control" rows="10" placeholder="Firma Adresi"></asp:TextBox>
                                        <asp:TextBox ID="deliveryAddress" runat="server" CssClass="form-control" placeholder="Kargo Adresi"></asp:TextBox>
                                        <asp:TextBox ID="taxDepartment" runat="server" CssClass="form-control" placeholder="Vergi Dairesi"></asp:TextBox>
                                        <asp:TextBox ID="taxNumber" runat="server" CssClass="form-control" placeholder="Vergi No"></asp:TextBox>
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
