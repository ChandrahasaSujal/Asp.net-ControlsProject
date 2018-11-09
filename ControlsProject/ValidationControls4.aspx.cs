using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class ValidationControls4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlCustomer.Visible = false;
            pnlAgent.Visible = false;

        }

        protected void Agent_Click(object sender, EventArgs e)
        {
            pnlAgent.Visible = true;
            pnlCustomer.Visible = false;
        }

        protected void Customer_Click(object sender, EventArgs e)
        {
            pnlCustomer.Visible = true;
            pnlAgent.Visible = false;
        }
    }
}