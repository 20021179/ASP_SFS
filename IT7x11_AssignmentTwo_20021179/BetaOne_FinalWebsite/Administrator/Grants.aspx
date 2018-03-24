<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="Grants.aspx.cs" Inherits="Grants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" DeleteCommand="DELETE FROM [Grants] WHERE [GrantID] = @original_GrantID AND [GrantType] = @original_GrantType AND [GrantDescription] = @original_GrantDescription AND [GrantValue] = @original_GrantValue AND [Refno] = @original_Refno" InsertCommand="INSERT INTO [Grants] ([GrantType], [GrantDescription], [GrantValue], [Refno]) VALUES (@GrantType, @GrantDescription, @GrantValue, @Refno)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Grants]" UpdateCommand="UPDATE [Grants] SET [GrantType] = @GrantType, [GrantDescription] = @GrantDescription, [GrantValue] = @GrantValue, [Refno] = @Refno WHERE [GrantID] = @original_GrantID AND [GrantType] = @original_GrantType AND [GrantDescription] = @original_GrantDescription AND [GrantValue] = @original_GrantValue AND [Refno] = @original_Refno">
    <DeleteParameters>
        <asp:Parameter Name="original_GrantID" Type="Int32" />
        <asp:Parameter Name="original_GrantType" Type="String" />
        <asp:Parameter Name="original_GrantDescription" Type="String" />
        <asp:Parameter Name="original_GrantValue" Type="Decimal" />
        <asp:Parameter Name="original_Refno" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="GrantType" Type="String" />
        <asp:Parameter Name="GrantDescription" Type="String" />
        <asp:Parameter Name="GrantValue" Type="Decimal" />
        <asp:Parameter Name="Refno" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="GrantType" Type="String" />
        <asp:Parameter Name="GrantDescription" Type="String" />
        <asp:Parameter Name="GrantValue" Type="Decimal" />
        <asp:Parameter Name="Refno" Type="String" />
        <asp:Parameter Name="original_GrantID" Type="Int32" />
        <asp:Parameter Name="original_GrantType" Type="String" />
        <asp:Parameter Name="original_GrantDescription" Type="String" />
        <asp:Parameter Name="original_GrantValue" Type="Decimal" />
        <asp:Parameter Name="original_Refno" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<div id="subHeading">Grants</div>
<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="GrantID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <EditRowStyle BackColor="#999999" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="GrantID" HeaderText="GrantID" InsertVisible="False" ReadOnly="True" SortExpression="GrantID" />
        <asp:BoundField DataField="GrantType" HeaderText="GrantType" SortExpression="GrantType" />
        <asp:BoundField DataField="GrantDescription" HeaderText="GrantDescription" SortExpression="GrantDescription" />
        <asp:BoundField DataField="GrantValue" HeaderText="GrantValue" SortExpression="GrantValue" />
        <asp:BoundField DataField="Refno" HeaderText="Refno" SortExpression="Refno" />
    </Fields>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
</asp:DetailsView>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="GrantID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="GrantID" HeaderText="GrantID" InsertVisible="False" ReadOnly="True" SortExpression="GrantID" />
            <asp:BoundField DataField="GrantType" HeaderText="GrantType" SortExpression="GrantType" />
            <asp:BoundField DataField="GrantDescription" HeaderText="GrantDescription" SortExpression="GrantDescription" />
            <asp:BoundField DataField="GrantValue" HeaderText="GrantValue" SortExpression="GrantValue" />
            <asp:BoundField DataField="Refno" HeaderText="Refno" SortExpression="Refno" />
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

