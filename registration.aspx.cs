using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FYP_RS
{
    public partial class registration : System.Web.UI.Page
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

        protected void btnRegister(object sender, EventArgs e)
        {
            string password = pword.Text;
            string checkpassword = checkpword.Text;
            string firstname = fname.Text;
            string lastname = lname.Text;
            string useremail = email.Text;
            string username = uname.Text;

            if (firstname != "" && lastname != "" && useremail != "" && username != "" && password != "" && checkpassword != "")
            {
                if (password == checkpassword)
                {
                    var textAsBytes = System.Text.Encoding.UTF8.GetBytes(password);
                    string encodepword = System.Convert.ToBase64String(textAsBytes);

                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "INSERT INTO Customer VALUES ('" + uname.Text  + "', '" + fname.Text + "', '" + lname.Text + "', '" + email.Text + "', '" + pword.Text + "' )";
                    cmd.ExecuteNonQuery();

                    fname.Text = "";
                    lname.Text = "";
                    email.Text = "";
                    uname.Text = "";
                    pword.Text = "";
                    checkpword.Text = "";

                    Response.Redirect("home.aspx");

                }
                else
                {
                    mylab.Text = " * Confirm password does not match";
                    mylab.Visible = true;
                }

            }
            else
            {
                mylab.Text = " * Please fill all textboxes";
                mylab.Visible = true;
            }


        }
    }
}