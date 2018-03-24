<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Logins_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <title>Login</title>
    <link href="Login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 311px;
            top: 479px;
            position: absolute;
            right: 718px;
        }
        .auto-style2 {
            z-index: 1;
            left: 623px;
            top: 315px;
            position: absolute;
        }

    </style>
    <script type="text/javascript">
   
</script>
</head>
<body>
    <form id="form1" runat="server">
    
        <div id="container">
           <span id="title">Login Page</span> 
           <div>UserName:<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrator/AdminLogin.aspx" CssClass="auto-style2">Admin Login</asp:HyperLink>
            </div> <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Field required"></asp:RequiredFieldValidator>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logins/ForgotPW.aspx" style="z-index: 1; left: 621px; top: 341px; position: absolute">Forgot Password?</asp:HyperLink>
            <div>Password:</div><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Field Required"></asp:RequiredFieldValidator>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Logins/Help.aspx" style="position: absolute; z-index: 1; left: 622px; top: 368px">About</asp:HyperLink>
            <div><asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                <asp:Label ID="lblError" runat="server" CssClass="auto-style1"></asp:Label>
               
            </div>

        </div>
    </form>
</body>
</html>
