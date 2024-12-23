using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace EmpManagement
{
    public partial class ViewDepartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString;
                string selectSQL = "SELECT * from Department_Table";
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(selectSQL, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "Department_Table");

                grvDepartment.DataSource = ds;
                grvDepartment.DataBind();
            }

        }
    }
}