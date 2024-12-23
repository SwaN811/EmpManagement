using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml.Linq;

namespace EmpManagement
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HideAddNewUser nav element
            System.Web.UI.HtmlControls.HtmlGenericControl HideAddNewUser = (System.Web.UI.HtmlControls.HtmlGenericControl)Master.FindControl("HideAddNewUser");
            HideAddNewUser.Visible = false;
            //Hide Profile

        }
    }
}