<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="Fund.aspx.cs" Inherits="Fund" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" DeleteCommand="DELETE FROM [Funds] WHERE [FundID] = @original_FundID AND [KuhaFund] = @original_KuhaFund AND [DateOfIssue] = @original_DateOfIssue" InsertCommand="INSERT INTO [Funds] ([KuhaFund], [DateOfIssue]) VALUES (@KuhaFund, @DateOfIssue)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Funds]" UpdateCommand="UPDATE [Funds] SET [KuhaFund] = @KuhaFund, [DateOfIssue] = @DateOfIssue WHERE [FundID] = @original_FundID AND [KuhaFund] = @original_KuhaFund AND [DateOfIssue] = @original_DateOfIssue">
    <DeleteParameters>
        <asp:Parameter Name="original_FundID" Type="Int32" />
        <asp:Parameter Name="original_KuhaFund" Type="String" />
        <asp:Parameter Name="original_DateOfIssue" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="KuhaFund" Type="String" />
        <asp:Parameter Name="DateOfIssue" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="KuhaFund" Type="String" />
        <asp:Parameter Name="DateOfIssue" Type="DateTime" />
        <asp:Parameter Name="original_FundID" Type="Int32" />
        <asp:Parameter Name="original_KuhaFund" Type="String" />
        <asp:Parameter Name="original_DateOfIssue" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
<div id="subHeading">Funds</div>
<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="FundID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" OnPageIndexChanging="DetailsView1_PageIndexChanging">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <EditRowStyle BackColor="#999999" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="FundID" HeaderText="FundID" InsertVisible="False" ReadOnly="True" SortExpression="FundID" />
        <asp:BoundField DataField="KuhaFund" HeaderText="KuhaFund" SortExpression="KuhaFund" />
        <asp:BoundField DataField="DateOfIssue" HeaderText="DateOfIssue" SortExpression="DateOfIssue" />
    </Fields>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
</asp:DetailsView>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FundID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="FundID" HeaderText="FundID" InsertVisible="False" ReadOnly="True" SortExpression="FundID" />
            <asp:BoundField DataField="KuhaFund" HeaderText="KuhaFund" SortExpression="KuhaFund" />
            <asp:BoundField DataField="DateOfIssue" HeaderText="DateOfIssue" SortExpression="DateOfIssue" />
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

