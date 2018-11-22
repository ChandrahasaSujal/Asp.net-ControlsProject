<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="MultiLangRegistrationForm.aspx.cs" Inherits="ControlsProject.MultiLangRegistrationForm" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr align="center">
                    <td colspan="2">
                        <asp:Label ID="lblTitle" runat="server" Text="Registration Form" meta:resourcekey="lblTitleResource1" ></asp:Label>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <asp:DropDownList ID="ddlLang" runat="server" meta:resourcekey="ddlLangResource1" AutoPostBack="True">
                            <asp:ListItem meta:resourcekey="ListItemResource1" Value="en-US">English</asp:ListItem>
                            <asp:ListItem meta:resourcekey="ListItemResource2" Value="fr-FR">Français</asp:ListItem>
                            <asp:ListItem meta:resourcekey="ListItemResource3" Value="hi">हिन्दी</asp:ListItem>
                            <asp:ListItem meta:resourcekey="ListItemResource4" Value="te">తెలుగు</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUserId" runat="server" Text="Label" meta:resourcekey="lblUserIdResource1" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPwd" runat="server" Text="Label" meta:resourcekey="lblPwdResource1" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" meta:resourcekey="TextBox2Resource1" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Label" meta:resourcekey="lblNameResource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" meta:resourcekey="TextBox3Resource1" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPhone" runat="server" Text="Label" meta:resourcekey="lblPhoneResource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" meta:resourcekey="TextBox4Resource1" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Label" meta:resourcekey="lblEmailResource1" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" meta:resourcekey="TextBox5Resource1" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" runat="server" Text="Label" meta:resourcekey="lblAddressResource1" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" meta:resourcekey="TextBox6Resource1" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnRegister" runat="server" meta:resourcekey="btnRegisterResource1"  />
                    </td>
                    <td>
                        <input id="Reset1" type="reset" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
