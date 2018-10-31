using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class SuccessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Name=((TextBox)PreviousPage.FindControl("txtName")).Text;
            Response.Write("Hello!"+Name+", Welcome to site.");
        }
    }
}