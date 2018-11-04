using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class CalendarDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cldImage_Click(object sender, ImageClickEventArgs e)
        {
            cld1.Visible = true;
        }

        protected void cld1_SelectionChanged(object sender, EventArgs e)
        {
            CldText.Text = cld1.SelectedDate.ToString("dd/MM/yyyy");
            cld1.Visible = false;
        }
    }
}