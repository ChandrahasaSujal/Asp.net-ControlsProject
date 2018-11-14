using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class CalendarCustomization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dateIcon_Click(object sender, ImageClickEventArgs e)
        {
            if (cld.Visible)
                cld.Visible = false;
            else
                cld.Visible = true;
        }

        protected void cld_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = cld.SelectedDate.ToString("dd/MM/yyyy");
            cld.Visible = false;
        }

        private bool IsWeekSat(DateTime dt)
        {
            if (dt.Day < 8 || dt.Day > 14)
                return false;
            else
                return dt.DayOfWeek == DayOfWeek.Saturday;
        }
        protected void cld_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.DayOfYear < DateTime.Now.DayOfYear && e.Day.Date.Year == DateTime.Now.Year || e.Day.Date.DayOfWeek == DayOfWeek.Sunday || IsWeekSat(e.Day.Date))
            {
                e.Cell.ForeColor = System.Drawing.Color.Red;
                e.Day.IsSelectable = false;
            }

        }

        protected void cld_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            if(e.NewDate.Month==DateTime.Now.Month&&e.NewDate.Year==DateTime.Now.Year)
            {
                cld.PrevMonthText = "";
            }
            else
            {
                cld.PrevMonthText = "&lt;";
            }
        }
    }
}