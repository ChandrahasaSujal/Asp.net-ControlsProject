using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class ValidationControls1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtName.Focus();
                txtName.Attributes.Add("onblur", "ValidatorValidate(rfv1)");
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (rfv1.IsValid && rfv2.IsValid)
                Response.Write("Data is Stored");
            else
                Response.Write("Data Validation Failed");
        }
    }
}