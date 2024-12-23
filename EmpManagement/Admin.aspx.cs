using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpManagement
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
        String EmpID = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                EmpID = (Session["EmpID"].ToString());
                EmpDetail_Bind();
            }
        }
        private void EmpDetail_Bind()
        {
            //Employee Details
            //
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Employee_Table where Employee_ID='" + EmpID + "'", con);
            cmd.Parameters.AddWithValue("Department_ID", DepIDLabel.Text);
            cmd.Parameters.AddWithValue("Employee_ID", EmpIDLabel.Text);
            cmd.Parameters.AddWithValue("Employee_Name", EmpNameLabel.Text);
            cmd.Parameters.AddWithValue("Designation", DesgLabel.Text);
            cmd.Parameters.AddWithValue("Joining_Date", DateLabel.Text);
            cmd.Parameters.AddWithValue("Email", EmailLabel.Text);
            cmd.Parameters.AddWithValue("Contact", ContactLabel.Text);
            cmd.Parameters.AddWithValue("Address", AddressLabel.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                var row = dt.Rows[0];

                DepIDLabel.Text = row["Department_ID"].ToString();
                EmpIDLabel.Text = row["Employee_ID"].ToString();
                EmpNameLabel.Text = row["Employee_Name"].ToString();
                DesgLabel.Text = row["Designation"].ToString();
                DateLabel.Text = row["Joining_Date"].ToString();
                EmailLabel.Text = row["Email"].ToString();
                ContactLabel.Text = row["Contact"].ToString();
                AddressLabel.Text = row["Address"].ToString();
            }
            //
        }

    }
}