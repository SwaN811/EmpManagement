using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                UserTextBox1.Attributes.Add("autocomplete", "off");
                PasswordTextBox2.Attributes.Add("autocomplete", "off");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM LoginTbl WHERE Employee_ID=@e and Password=@p", con);
            cmd.Parameters.AddWithValue("@e", UserTextBox1.Text);
            cmd.Parameters.AddWithValue("@p", PasswordTextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            // Admin/User Login Start
            if (dt.Rows.Count > 0)
                Session.Add("EmpID", dt.Rows[0]["Employee_ID"].ToString());
            if (dt.Rows[0]["Role"].ToString() == "Admin")
                Response.Redirect("Admin.aspx");
            else if (dt.Rows[0]["Role"].ToString() == "User")
                Response.Redirect("User.aspx");
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid UserName and Password')</script>");
            }
            // Admin/User Login End
        }
    }
}