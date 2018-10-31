using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class ListControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListBox1.Items.Add("Kerala");
            ListBox1.Items.Add("Karnataka");
            ListBox1.Items.Add("Tamilnadu");
            ListBox1.Items.Add("Andhra Pradesh");
            ListBox1.Items.Add("Telangana");
            ListBox1.Items.Add("Orissa");

            CheckBoxList1.Items.Add(new ListItem("red", "col1"));
        }
    }
}