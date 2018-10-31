using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button Button1 = new Button();
            Button1.Text = "Button";
            Button1.BackColor =System.Drawing.Color.YellowGreen;
            Button1.BorderStyle = BorderStyle.Dotted;
            Button1.BorderWidth = 10;
            Button1.BorderColor = System.Drawing.Color.Aqua;
            form1.Controls.Add(Button1);
            Button1.Click += Button1_Click;
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Button 1 is clicked");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Button 2 is clicked");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("Button 3 is clicked");
        }
    }
}