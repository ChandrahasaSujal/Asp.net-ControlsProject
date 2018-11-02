<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUploadWithCondtions.aspx.cs" Inherits="ControlsProject.FileUploadWithCondtions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Upload Files" OnClick="Button1_Click" />
            <br /><br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
