using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
namespace ControlsProject
{
    public partial class RadioAndCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder str = new StringBuilder();
            str.Append("Name:" + TextBox1.Text + "<br />");
            if (rbMale.Checked)
                str.Append("Gender: Male");
            else if (rbFemale.Checked)
                str.Append("Gender:" + rbFemale.Text);
            else
                str.Append("Gender:Unknown");
            lblData.Text = str.ToString();
        }
    }
}