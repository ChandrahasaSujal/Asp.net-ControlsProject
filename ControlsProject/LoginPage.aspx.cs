using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Focus();

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "Admin" && txtPwd.Text == "admin123")
                Server.Transfer("SuccessPage.aspx");
            else
                Response.Redirect("FailurePage.aspx");
        }
    }
}