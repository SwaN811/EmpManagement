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
    public partial class HOME : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
        String EmpID = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpID"] != null && !String.IsNullOrEmpty(Session["EmpID"].ToString()))
            {
                EmpID = (Session["EmpID"].ToString());
                displayname();
            }
        }
        private void displayname()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString);
            string query = "select * from Employee_Table where Employee_ID='" + EmpID + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count > 0)
            {
                lbEmployeeName.Text = ds.Rows[0]["Employee_Name"].ToString();
                NavUserInfoLabel.Text = ds.Rows[0]["Employee_Name"].ToString();
                //NavUserInfoLabel1.Text = ds.Rows[0]["Employee_Name"].ToString();
                //UserDesignationLabel.Text = ds.Rows[0]["Designation"].ToString();

            }
        }

    }
}