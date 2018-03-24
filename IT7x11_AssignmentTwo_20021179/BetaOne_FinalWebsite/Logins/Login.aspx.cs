using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class Logins_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUsername.Focus();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // create sql connection object
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MikesConnectionString"].ConnectionString);

        SqlCommand cmd = new SqlCommand(); //command line object

        //cmd.CommandText = "select * from Advisor"; // open index to this table
        cmd.CommandText = "select * from Advisor where Username='" + txtUsername.Text + "'"; 


        cmd.Connection = con; //use connection object via command

        con.Open();// close when finished

        SqlDataReader dr = cmd.ExecuteReader();
        string countAttempts;// login attempts monitored
        while (dr.Read()) // retrieve data from database, check usr
        {

            if (dr["Username"].ToString() == txtUsername.Text.Trim() && dr["Password"].ToString() == txtPassword.Text)
            {
                Session["Username"] = txtUsername.Text;
                Response.Redirect("~/Advisor/Advisor.aspx");
                return;
            }

            else if (txtUsername.Text == "")// if empty
            {
                lblError.Text = "Please enter Username";
                lblError.Visible = true;
                Response.Write("<script>alert('Please enter Username')</script>");
            }
            else if (txtPassword.Text == "") // 
            {
                lblError.Text = "Please enter Password";
                lblError.Visible = true;
            }// check both
            else if (dr["Username"].ToString() != txtUsername.Text.Trim() && dr["Password"].ToString() == txtPassword.Text)
            {
                lblError.Text = "Please enter correct LoginID";
                lblError.Visible = true;
            }
            else if (dr["Username"].ToString() == txtUsername.Text.Trim() && dr["Password"].ToString() != txtPassword.Text)
            {
                lblError.Text = "Please enter a valid Password";
                lblError.Visible = true;
            }
            else
            {
                lblError.Text = "Invalid User ID or Password";
                lblError.Visible = true;
            }
        }
        // check how many time user has logged in
        // check login attempts
        if (Session["Username"] != null)
        {
            if (Convert.ToInt32(Session["Username"]) == 3)//assuming usr has exceeded
            {
                //Response.Write();
                countAttempts = "You exceeded the number of tries<br/>Please contact your Administrator";
                lblError.Text = countAttempts;
            }
            else
            {
                Session["Username"] = Convert.ToInt32(Session["Username"]) + 1;// keep track of tries
            }

        }
        else
        {
            Session["Username"] = 1; // default singular increment
        }
    }

    protected void btnClose_Click(object sender, EventArgs e)
    {
        // code was suppose to close application, had conflicting issues
        //this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Close", "window.close()", true); // closes window
       // bool success = processPage();
        //close_script.Visible = success;

    }
}