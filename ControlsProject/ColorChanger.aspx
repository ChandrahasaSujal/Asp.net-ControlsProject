<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColorChanger.aspx.cs" Inherits="ControlsProject.ColorChanger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <contenttemplate>
            <div id="Panel1" runat="server">
                <asp:TextBox TextMode="Color" runat="server" ID="txtColor1" OnTextChanged="txtColor1_TextChanged" AutoPostBack="True" />
            </div>
                </contenttemplate>
            </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <contenttemplate>
            <div id="Panel2" runat="server">
                <asp:TextBox TextMode="Color" runat="server" ID="txtColor2" OnTextChanged="txtColor2_TextChanged" AutoPostBack="True" />
            </div>
                    </contenttemplate>
            </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                <contenttemplate>
            <div id="Panel3" runat="server">
                <asp:TextBox TextMode="Color" runat="server" ID="txtColor3" OnTextChanged="txtColor3_TextChanged" AutoPostBack="True" />
            </div>
                     </contenttemplate>
            </asp:UpdatePanel>
            <br />
    </form>
</body>
</html>
