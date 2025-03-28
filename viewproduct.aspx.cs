using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Client_viewproduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        con.Open();
        get_data();
        string item = Request.QueryString["item"];
        Label1.Text = item;
    }
    private void get_data()
    {
        string item = Request.QueryString["item"];
        SqlDataAdapter da = new SqlDataAdapter("select * from product where name='" + item + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        dt.Clear();
    }
}