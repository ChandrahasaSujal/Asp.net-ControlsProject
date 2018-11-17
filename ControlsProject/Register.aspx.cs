using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (!IsPostBack)
                this.Theme = ddlTheme.SelectedValue;
            else
                this.Theme = Request.Form["ddlTheme"];
        }
    }
}