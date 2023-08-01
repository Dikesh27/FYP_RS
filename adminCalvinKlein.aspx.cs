using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FYP_RS
{
    public partial class CalvinKleinAdmin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();
            if (!IsPostBack)
            {
                displayGridView();
            }
        }

        private void displayGridView()
        {
            SqlCommand cmd = new SqlCommand("select * from product", conn);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows == true )
            {
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
        }

        protected void clearText()
        {
            pName.Text = "";
            pBrand.Text = "";
            pPrice.Text = "";
            pQuantity.Text = "";
            pCategory.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string p_name = pName.Text;
            string p_brand = pBrand.Text;
            string p_price = Convert.ToString(pPrice.Text);
            string p_quantity = Convert.ToString(pQuantity.Text);
            string p_category = pCategory.Text;
            string fname = pImage.PostedFile.FileName;

            if (p_name == "" && p_brand == "" && p_price == "" && p_quantity == "" && fname == "" && p_category == "")
            {

                mylab.Text = " * Please fill the textboxes";
                mylab.Visible = true;
            }
            else
            {
                string fpath = "images/product" + pImage.FileName;
                pImage.PostedFile.SaveAs(Server.MapPath("~/images/product") + fname);

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO product VALUES ('" + p_name + "', '" + p_brand + "', '" + p_price + "', " +
                    "'" + p_quantity + "', '" + fpath + "', '" + p_category + "')";
                int t = cmd.ExecuteNonQuery();

                if (t > 0)
                {
                    Response.Write("<script>alert('Product has been registered successfully')</script>");
                }
                displayGridView();
                clearText();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            btnClear.Visible = true;
            btnUpdate.Visible = false;
            btnCancel.Visible = false;
            btnSubmit.Visible = true;

            int p_id = Convert.ToInt32(pID.Text);
            string p_name = pName.Text;
            string p_brand = pBrand.Text;
            string p_price = Convert.ToString(pPrice.Text);
            string p_quantity = Convert.ToString(pQuantity.Text);
            string p_category = pCategory.Text;

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE product SET p_name = '" + p_name + "', p_brand = '" + p_brand + "', p_price = '" +
                "" + p_price + "', p_quantity ='" + p_quantity + "', p_category = '" + p_category + "' WHERE product_id = '" + p_id + "' ";
            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Product has been updated successfully')</script>");
            }
            displayGridView();
            clearText();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            btnSubmit.Visible = true;
            btnUpdate.Visible = false;
            btnCancel.Visible = false;
            btnClear.Visible = true;
            clearText();
        }

        protected void lnkdelete_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string value = btn.CommandArgument;
            int p_id = Convert.ToInt32(value);

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM product where product_id = '" + p_id + "'";
            cmd.ExecuteNonQuery();
            displayGridView();
        }

        protected void lnkUpdate_Click(object sender, EventArgs e)
        {
            btnSubmit.Visible = false;
            btnUpdate.Visible = true;
            btnClear.Visible = false;
            btnCancel.Visible = true;

            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            pID.Text = GridView1.Rows[rowind].Cells[0].Text;
            pName.Text = GridView1.Rows[rowind].Cells[1].Text;
            pBrand.Text = GridView1.Rows[rowind].Cells[2].Text;
            pPrice.Text = GridView1.Rows[rowind].Cells[3].Text;
            pQuantity.Text = GridView1.Rows[rowind].Cells[4].Text;
            pCategory.Text = GridView1.Rows[rowind].Cells[6].Text;

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearText();
        }
    }
}