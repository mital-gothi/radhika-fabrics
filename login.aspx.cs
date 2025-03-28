using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Client_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.Open();
    }
    
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select * from registration where username='" + txtuname.Text + "'and password='" + txtpass.Text + "'", con);
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<script>alert('your username or password is wrong'); window.location.href='login.aspx';</script>");
        }
        else
        {
            Session["uname"] = txtuname.Text;
            Response.Redirect("home.aspx");
        }
    }


    protected void btnsignin_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
}