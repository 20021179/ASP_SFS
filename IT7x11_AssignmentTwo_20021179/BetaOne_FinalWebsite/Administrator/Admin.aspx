<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
        .auto-style1 {
            width: 756px;
        }
    </style>
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="subHeading">Edit Advisor</div>
    Use this section to Edit appropriate data fields in the Database.................
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT * FROM [Advisor]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Advisor] WHERE [AdvisorID] = @original_AdvisorID AND [UserName] = @original_UserName AND [Password] = @original_Password" InsertCommand="INSERT INTO [Advisor] ([UserName], [Password]) VALUES (@UserName, @Password)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Advisor] SET [UserName] = @UserName, [Password] = @Password WHERE [AdvisorID] = @original_AdvisorID AND [UserName] = @original_UserName AND [Password] = @original_Password">
        <DeleteParameters>
            <asp:Parameter Name="original_AdvisorID" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="PassWord" Type="String" />
            <asp:Parameter Name="original_AdvisorID" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_PassWord" Type="String" />
        </UpdateParameters>
      </asp:SqlDataSource>
    
      <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="125px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="AdvisorID" DataSourceID="SqlDataSource1" OnPageIndexChanging="DetailsView1_PageIndexChanging" HorizontalAlign="Center">

          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
          <EditRowStyle BackColor="#999999" />
          <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
          <Fields>
              <asp:BoundField DataField="AdvisorID" HeaderText="AdvisorID" InsertVisible="False" ReadOnly="True" SortExpression="AdvisorID" />
              <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
              <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
          </Fields>
          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
      </asp:DetailsView>
    
   
       
     
          

   
   
     
          

   
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="AdvisorID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="AdvisorID" HeaderText="AdvisorID" InsertVisible="False" ReadOnly="True" SortExpression="AdvisorID" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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

