using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class Client_registrationmaster : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("insert into registration values(@name,@address,@city,@pincode,@state,@username,@password,@gender,@mobile,@email,@dob)", con);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@pincode", txtpin.Text);
        cmd.Parameters.AddWithValue("@state", txtstate.Text);
        cmd.Parameters.AddWithValue("@username", txtuname.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        cmd.Parameters.AddWithValue("@gender", txtgender.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmob.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@dob", txtdob.Text);
        res = cmd.ExecuteNonQuery();

        if (res == 0)
        {
            Response.Write("<script>alert('Not inserted'); window.location.href='registration.aspx';</script>");
        }
        else
        {


            Response.Write("<script>alert('Registration Successful'); window.location.href='login.aspx';</script>");
            //Response.Redirect("home.aspx");
        }
        con.Close();
    }
}