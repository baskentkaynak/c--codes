<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="Admin_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




    <title>User</title>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bkdbConnectionStringuser %>" ProviderName="<%$ ConnectionStrings:bkdbConnectionStringuser.ProviderName %>" SelectCommand="SELECT * FROM user WHERE (isActive = ?) ORDER BY userID" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM user WHERE userID = ? AND isActive = ? AND isAdmin = ? AND loginName = ? AND loginPassword = ? AND userName = ? AND userSurname = ? AND mobilePhone = ? AND email = ? AND position = ? AND address = ? AND note = ?" InsertCommand="INSERT INTO user (isActive, isAdmin, userID, loginName, loginPassword], [userName], [userSurname], [mobilePhone], [email], [position], [address], [note]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE user SET isActive = ?, isAdmin = ?, loginName = ?, loginPassword = ?, userName = ?, userSurname = ?, mobilePhone = ?, email = ?, position = ?, address = ?, note = ? WHERE userID = ? AND isActive = ? AND isAdmin = ? AND loginName = ? AND loginPassword = ? AND userName = ? AND userSurname = ? AND mobilePhone = ? AND email = ? AND position = ? AND address = ? AND note = ?">
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
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="isActive" Type="Object" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="isActive" Type="Object" />
                <asp:Parameter Name="isAdmin" Type="Object" />
                <asp:Parameter Name="loginName" Type="String" />
                <asp:Parameter Name="loginPassword" Type="String" />
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="userSurname" Type="String" />
                <asp:Parameter Name="mobilePhone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="note" Type="String" />
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
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
