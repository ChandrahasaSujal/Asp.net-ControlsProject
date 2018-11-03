<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUploadMultiple.aspx.cs" Inherits="ControlsProject.FileUploadMultiple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server"  AllowMultiple="true"/><br /><br />
            <asp:Button ID="btnUpload" runat="server" Text="Upload Files" OnClick="btnUpload_Click" /><br /><br />
            <asp:Label ID="lblStatus" runat="server"/>
        </div>
    </form>
</body>
</html>
