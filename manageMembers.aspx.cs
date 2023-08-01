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
    public partial class manageMembers : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from Customer", conn);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows == true)
            {
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
        }
        protected void clearText()
        {
            CID.Text = "";
            CFName.Text = "";
            CLName.Text = "";
            CEmail.Text = "";
            CPassword.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string c_id = CID.Text;
            string c_fname = CFName.Text;
            string c_lname = CLName.Text;
            string c_email = CEmail.Text;
            string c_password = CPassword.Text;

            if (c_id == "" && c_fname == "" && c_lname == "" && c_email == "" && c_password == "")
            {

                mylab.Text = " * Please fill the textboxes";
                mylab.Visible = true;
            }

            else
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Customer VALUES ('" + c_id + "', '" + c_fname + "', '" + c_lname + "', " +
                    "'" + c_email + "', '" + c_password + "')";
                int t = cmd.ExecuteNonQuery();
                displayGridView();
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearText();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            btnClear.Visible = true;
            btnUpdate.Visible = false;
            btnCancel.Visible = false;
            btnSubmit.Visible = true;

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE Customer SET customerID = '" + CID.Text + "', firstname = '" + CFName.Text + "', lastname = '" +
                "" + CLName.Text + "', email ='" + CEmail.Text + "', pasword = '" + CPassword.Text + "' WHERE customerID = '" + CID.Text + "' ";
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
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM Customer where customerID = '" + value + "'";
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

            CID.Text = GridView1.Rows[rowind].Cells[0].Text;
            CFName.Text = GridView1.Rows[rowind].Cells[1].Text;
            CLName.Text = GridView1.Rows[rowind].Cells[2].Text;
            CEmail.Text = GridView1.Rows[rowind].Cells[3].Text;
            CPassword.Text = GridView1.Rows[rowind].Cells[4].Text;
        }

    }
}