using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Client_viewcart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    int total;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        con.Open();
        if (Session["uname"] == null)
        {
            Response.Redirect("login.aspx");
        }
        get_data();
    }
    public void get_data()
    {
        string s = Session["uname"].ToString();
        string s1 = "'" + s + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select * from addtocart where username=" + s1, con);
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<script>alert('Cart is empty'); window.location.href='home.aspx';</script>");

        }
       
        GridView1.DataBind();
        int x = GridView1.Rows.Count;
        for (int i = 0; i < x; i++)
        {
            string username = Session["uname"].ToString();
            Label lbltotal = (Label)GridView1.Rows[i].FindControl("lbltotal");
            int tot = Convert.ToInt32(lbltotal.Text);
            total = total + tot;
            txttotal.Text = total.ToString();
        }
    }
    
    protected void btnpurchase_Click(object sender, EventArgs e)
    {
        int x = GridView1.Rows.Count;
        for (int i = 0; i < x; i++)
        {
            string username = Session["uname"].ToString();
            Label lblname = (Label)GridView1.Rows[i].FindControl("lblname");
            string name = lblname.Text.ToString();

            Label lblprice = (Label)GridView1.Rows[i].FindControl("lblprice");
            int price = Convert.ToInt32(lblprice.Text);

            Label lblquantity = (Label)GridView1.Rows[i].FindControl("lblquantity");
            int quantity = Convert.ToInt32(lblquantity.Text);

            Label lbltotal = (Label)GridView1.Rows[i].FindControl("lbltotal");
            int total = Convert.ToInt32(lbltotal.Text);

            int t = Convert.ToInt32(txttotal.Text);
            cmd = new SqlCommand("insert into purchase values('" + name + "','" + price + "','" + quantity + "','" + username + "','" + total + "')", con);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("delete from addtocart where username='" + username + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('congratulations! Thank You For Your Order!! Cash On Delivery... '); window.location.href='home.aspx';</script>");

        }
    }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblid");
        int id1 = Convert.ToInt32(id.Text);
        cmd = new SqlCommand("delete from addtocart where id=" + id1, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("viewcart.aspx");
    }
   

}
    
