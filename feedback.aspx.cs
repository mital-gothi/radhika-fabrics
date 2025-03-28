using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Client_feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    int res = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.Open();

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into feedback values(@name,@mobile,@email,@feedback)", con);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmob.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@feedback", txtfeed.Text);
        res = cmd.ExecuteNonQuery();

        if (res == 0)
        {
            Response.Write("<script>alert('Not inserted'); window.location.href='feedback.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Feedback done'); window.location.href='home.aspx';</script>");
            //Response.Redirect("home.aspx");
        }
        con.Close();
    }
}