<%@ Page Title="" Language="C#" MasterPageFile="~/Logins/Credentials.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Logins_Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div id="container">
                <div id="helpTitle">Help</div>
To navigate around the Website, we have these options:
        <div id="helpSubTitle">1.Administrator Privilledges</div>
        <div id="helpSubTitle1">2.Adviser (User Privilledges)</div>
        <div class="helpSubTitle2">1.Adminsitrator</div>
        To begin the process, you must click on the Admin link on the right hand corner of the login page, next to the standard login form. Admin Login: Use the supplied credentials, to test the logon. Username=&#39;testAdmin&#39;,Password=&#39;testAdmin&#39;
        Enter the above deatils. You will then be presented with the Main user interface of the Administrator.<br />
        Choose a menu link and continue towards desired page.
        <br />
        Edit Advisor -This is used to Delete, Update Insert new information.<br />
        Edit Faculty - Same functions used as above DUI<br />
        Edit Course - Same as above<br />
        Edit Funds - Same as above<br />
        Edit Grant - Same as above<br />
        Logout - To logout of Administrator page, use the link located in the top right hand corner.<br />
       <div class="helpSubTitle4">2.Advisor</div>To begin the process, you must enter the required credentials inside the input field of the form.<br />
        Advisor Login: Use the supplied credentials, to test the logon.<br />
        Username=&#39;test&#39;,Password =&#39;password&#39;<br />
        Enter the above details. You will then be presented with the Main user interface of the Advisor.<br />
        You will first be presented with a Search box and text display field. Enter in the ID number (primary key), of the Student you wish to search for. Results will be displayed in the display text area below the textbox field.<br />
        Choose a menu link and continue towards desired page.<br />
        Manage Student -Displays the current data in the database. This lets you keep track of where the data is.<br />
        Edit Student - This gives you the ability to make changes and delete undesired changes.<br />
        Add Notes - This page is currently under construction and will be used to add any changes that are made in the future.<br />
        Add Student - Provides basic DUI functions.<br />
        Allocate Funds - Gives user the ability to add funds to the Kuha Funds and makes changes.<br />
        Reports - By clicking on each link, this will activate a display of the current report in this page.<br />
       <div class="helpLogin">3.Login Page</div>
           Forgotten Password - User will click on this link, located on the right handside of the form.<br />
           Once activated, the link will take user to the Forgot Password page and will be prompted to enter the Username.<br />
           Validations: If the user enters in the correct user identfication, they will be presented with their current Password and prompted to Login.<br />
           If not - Then user will be prompted to enter correct Username, if Username entries exceed 3 times, then user gets a warning.<br />
           Valid entries - Include non numeric characters and non blank field.

           
    
        </div>
        
        
   
            
</asp:Content>

