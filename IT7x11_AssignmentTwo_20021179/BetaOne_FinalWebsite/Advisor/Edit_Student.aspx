<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/MasterPage_Advisor.master" AutoEventWireup="true" CodeFile="Edit_Student.aspx.cs" Inherits="Advisor_Edit_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Title">Edit Student</div> 


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [StudentID] = @original_StudentID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND [Address1] = @original_Address1 AND [Accomodation] = @original_Accomodation AND [PhoneNumber] = @original_PhoneNumber AND [MobileNumber] = @original_MobileNumber AND [EmailAddress] = @original_EmailAddress AND [MaritalStatus] = @original_MaritalStatus AND [ContactPerson] = @original_ContactPerson AND [ProgramID] = @original_ProgramID AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Ethnicity] = @original_Ethnicity) OR ([Ethnicity] IS NULL AND @original_Ethnicity IS NULL))" InsertCommand="INSERT INTO [Student] ([FirstName], [LastName], [Gender], [Address1], [Accomodation], [PhoneNumber], [MobileNumber], [EmailAddress], [MaritalStatus], [ContactPerson], [ProgramID], [DateOfBirth], [Ethnicity]) VALUES (@FirstName, @LastName, @Gender, @Address1, @Accomodation, @PhoneNumber, @MobileNumber, @EmailAddress, @MaritalStatus, @ContactPerson, @ProgramID, @DateOfBirth, @Ethnicity)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [Address1] = @Address1, [Accomodation] = @Accomodation, [PhoneNumber] = @PhoneNumber, [MobileNumber] = @MobileNumber, [EmailAddress] = @EmailAddress, [MaritalStatus] = @MaritalStatus, [ContactPerson] = @ContactPerson, [ProgramID] = @ProgramID, [DateOfBirth] = @DateOfBirth, [Ethnicity] = @Ethnicity WHERE [StudentID] = @original_StudentID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND [Address1] = @original_Address1 AND [Accomodation] = @original_Accomodation AND [PhoneNumber] = @original_PhoneNumber AND [MobileNumber] = @original_MobileNumber AND [EmailAddress] = @original_EmailAddress AND [MaritalStatus] = @original_MaritalStatus AND [ContactPerson] = @original_ContactPerson AND [ProgramID] = @original_ProgramID AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Ethnicity] = @original_Ethnicity) OR ([Ethnicity] IS NULL AND @original_Ethnicity IS NULL))" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues">
    <DeleteParameters>
        <asp:Parameter Name="original_StudentID" Type="Int32" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_Gender" Type="String" />
        <asp:Parameter Name="original_Address1" Type="String" />
        <asp:Parameter Name="original_Accomodation" Type="String" />
        <asp:Parameter Name="original_PhoneNumber" Type="String" />
        <asp:Parameter Name="original_MobileNumber" Type="String" />
        <asp:Parameter Name="original_EmailAddress" Type="String" />
        <asp:Parameter Name="original_MaritalStatus" Type="String" />
        <asp:Parameter Name="original_ContactPerson" Type="String" />
        <asp:Parameter Name="original_ProgramID" Type="Int32" />
        <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="original_Ethnicity" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Address1" Type="String" />
        <asp:Parameter Name="Accomodation" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="MobileNumber" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="MaritalStatus" Type="String" />
        <asp:Parameter Name="ContactPerson" Type="String" />
        <asp:Parameter Name="ProgramID" Type="Int32" />
        <asp:Parameter Name="DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="Ethnicity" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Address1" Type="String" />
        <asp:Parameter Name="Accomodation" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="MobileNumber" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="MaritalStatus" Type="String" />
        <asp:Parameter Name="ContactPerson" Type="String" />
        <asp:Parameter Name="ProgramID" Type="Int32" />
        <asp:Parameter Name="DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="Ethnicity" Type="String" />
        <asp:Parameter Name="original_StudentID" Type="Int32" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_Gender" Type="String" />
        <asp:Parameter Name="original_Address1" Type="String" />
        <asp:Parameter Name="original_Accomodation" Type="String" />
        <asp:Parameter Name="original_PhoneNumber" Type="String" />
        <asp:Parameter Name="original_MobileNumber" Type="String" />
        <asp:Parameter Name="original_EmailAddress" Type="String" />
        <asp:Parameter Name="original_MaritalStatus" Type="String" />
        <asp:Parameter Name="original_ContactPerson" Type="String" />
        <asp:Parameter Name="original_ProgramID" Type="Int32" />
        <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="original_Ethnicity" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="3" DataKeyNames="StudentID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="50px" HorizontalAlign="Center" Width="125px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
            <asp:BoundField DataField="Accomodation" HeaderText="Accomodation" SortExpression="Accomodation" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
            <asp:BoundField DataField="ContactPerson" HeaderText="ContactPerson" SortExpression="ContactPerson" />
            <asp:BoundField DataField="MainEthnacity" HeaderText="MainEthnacity" SortExpression="MainEthnacity" />
            <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" SortExpression="ProgramID" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MikesConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>


</asp:Content>

