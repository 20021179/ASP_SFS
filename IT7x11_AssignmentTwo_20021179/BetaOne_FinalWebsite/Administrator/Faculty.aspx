<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Faculty]">
</asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="FacultyID" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Center" Width="125px">
        <Fields>
            <asp:BoundField DataField="FacultyID" HeaderText="FacultyID" InsertVisible="False" ReadOnly="True" SortExpression="FacultyID" />
            <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" SortExpression="FacultyName" />
        </Fields>
    </asp:DetailsView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="FacultyID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="FacultyID" HeaderText="FacultyID" InsertVisible="False" ReadOnly="True" SortExpression="FacultyID" />
            <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" SortExpression="FacultyName" />
        </Columns>
    </asp:GridView>
<div id="subHeading">Faculty<br />
    <br />
    </div>
    
    </asp:Content>

