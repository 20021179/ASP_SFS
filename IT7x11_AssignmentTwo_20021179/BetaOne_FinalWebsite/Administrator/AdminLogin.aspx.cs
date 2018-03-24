using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUsername.Focus();

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
       

            

        // create sql connection object
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MikesConnectionString"].ConnectionString);

        SqlCommand cmd = new SqlCommand(); //command line object

        cmd.CommandText = "select * from Admin "; // open index to this table
       // cmd.CommandText = "select * from Admin where UserName='" + txtUsername.Text + "'"; 

        cmd.Connection = con; //use connection object via command

        con.Open();// close when finished

        SqlDataReader dr = cmd.ExecuteReader();
        string countAttempts;// login attempts monitored
        while (dr.Read()) // retrieve data from database, check usr
        {

            if (dr["UserName"].ToString() == txtUsername.Text.Trim() && dr["PassWord"].ToString() == txtPassword.Text)
            {
                Session["UserName"] = txtUsername.Text;
                Response.Redirect("Default.aspx");
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
            else if (dr["UserName"].ToString() != txtUsername.Text.Trim() && dr["PassWord"].ToString() == txtPassword.Text)
            {
                lblError.Text = "Please enter correct LoginID";
                lblError.Visible = true;
            }
            else if (dr["UserName"].ToString() == txtUsername.Text.Trim() && dr["PassWord"].ToString() != txtPassword.Text)
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
        if (Session["username"] != null)
        {
            if (Convert.ToInt32(Session["username"]) == 3)//assuming usr has exceeded
            {
                //Response.Write();
                countAttempts = "You exceeded the number of tries<br/>Please contact your Administrator";
                lblError.Text = countAttempts;
            }
            else
            {
                Session["username"] = Convert.ToInt32(Session["username"]) + 1;// keep track of tries
            }

        }
        else
        {
            Session["username"] = 1; // default singular increment
        }
    }
}
