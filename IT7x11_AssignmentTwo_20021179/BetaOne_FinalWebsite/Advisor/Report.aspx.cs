using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advisor_Report : System.Web.UI.Page
{

    private string MikesConnStr = WebConfigurationManager.ConnectionStrings["MikesConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView5.Visible = false;
        GridView6.Visible = false;
        GridView7.Visible = false;







    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
         

        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("You clicked the button");
    }

    protected void lnkTest_Click(object sender, EventArgs e)
    {

       GridView1.Visible = true;




    }

    protected void lnkTest_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = true;

    }

    protected void lnkWeekly_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }

    protected void lnkMGS_Click(object sender, EventArgs e)
    {
        GridView3.Visible = true;

    }

    protected void lnkCGS_Click(object sender, EventArgs e)
    {
        GridView4.Visible = true;

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        GridView5.Visible = true;

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        GridView6.Visible = true;

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        GridView7.Visible = true;
    }

    protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
