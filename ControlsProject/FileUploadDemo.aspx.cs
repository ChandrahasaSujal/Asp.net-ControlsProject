using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ControlsProject
{
    public partial class FileUploadDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string PhysicalPath =Server.MapPath("~/Uploads/");
            if(!Directory.Exists(PhysicalPath))
                Directory.CreateDirectory(PhysicalPath);
            HttpPostedFile file = fileUpload1.PostedFile;
            file.SaveAs(PhysicalPath+file.FileName);
            lblStatus.Text = "file Uploaded Successfully";
        }
    }
}