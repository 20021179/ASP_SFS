<%@ Page Title="" Language="C#" MasterPageFile="~/Logins/Credentials.master" AutoEventWireup="true" CodeFile="ForgotPW.aspx.cs" Inherits="Logins_ForgotPW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            z-index: 1;
            left: 307px;
            top: 424px;
            position: absolute;
        }
        .auto-style4 {
            position: absolute;
            z-index: 1;
            left: 582px;
            top: 465px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="container">
           <span id="title">Forgot Password</span> 
           <div>UserName:</div> <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Logins/Help.aspx" CssClass="auto-style4">Need Help?</asp:HyperLink>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Invalid input"></asp:RequiredFieldValidator>
            <div><asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                <asp:Label ID="lblError" runat="server" CssClass="auto-style2"></asp:Label>
                <div><asp:Label ID="lblShowPassword" runat="server"></asp:Label>
                    <asp:HyperLink ID="LnkBack" runat="server" NavigateUrl="~/Logins/Login.aspx">[LnkBack]</asp:HyperLink>
                    
                </div>
              
                
            </div>
        </div>
    

</asp:Content>

