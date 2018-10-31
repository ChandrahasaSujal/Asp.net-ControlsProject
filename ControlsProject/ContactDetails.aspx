<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactDetails.aspx.cs" Inherits="ControlsProject.ContactDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center">
            <caption>Contact Details</caption>
            <tr>
                <td>User Name:</td>
                <td><asp:TextBox ID="txtName" Name="txtName" runat="server" /></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><asp:TextBox ID="txtPhone" Name="txtPhone" runat="server" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><asp:TextBox ID="txtEmail" Name="txtEmail" TextMode="Email" runat="server" /></td>
            </tr>
            <tr>
                <td align="right">&nbsp;</td>
                <td><input type="reset"  value="Clear" id="btnClear" name="btnClear" /><asp:Button ID="btnSubmit" Name="btnSubmit" Text ="Submit" runat="server" PostBackUrl="~/CaptureDetails.aspx" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
