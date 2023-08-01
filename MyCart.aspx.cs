using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_RS
{
    public partial class MyCart : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();
            displayCart();
        }

        protected void displayCart()
        {
            SqlCommand cmd = new SqlCommand("SELECT myCart.cartID, product.product_id, product.p_name, " +
                "product.p_brand, product.p_imagepath, product.p_price, myCart.qty FROM product, myCart " +
                "WHERE myCart.product_id = product.product_id AND myCart.user_id = '" + Session["sessionID"] + "'", conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows == true)
            {
                GridView1.DataSource = sdr;
                GridView1.DataBind();
            }
        }

    }
}