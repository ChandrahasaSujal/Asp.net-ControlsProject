<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pages.aspx.cs" Inherits="ControlsProject.Pages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h5>Click on below to navigate.</h5>
            <ul>
                <li><asp:HyperLink NavigateUrl="~/LoginPage.aspx" runat="server" Target="c">Page 1</asp:HyperLink></li>
                <li><asp:HyperLink runat="server" NavigateUrl="~/FileUploadWithCondtions.aspx" Target="c">Page 2</asp:HyperLink></li>
                <li><asp:HyperLink runat="server" NavigateUrl="~/Calculator.aspx" Target="c">Page 3</asp:HyperLink></li>
            </ul>
        </div>
    </form>
</body>
</html>
