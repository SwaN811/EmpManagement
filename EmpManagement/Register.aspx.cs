using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Windows;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Configuration.Provider;

namespace EmpManagement
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
                con.Open();
                bool exists = false;
                string chechuser = "SELECT count(*) FROM LoginTbl where Employee_ID='" + txtUsername.Text + "'";
                SqlCommand cmd = new SqlCommand(chechuser, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Employee_ID", txtUsername.Text);
                exists = (int)cmd.ExecuteScalar() > 0;
                if (exists)
                {
                    //Response.Write("<script style= 'color:red'>alert('User ID Already Exists!'); </script>");
                    //Response.Write("<span style= 'color:red'>User ID Already Exists!/<span>");
                    MessageBox.Show("User ID Already Exists!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                con.Close();
            }

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
            {
                con.Open();//insert into table1 (field1, field2) VALUES (100,200)
                SqlCommand cmd = new SqlCommand("Insert Into LoginTbl(Employee_ID,Password) Values(@Employee_ID,@Password)", con);
                cmd.Parameters.AddWithValue("Employee_ID", txtUsername.Text);
                cmd.Parameters.AddWithValue("Password", txtPassword.Text);
                cmd.ExecuteNonQuery();

                txtUsername.Text = " ";
                txtPassword.Text = " ";
                txtUsername.Focus();
                txtPassword.Focus();
                txtConfirmPassword.Focus();

                MessageBox.Show("Registered Successfully!", "Successful!", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
        private void clear()
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }
    }
}