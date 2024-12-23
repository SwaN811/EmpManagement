using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace EmpManagement
{
    public partial class AddNewUser : System.Web.UI.Page
    {
        string empid;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindDatabase();
            }

        }
        protected void BindDatabase()
        {
            try //try statement allows user to define a block of code to be tested for errors while it is being executed
            {
                string cs = ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString; //cs is 'variable name' of 'variable type string' with value(after = is stored as value) 
                SqlConnection con = new SqlConnection(cs);//SqlConnection is a class used to create a connection to a database. SqlConnection is used together with SqlDataAdapter & SqlCommand to increase performance when connecting to a Microsoft SQL Server database.
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM Department_Table", con);
                //SqlCommand object allows user to write query & send commands to a database
                cmd.CommandType = CommandType.Text;
                //CommandType property tells the database the type of command text the command holds
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //SqlDataAdapter serves as a bridge between a DataSet and SQL Server for retrieving and saving data
                DataSet cntDS = new DataSet();
                //DataSet represents the data in table structure which means the data into rows and columns
                da.Fill(cntDS);
                DepDdl.DataSource = cntDS.Tables[0];
                //DataSource allow user to work with different types of data sources such as a database
                DepDdl.DataTextField = "Department_Name";
                //DataTextField is what the user can see
                DepDdl.DataValueField = "Department_ID";
                //DataValueField is what user can use for identify which one is selected from DropDownList. 
                DepDdl.DataBind();
                //DataBind is used to bind data
                DepDdl.Items.Insert(0, new ListItem("---Select Department ID---", "0"));
            }
            catch //catch statement allows you to define a block of code to be executed, if an error occurs in the try block.
            {
                throw new Exception();//throw statement allows user to create a custom error. The throw statement is used together with an exception class. There are many exception classes available in C#: ArithmeticException, FileNotFoundException, IndexOutOfRangeException, TimeOutException, etc: 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ConnectionString;
            //The ConfigurationManager class enables user to access machine, application,& user configuration information.
            //ConnectionStrings are a SQL connection that specifies a local filename.
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select max(Employee_ID) as ID from Employee_Table", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable cntDS = new DataTable();// DataTable represents table from database
            da.Fill(cntDS);
            //
            if (cntDS.Rows.Count > 0)
            {
                if (cntDS.Rows[0]["ID"].ToString() != "")
                {
                    string maxID = cntDS.Rows[0]["ID"].ToString();
                    int value = Convert.ToInt32(maxID.Substring(3));

                    if (value >= 10)
                    {
                        empid = "Emp0" + (value + 1);
                    }
                    //else if (value >= 10)
                    //{
                    //    empid = "Emp0" + (value + 1);
                    //}
                    else
                    {
                        empid = "Emp" + (value + 1);
                    }
                }


                //

                SqlConnection cs1 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionSQL"].ToString());
                SqlDataAdapter da1 = new SqlDataAdapter();

                da1.InsertCommand = new SqlCommand("INSERT INTO Employee_Table VALUES (@Department_ID,@Employee_ID,@Employee_Name,@Designation,@Joining_Date,@Email,@Contact,@Address)", cs1);
                //InsertCommand represents either an SQL query or the name of a stored procedure, and is used by the Insert method. 
                da1.InsertCommand.Parameters.Add("Department_ID", SqlDbType.VarChar).Value = DepDdl.SelectedValue;
                //InsertCommand.Parameters represents the parameters which are written along with @ inside InsertCommand
                da1.InsertCommand.Parameters.Add("Employee_ID", SqlDbType.VarChar).Value = empid;
                da1.InsertCommand.Parameters.Add("Employee_Name", SqlDbType.VarChar).Value = EmpNameTxt.Text;
                da1.InsertCommand.Parameters.Add("Designation", SqlDbType.VarChar).Value = DesgDdl.SelectedValue;
                da1.InsertCommand.Parameters.Add("Joining_Date", SqlDbType.Date).Value = DateTxt.Text; ;
                da1.InsertCommand.Parameters.Add("Email", SqlDbType.VarChar).Value = EmailTxt.Text;
                da1.InsertCommand.Parameters.Add("Contact", SqlDbType.VarChar).Value = MobTxt.Text;
                da1.InsertCommand.Parameters.Add("Address", SqlDbType.VarChar).Value = AddTxt.Text;
                //da1.InsertCommand.Parameters.Add("Employee_Image", SqlDbType.Image).Value = ImageFileUpload;

                cs1.Open();//Open method() is used to Open the connection to the database
                da1.InsertCommand.ExecuteNonQuery();//ExecuteNonQuery method() is used for insert, update, & delete SQL commands
                cs1.Close();//Close method() is used to Close the connection to the database
                //Response.Write("Data Inserted Successfully!");
                //Response.Write method writes a specified string to the output.
                MessageBox.Show("Data Inserted Successfully!", "Successful!", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
    }
}