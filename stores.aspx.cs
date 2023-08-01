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
    public partial class stores : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();
            loadProducts();
        }

        private void loadProducts()
        {
            SqlCommand cmd = new SqlCommand("select * from product", conn);
            SqlDataReader dr = cmd.ExecuteReader(); ;
            if (dr.HasRows == true)
            {
                Datalist1.DataSource = dr;
                Datalist1.DataBind();
            }
        }
    }
}