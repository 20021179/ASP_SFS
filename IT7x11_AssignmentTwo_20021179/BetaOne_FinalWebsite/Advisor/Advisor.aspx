<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/MasterPage_Advisor.master" AutoEventWireup="true" CodeFile="Advisor.aspx.cs" Inherits="Advisor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Welcome to the Main page of the Advisor.


    <div class="divHeading" >
        <div id="Title2">Search Student</div>
    </div>
        <div class="divStudentSearch"> 
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>
                        Student ID
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TextBoxStudentID" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                      <asp:Button ID="ButtonSeach" runat="server" Text="Search" OnClick="ButtonSeach_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    
                     <asp:TableCell>
                           
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow >
                    <asp:TableCell ColumnSpan="2" >
                        <asp:ListBox ID="ListBoxStudentDetails" runat="server" Width="300px" Height="200px"></asp:ListBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
</asp:Content>

