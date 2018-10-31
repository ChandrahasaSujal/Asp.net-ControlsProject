using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Command(object sender, CommandEventArgs e)
        {
            double num1 = double.Parse(TextBox1.Text);
            double num2 = double.Parse(TextBox2.Text);
            double result = 0;
            switch(e.CommandArgument.ToString())
            {
                case "+":
                result = num1 + num2;
                break;
                case "-":
                result = num1 - num2;
                    break;
                case "*":
                result = num1 * num2;
                    break;
                case "/":
                result = num1 / num2;
                    break;
                case "%":
                    result = num1 % num2;
                    break;
            }

            TextBox3.Text = result.ToString();
        }
    }
}