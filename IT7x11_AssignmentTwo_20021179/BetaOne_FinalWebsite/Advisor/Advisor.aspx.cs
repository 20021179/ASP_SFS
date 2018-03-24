using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advisor : System.Web.UI.Page
{
    private string MikesConnStr = WebConfigurationManager.ConnectionStrings["MikesConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

    }

    protected void ButtonSeach_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConn = new SqlConnection(MikesConnStr);
        SqlCommand cmd = new SqlCommand("select * from Student where StudentID='" + TextBoxStudentID.Text + "'", sqlConn);
        SqlDataReader MikesDataReader;

        try
        {
            sqlConn.Open();
            MikesDataReader = cmd.ExecuteReader();
            MikesDataReader.Read();

            ListBoxStudentDetails.Items.Clear();
            ListBoxStudentDetails.Items.Add("Student ID: " + MikesDataReader["StudentID"]);
            ListBoxStudentDetails.Items.Add("First Name: " + MikesDataReader["FirstName"]);
            ListBoxStudentDetails.Items.Add("Last Name: " + MikesDataReader["LastName"]);
            ListBoxStudentDetails.Items.Add("Gender: " + MikesDataReader["Gender"]);
            ListBoxStudentDetails.Items.Add("Date Of Birth: " + MikesDataReader["DateOfBirth"]);
            ListBoxStudentDetails.Items.Add("Address: " + MikesDataReader["Address1"]);
            ListBoxStudentDetails.Items.Add("Accomodation: " + MikesDataReader["Accomodation"]);
            ListBoxStudentDetails.Items.Add("Phone Number: " + MikesDataReader["PhoneNumber"]);
            ListBoxStudentDetails.Items.Add("Mobile Number: " + MikesDataReader["MobileNumber"]);
            ListBoxStudentDetails.Items.Add("Email Addess: " + MikesDataReader["EmailAddress"]);
            ListBoxStudentDetails.Items.Add("Marital Status: " + MikesDataReader["MaritalStatus"]);
            ListBoxStudentDetails.Items.Add("Contact Person: " + MikesDataReader["ContactPerson"]);
            ListBoxStudentDetails.Items.Add("Ethnicity: " + MikesDataReader["MainEthnacity"]);
            ListBoxStudentDetails.Items.Add("Program Code: " + MikesDataReader["ProgramID"]);




        }
        catch (Exception)
        {
            
            Response.Write("<script language='javascript'> alert('Student not found!');</script>");
            
        }
        finally
        {
            sqlConn.Close();
        }

    }

    protected void DropDownListStudent_TextChanged(object sender, EventArgs e)
    {
       

    }
}