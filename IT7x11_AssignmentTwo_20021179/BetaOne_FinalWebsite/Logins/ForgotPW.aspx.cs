using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logins_ForgotPW : System.Web.UI.Page
{
    string message1,message2,message3,message4;// store custom messages
    int result; // checks if input is integer
    string countAttempts=null;//message for exceeded logins


    protected void Page_Load(object sender, EventArgs e)
    {
        LnkBack.Visible = false;
        txtUsername.Focus();
        lblError.Visible = false;
        

        //
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MikesDatabaseConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = "select * from Advisor where Username='" + txtUsername.Text + "'"; 
         cmd.CommandText = "select * from Advisor"; // call command object sql

        cmd.Connection = sqlConn;
        sqlConn.Open(); // call connection string object
        SqlDataReader dr = cmd.ExecuteReader();

        object FailedLoginCounter = this.Page.Cache["UserKey_" + this.txtUsername.Text];
        // https://stackoverflow.com/questions/3988013/login-allow-only-3-attempts Idea was taken from here, a substitute for what i wanted!

        while (dr.Read())
            {

                if (dr["Username"].ToString() == txtUsername.Text)
                {
                    Session["Username"] = txtUsername.ToString();
                    lblError.Visible = true;
                    message1 = " Correct, your password is: ";
                    lblShowPassword.Enabled = true;
                    LnkBack.Visible = true;
                    LnkBack.Text = "Click here to Login";
                    lblShowPassword.Text = message1 + dr["Password"].ToString();
                    //return;
                }
                
            else if (dr["Username"].ToString() != txtUsername.Text.Trim())
                {
                message2= "Please enter correct Username";
                lblError.Text = message2;
                lblError.Visible = true;
                }

               /* else if (int.TryParse(txtUsername.Text, out result))
                 {
                //checks if an Integer
                  //message4= "No numerical values allowed!";
                //lblError.Text = message4;
                lblError.Text ="No numerical values allowed!"; 

                lblError.Visible = true;
                 }
                //code didn't work here, didn't have time to resolve this issue
           */
                else
                    {
                        message3 = "Invalid User";
                        lblError.Text = message3;
                        //Response.Write("<script>alert(message3)</script>");
                        lblError.Visible = true;
                    }

        }
        // checks for numerical values
        if (int.TryParse(txtUsername.Text, out result))
        {
            //checks if an Integer
            message4= "No numerical values allowed!";
            lblError.Text = message4;
            lblError.Text = "No numerical values allowed!";

            lblError.Visible = true;
        }

        // check login attempts
        if (Session["loginAttempt"] != null)
        {
            if (Convert.ToInt32(Session["loginAttempt"]) == 3)
            {
                //Response.Write();
                countAttempts = "You exceeded the number of tries<br/>Please contact your Administrator";
                lblError.Text = countAttempts;
            }
            else
            {
                Session["loginAttempt"] = Convert.ToInt32(Session["loginAttempt"]) + 1;
            }

        }
        else
        {
            Session["loginAttempt"] = 1;
        }
    }

    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {

    }
}


/*
//This was some experimental code i used, but was having issues with it down the track
        //Response.Redirect("Default.aspx");
        SqlConnection connectDB = new SqlConnection(ConfigurationManager.ConnectionStrings["SFSConnectionString"].ConnectionString); // sql object retrieves value
        connectDB.Open(); // open database string connection
        string chkUsr = "select count(*) from Advisor where UserName='"+txtUsername.Text+"'"; // check username
        SqlCommand cmd = new SqlCommand(chkUsr, connectDB); // parameter check username, database
        int temporary = Convert.ToInt32(cmd.ExecuteScalar().ToString()); // error
        connectDB.Close(); // close connection once retrieved

        if(temporary==1)
        {
            connectDB.Open();
            string chkPwQry = "select password from Advisor where UserName='"+txtPassword.Text+"'";
            SqlCommand pwCmd = new SqlCommand(chkPwQry,connectDB);
            string password = pwCmd.ExecuteScalar().ToString(); // search password in database
            
            if(password==txtPassword.Text)
            {
                Session["username"] = txtUsername.Text;
                lblError.Text = "Correct Password";
                Response.Redirect("~/Advisor/Advisor.aspx");
            }
            else
            {
                lblError.Text = "Incorrect Password!";
            }

        }
        else
        {
            lblError.Text = "Incorrect UserName!";

        }

    }
 */
