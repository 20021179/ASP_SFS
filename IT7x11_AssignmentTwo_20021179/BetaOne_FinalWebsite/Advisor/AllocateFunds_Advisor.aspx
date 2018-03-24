<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/MasterPage_Advisor.master" AutoEventWireup="true" CodeFile="AllocateFunds_Advisor.aspx.cs" Inherits="Advisor_AllocateFunds_Advisor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Title">Allocate Funds</div> 
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="FundID" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Center" Width="125px" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="FundID" HeaderText="FundID" InsertVisible="False" ReadOnly="True" SortExpression="FundID" />
                <asp:BoundField DataField="KuhaFund" HeaderText="KuhaFund" SortExpression="KuhaFund" />
                <asp:BoundField DataField="DateOfIssue" HeaderText="DateOfIssue" SortExpression="DateOfIssue" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT FundID, KuhaFund, DateOfIssue FROM Funds" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Funds] WHERE [FundID] = @original_FundID AND [KuhaFund] = @original_KuhaFund AND [DateOfIssue] = @original_DateOfIssue" InsertCommand="INSERT INTO [Funds] ([KuhaFund], [DateOfIssue]) VALUES (@KuhaFund, @DateOfIssue)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Funds] SET [KuhaFund] = @KuhaFund, [DateOfIssue] = @DateOfIssue WHERE [FundID] = @original_FundID AND [KuhaFund] = @original_KuhaFund AND [DateOfIssue] = @original_DateOfIssue">
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FundID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="FundID" HeaderText="FundID" InsertVisible="False" ReadOnly="True" SortExpression="FundID" />
                <asp:BoundField DataField="KuhaFund" HeaderText="KuhaFund" SortExpression="KuhaFund" />
                <asp:BoundField DataField="DateOfIssue" HeaderText="DateOfIssue" SortExpression="DateOfIssue" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        
</asp:Content>

