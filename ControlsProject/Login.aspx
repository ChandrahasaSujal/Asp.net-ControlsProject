<%@ Page Language="C#" AutoEventWireup="true" Trace="true" CodeBehind="Login.aspx.cs" Inherits="ControlsProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <table align="center">
              <caption>Login Form</caption>
              <tr>
                  <td>User Name:</td>
                  <td><asp:TextBox ID="txtName" runat="server" /></td>
              </tr>
              <tr>
                  <td>Password:</td>
                  <td><asp:Textbox ID="txtPwd" runat="server" TextMode="Password" /></td>
              </tr>
              <tr>
                  <td align="right"><asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click" /></td>
                  <td><input type="reset" value="Reset" /></td>
              </tr>
              <tr>
                  <td colspan="2"><asp:Label ID="lblStatus" ForeColor="Red" runat="server" ></asp:Label></td>
              </tr>
          </table>
    </div>
    </form>
</body>
</html>
 