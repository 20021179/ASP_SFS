<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/MasterPage_Advisor.master" AutoEventWireup="true" CodeFile="ManageStudent.aspx.cs" Inherits="Advisor_ManageStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 244px;
            height: 145px;
            position: absolute;
            top: 191px;
            left: 146px;
            z-index: 1;
        }
        .auto-style4 {
            width: 244px;
            height: 145px;
            position: absolute;
            top: 194px;
            left: 405px;
            z-index: 1;
        }
        .auto-style6 {
            width: 244px;
            height: 145px;
            position: absolute;
            top: 192px;
            left: 671px;
            z-index: 1;
        }
        .auto-style7 {
            width: 119px;
            height: 145px;
            position: absolute;
            top: 192px;
            left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Title">Manage Student</div> 
    <div id="subTitle">View Search 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT [FacultyName] FROM [Faculty]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT [ProgramName] FROM [Program]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT [Course_Name] FROM [Course]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style7" style="z-index: 1">
            <Columns>
                <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" SortExpression="FacultyName" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ProgramName" HeaderText="ProgramName" SortExpression="ProgramName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT [Location] FROM [Campus]"></asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CssClass="auto-style6" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            </Columns>
        </asp:GridView>
</div>
    
</asp:Content>

