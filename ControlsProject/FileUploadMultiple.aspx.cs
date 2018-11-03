using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ControlsProject
{
    public partial class FileUploadMultiple : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            int FileCount = 0;
            if (FileUpload1.HasFiles)
            {
                string PhysicalPath = Server.MapPath("~/Uploads/");
                if (!Directory.Exists(PhysicalPath))
                    Directory.CreateDirectory(PhysicalPath);
                foreach (HttpPostedFile file in FileUpload1.PostedFiles)
                {
                    FileCount += 1;
                    file.SaveAs(PhysicalPath+file.FileName);
                }
                lblStatus.Text = FileCount + "File(s) Uploaded Successfuly.";
            }
            else
            {
                lblStatus.Text = "Please choose files.";
            }
            
        }
    }
}