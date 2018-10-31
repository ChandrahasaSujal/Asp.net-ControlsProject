using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class CaptureDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Name = Request.Form["txtName"];
            string Phone = Request.QueryString["txtPhone"];
            string Email = Request.QueryString["txtEmail"];
            Response.Write("Hello!" + Name + ", We got Your contact details will contact you");
        }
    }
}