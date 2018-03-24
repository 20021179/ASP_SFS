<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="Program.aspx.cs" Inherits="Administrator_Program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Program]">
</asp:SqlDataSource>
    <div id="subHeading">Program</div><asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ProgramID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" InsertVisible="False" ReadOnly="True" SortExpression="ProgramID" />
            <asp:BoundField DataField="ProgramName" HeaderText="ProgramName" SortExpression="ProgramName" />
            <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" SortExpression="FacultyName" />
            <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="FacultyID" HeaderText="FacultyID" SortExpression="FacultyID" />
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
            <asp:BoundField DataField="CampusID" HeaderText="CampusID" SortExpression="CampusID" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProgramID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" InsertVisible="False" ReadOnly="True" SortExpression="ProgramID" />
                <asp:BoundField DataField="ProgramName" HeaderText="ProgramName" SortExpression="ProgramName" />
                <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" SortExpression="FacultyName" />
                <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="FacultyID" HeaderText="FacultyID" SortExpression="FacultyID" />
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                <asp:BoundField DataField="CampusID" HeaderText="CampusID" SortExpression="CampusID" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>


</asp:Content>

