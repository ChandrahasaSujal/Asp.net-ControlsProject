using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class ValidtionCntrols2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rvDate.MinimumValue = DateTime.Now.ToShortDateString();
            rvDate.MaximumValue = DateTime.Now.AddDays(90).ToShortDateString();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}