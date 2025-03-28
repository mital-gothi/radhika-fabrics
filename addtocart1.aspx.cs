using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Client_addtocart1 : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        con.Open();
        if (Session["uname"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            SqlDataAdapter da = new SqlDataAdapter("select * from product where id=" + id, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            txtname.Text = dt.Rows[0][1].ToString();
            txtprice.Text = dt.Rows[0][3].ToString();
            txtusername.Text = Session["uname"].ToString();
            img.ImageUrl = "~/admin/product/" + dt.Rows[0][4].ToString();
        }
    }
    protected void btnaddtocart_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into addtocart values(@name,@price,@quantity,@image,@username,@total)", con);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@price", txtprice.Text);
        cmd.Parameters.AddWithValue("@quantity", txtquantity.Text);
        cmd.Parameters.AddWithValue("@image", img.ImageUrl);
        cmd.Parameters.AddWithValue("@username", Session["uname"].ToString());
        cmd.Parameters.AddWithValue("@total", txttotal.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("viewcart.aspx");
    }
    protected void txtquantity_TextChanged(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtprice.Text);
        int b = Convert.ToInt32(txtquantity.Text);
        int ans = a * b;
        txttotal.Text = ans.ToString();
    }
}