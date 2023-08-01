using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services.Description;

namespace FYP_RS
{
    public partial class customer_login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = uname.Text;
            string password = pword.Text;


            if (username != "" && password != "")
            {

                string query = "select * from Customer where customerID = '" + username + "' and pasword= '" + password + "' ";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    Session["sessionID"] = username;
                    Response.Redirect("home.aspx");
                }
                else
                {
                    mylab.Text = " * Wrong username or password";
                    mylab.Visible = true;
                }
            }
            else
            {
                mylab.Visible = true;
                mylab.Text = " * Please fill the textboxes";
            }
        }
    }
}