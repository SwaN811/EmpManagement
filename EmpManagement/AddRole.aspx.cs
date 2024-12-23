using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using System.Data.SqlTypes;

namespace EmpManagement
{
    public partial class AddRole : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
        byte up;

        //String EmpID = " ";
        SqlCommand cmd = new SqlCommand();
        SqlDataReader rdr;
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            //empid = Session["EmpID"].ToString();
        }

        protected void SavBtn_Click(object sender, EventArgs e)
        {
            //Update where Role is Null
            string empstr = EmpTxt.Text;
            string rolstr = RolDdl.SelectedValue;

            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string updateQuery = "UPDATE LoginTbl SET Role = @NewRole WHERE Employee_ID = @Employee_ID AND Role IS NULL";
                using (SqlCommand command = new SqlCommand(updateQuery, connection))
                {
                    command.Parameters.AddWithValue("@NewRole", rolstr);
                    command.Parameters.AddWithValue("@Employee_ID", empstr);

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Role Assigned Successfully!'); </script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Please Check Your Current Changes!'); </script>");
                    }
                }
            }
        }
    }
}