using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace ControlsProject
{
    public partial class FileUploadWithCondtions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string PhysicalPath = Server.MapPath("~/UpLoads/");
            if (!Directory.Exists(PhysicalPath))
                Directory.CreateDirectory(PhysicalPath);
            if (FileUpload1.HasFile)
            {
                HttpPostedFile file = FileUpload1.PostedFile;
                string fileExt = Path.GetExtension(file.FileName);

                if (fileExt == ".jpg" || fileExt == ".png")
                {
                    if (file.ContentLength <= 524288)
                    {
                        if (!File.Exists(PhysicalPath + file.FileName))
                        {
                            file.SaveAs(PhysicalPath + file.FileName);
                            Label1.Text = "Successfully Uploaded";
                        }
                        else
                        {
                            Label1.Text = "File is exists with the same name.";
                        }
                    }
                    else
                    {
                        Label1.Text = "File Size exceeded should within the 512 KB.";
                    }
                }
                else
                {
                    Label1.Text ="Image only can upload jpg or png.";
                }
            }
            else
            {
                Label1.Text = "Please choose a file before clicking upload button.";
            }
        }
    }
}