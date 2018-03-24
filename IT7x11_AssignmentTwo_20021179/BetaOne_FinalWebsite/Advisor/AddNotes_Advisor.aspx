<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/MasterPage_Advisor.master" AutoEventWireup="true" CodeFile="AddNotes_Advisor.aspx.cs" Inherits="Advisor_AddNotes_Advisor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Title">Add Notes</div> 
    <div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. 
        The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look 
        like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' 
        will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
</div>
</asp:Content>

