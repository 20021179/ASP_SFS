<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Administrator_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Logins/Login.css" rel="stylesheet" />
    <title>Administrator Login Page......</title>

</head>
<body>
    <form id="form1" runat="server">
         <div id="container">
           <span id="title">Admin Login Page</span> 
           <div>UserName:<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logins/Login.aspx" style="z-index: 1; left: 622px; top: 315px; position: absolute">Back To Main</asp:HyperLink>
            </div> <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Field required"></asp:RequiredFieldValidator>
            <div>Password:</div><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Field Required"></asp:RequiredFieldValidator>
            <div><asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 313px; top: 452px; position: absolute"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
