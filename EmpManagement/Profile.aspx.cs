using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Windows.Forms;
using System.Configuration;
using System.Drawing;
using System.Drawing.Imaging;
using static System.Net.Mime.MediaTypeNames;

namespace EmpManagement
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
        byte up;

        String EmpID = " ";
        SqlCommand cmd = new SqlCommand();
        SqlDataReader rdr;
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpID"] != null && !String.IsNullOrEmpty(Session["EmpID"].ToString()))
            {
                EmpID = (Session["EmpID"].ToString());
                rep_bind(); clearfn();
            }
            //TextBox Data 
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("select * from Employee_Table where Employee_ID='" + Session["EmpID"] + "'"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            rdr.Read();
                            NameTextBox.Text = rdr["Employee_Name"].ToString();
                            EmailTextBox.Text = rdr["Email"].ToString();
                            ContactTextBox.Text = rdr["Contact"].ToString();
                            AddressTextBox.Text = rdr["Address"].ToString();
                            //ImageDisplay.ImageUrl = rdr["Employee_Image"].ToString();

                            //if (rdr.HasRows)
                            //{
                            //    while (rdr.Read())
                            //    {
                            //        byte[] imgd = (byte[])rdr["Employee_Image"];
                            //        string image = Convert.ToBase64String(imgd, 0, imgd.Length);
                            //        ImageDisplay.ImageUrl = "data:Images/jpg;base64," + image;
                            //    }
                            //}
                            //else
                            //{

                            //}

                            //Image Display

                        }
                        con.Close();
                    }
                }
            }
        }
        private void rep_bind()
        {
            //For displaying Employee_Name in SideBar
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
            string query = "select * from Employee_Table where Employee_ID='" + EmpID + "'";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count > 0)
            {
                EmployeeNameLabel.Text = ds.Rows[0]["Employee_Name"].ToString();
                EmployeeIDLabel.Text = ds.Rows[0]["Employee_ID"].ToString();
                DepartmentIDLabel.Text = ds.Rows[0]["Department_ID"].ToString();

            }
        }
        public void clearfn()
        {
            //ImageLabel.Text = "";
        }


        protected void ImageButton_Click(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string namestr = NameTextBox.Text;
            string emailstr = EmailTextBox.Text;
            string contactstr = ContactTextBox.Text;
            string addressstr = AddressTextBox.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                //"UPDATE Employee_Table SET Employee_Name = @Employee_Name, Email = @Email, Contact = @Contact, Address = @Address WHERE Employee_ID = '" + EmpID + "'
                string updateQuery = "UPDATE Employee_Table SET Employee_Name = @NewName, Email = @NewEmail, Contact = @NewContact, Address = @NewAddress WHERE Employee_ID = '" + EmpID + "'";
                using (SqlCommand command = new SqlCommand(updateQuery, connection))
                {
                    command.Parameters.AddWithValue("@NewName", namestr);
                    command.Parameters.AddWithValue("@NewEmail", emailstr);
                    command.Parameters.AddWithValue("@NewContact", contactstr);
                    command.Parameters.AddWithValue("@NewAddress", addressstr);

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Changed Successfully!'); </script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Please Check Your Current Changes!'); </script>");
                    }
                }
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}