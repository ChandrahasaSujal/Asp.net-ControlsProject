using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class Validation5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvMobileOrEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtMobile.Text.Trim().Length == 0 && txtEmail.Text.Trim().Length == 0)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void cvComments_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 50)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
                Response.Write("We got your details we will contact you soon.");
            else
                Response.Write("Validations are failed, please verify the details you have entered.");

        }
    }
}