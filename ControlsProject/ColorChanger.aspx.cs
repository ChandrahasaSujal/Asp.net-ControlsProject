using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class ColorChanger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtColor1_TextChanged(object sender, EventArgs e)
        {
            Panel1.Attributes.Add("style","Background-Color:"+txtColor1.Text);
        }

        protected void txtColor2_TextChanged(object sender, EventArgs e)
        {
            Panel2.Attributes.Add("style", "Background-Color:" + txtColor2.Text);
        }

        protected void txtColor3_TextChanged(object sender, EventArgs e)
        {
            Panel3.Attributes.Add("style", "Background-Color:" + txtColor3.Text);
        }
    }
}