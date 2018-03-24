<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/MasterPage_Advisor.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Advisor_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 104px;
            left: 275px;
            z-index: 1;
        }
        .auto-style4 {
            width: 217px;
            height: 128px;
            position: absolute;
            top: 126px;
            left: 214px;
            z-index: 1;
            right: 673px;
        }
        .auto-style5 {
            position: absolute;
            top: 105px;
            left: 567px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 104px;
            left: 857px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 286px;
            left: 427px;
            z-index: 1;
        }
        .auto-style8 {
            width: 217px;
            height: 128px;
            position: absolute;
            top: 127px;
            left: 531px;
            z-index: 1;
            right: 356px;
        }
        .auto-style9 {
            width: 217px;
            height: 128px;
            position: absolute;
            top: 126px;
            left: 851px;
            z-index: 1;
        }
        .auto-style10 {
            width: 217px;
            height: 128px;
            position: absolute;
            top: 309px;
            left: 404px;
            z-index: 1;
            right: 483px;
        }
        .auto-style11 {
            width: 77px;
            height: 147px;
            position: absolute;
            top: 309px;
            left: 34px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 287px;
            left: 66px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 124px;
            left: 26px;
            height: 157px;
            width: 147px;
            z-index: 1;
        right: 931px;
    }
        .auto-style14 {
            position: absolute;
            top: 101px;
            left: 35px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 279px;
            left: 913px;
            z-index: 1;
        }
        .auto-style17 {
            width: 217px;
            height: 128px;
            position: absolute;
            top: 300px;
            left: 853px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="lnkTest" runat="server" OnClick="lnkTest_Click1" CssClass="auto-style14">Year To The Day</asp:LinkButton>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical" CssClass="auto-style13">
            <Columns>
                <asp:BoundField DataField="KuhaFund" HeaderText="KuhaFund" 
                    SortExpression="KuhaFund" ReadOnly="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        
       
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="Select AVG(GrantValue)GrantValue
from Grants"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style9" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="GrantValue" HeaderText="GrantValue" ReadOnly="True" SortExpression="GrantValue" />
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
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style8" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Allocation" HeaderText="Allocation" ReadOnly="True" SortExpression="Allocation" />
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
    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style7" OnClick="LinkButton4_Click">Monthly Faculty Grant Summary</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style12" OnClick="LinkButton3_Click">Monthly Faculty Summary</asp:LinkButton>
    <asp:LinkButton ID="lnkMGS" runat="server" CssClass="auto-style5" OnClick="lnkMGS_Click">Monthly Grant Summary</asp:LinkButton>
        
       
    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="KohaFund" HeaderText="KohaFund" ReadOnly="True" SortExpression="KohaFund" />
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
    <asp:LinkButton ID="lnkWeekly" runat="server" CssClass="auto-style3" OnClick="lnkWeekly_Click">Weekly Summary</asp:LinkButton>
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style11" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" ReadOnly="True" SortExpression="FacultyName" />
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
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style10" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="GrantValue" HeaderText="GrantValue" ReadOnly="True" SortExpression="GrantValue" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT SUM(Allocation)KuhaFund
FROM fundAllocation,Funds;"></asp:SqlDataSource>
        
       
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="Select MIN(Allocation)Allocation
from fundAllocation"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="Select MAX(GrantValue)FacultyName
from Grants,Faculty"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="Select AVG(Allocation)KohaFund
from fundAllocation,Funds"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="Select SUM(GrantValue)GrantValue
from Grants"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="Select Gender, DateOfBirth, MainEthnacity
from Student"></asp:SqlDataSource>
        
       
    <asp:GridView ID="GridView7" runat="server" CssClass="auto-style17" DataSourceID="SqlDataSource8" OnSelectedIndexChanged="GridView7_SelectedIndexChanged" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
            <asp:BoundField DataField="MainEthnacity" HeaderText="MainEthnacity" SortExpression="MainEthnacity" />
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
        
       
    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style15" OnClick="LinkButton5_Click">Student Summary</asp:LinkButton>
        
       
    <br />
    <asp:LinkButton ID="lnkCGS" runat="server" CssClass="auto-style6" OnClick="lnkCGS_Click">Monthly Campus Grant Summary</asp:LinkButton>
        
       
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
        
       
            </asp:Content>

