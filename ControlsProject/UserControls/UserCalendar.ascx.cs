using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsProject
{
    public partial class UserCalendar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnImage_Click(object sender, ImageClickEventArgs e)
        {
            if (cldDate.Visible)
                cldDate.Visible = false;
            else
                cldDate.Visible = true;
        }

        protected void cldDate_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = cldDate.SelectedDate.ToShortDateString();
            cldDate.Visible = false;
        }

        protected void cldDate_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            if (e.NewDate.Month == DateTime.Now.Month && e.NewDate.Year==DateTime.Now.Year)
            {
                cldDate.PrevMonthText = "";
            }
            else
                cldDate.PrevMonthText = "&lt;";
        }

        protected void cldDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.Date.DayOfYear<DateTime.Now.DayOfYear&&e.Day.Date.Year==DateTime.Now.Year||isSaturday(e.Day.Date))
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isSaturday(DateTime dt)
        {
            if(dt.Date.Day<8 || dt.Date.Day>14 )
            {
                return false;
            }
            return dt.DayOfWeek == DayOfWeek.Saturday;
        }
    }
}