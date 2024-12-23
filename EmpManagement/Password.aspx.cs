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

namespace EmpManagement
{
    public partial class Password : System.Web.UI.Page
    {
        string str = null;
        SqlCommand com;
        byte up;
        String EmpID = " ";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpID"] != null && !String.IsNullOrEmpty(Session["EmpID"].ToString()))
            {
                EmpID = (Session["EmpID"].ToString());
                rep_bind();
            }
        }
        private void rep_bind()
        {
            //For displaying Employee_Name in SideBar
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
            string query = "select * from LoginTbl where Employee_ID='" + EmpID + "'";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable ds = new DataTable();
            da.Fill(ds);
        }

        protected void ResetPasswordButton_Click(object sender, EventArgs e)
        {
            //"UPDATE Login_Table SET Password = @Password where Employee_ID=  '" + EmpID + "'  "
            string username = txtUsername.Text;
            string currentPassword = txtCurrentPassword.Text;
            string newPassword = txtNewPassword.Text;
            string confirmNewPassword = txtConfirmNewPassword.Text;
            //Update Login_Table SQL Connection
            //SqlConnection con = new SqlConnection(strConnString);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
            con.Open();
            str = "select * from LoginTbl";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                if (txtCurrentPassword.Text == reader["Password"].ToString())
                {
                    up = 1;
                }
            }
            reader.Close();
            con.Close();
            if (up == 1)
            {
                con.Open();
                Session["EmpID"] = txtUsername.Text;
                str = "update LoginTbl set Password=@Password where Employee_ID='" + Session["EmpID"].ToString() + "'";
                com = new SqlCommand(str, con);
                com.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
                com.Parameters["@Password"].Value = txtNewPassword.Text;
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password changed Successfully!'); </script>");
            }
            else
            {
                Response.Write("<script>alert('Please enter correct Current password!'); </script>");
            }
        }
    }
}