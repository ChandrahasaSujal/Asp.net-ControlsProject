using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;

namespace ControlsProject
{
    public partial class MultiLangRegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            string Language = Request.ServerVariables["HTTP_ACCEPT_LANGUAGE"];
            string PrefferedLanguage = Language.Substring(0, Language.IndexOf(','));
            ddlLang.Text = PrefferedLanguage;
            }
        }

        protected override void InitializeCulture()
        {
            string CultureName = Request.Form["ddlLang"];
            if (CultureName != null)
            {
                CultureInfo ci = new CultureInfo(CultureName);
                Thread.CurrentThread.CurrentCulture = ci;
                Thread.CurrentThread.CurrentUICulture = ci;
            }
        }
    }
}