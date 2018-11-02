using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ControlsProject
{
    public partial class LoadingDataListControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            DataSet ds = new DataSet();
            string Path = Server.MapPath("~/App.xml");
            ds.ReadXml(Path);
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();

            RadioButtonList1.DataSource = ds.Tables[0];
            RadioButtonList1.DataTextField = "Name";
            RadioButtonList1.DataValueField = "Id";
            RadioButtonList1.DataBind();

            ListBox1.DataSource = ds.Tables[0];
            ListBox1.DataTextField = "Name";
            ListBox1.DataValueField = "Id";
            ListBox1.DataBind();

            CheckBoxList1.DataSource = ds.Tables[0];
            CheckBoxList1.DataTextField = "Name";
            CheckBoxList1.DataValueField = "Id";
            CheckBoxList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           ListItem li= DropDownList1.SelectedItem;
           Label1.Text = li.Value + ": " + li.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           ListItem li=RadioButtonList1.SelectedItem;
            Label2.Text = li.Value + ": " + li.Text;
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach(ListItem li in ListBox1.Items)
            {
                
                    Label3.Text = li.Text + ": " + li.Value + "<br />";
            }
        }
    }
}