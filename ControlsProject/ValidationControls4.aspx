<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControls4.aspx.cs" Inherits="ControlsProject.ValidationControls4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="background-color:yellow;text-align:center">Life Insurance Corporation</h2>
            <h2 style="text-align:center">Login As&nbsp; <asp:Button ID="Customer" runat="server" Text="Customer" OnClick="Customer_Click" Width="68px" />
            &nbsp;<asp:Button ID="Agent" runat="server" Text="Agent" OnClick="Agent_Click" Width="74px" /></h2>
            <asp:Panel ID="pnlCustomer" runat="server">
                <table align="center">
                    <caption>Customer Login</caption>
                    <tr>
                        <td>Email Id:</td>
                        <td>
                            <asp:TextBox ID="txtCEmail" runat="server" ValidationGroup="Customer" TextMode="Email"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvCEmail" runat="server" ErrorMessage="Can't leave field empty." ControlToValidate="txtCEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Customer"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Password<br /> </td>
                        <td>
                            <asp:TextBox ID="txtCPwd" runat="server" ValidationGroup="Customer" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Can't leave field empty." ControlToValidate="txtCPwd" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Customer"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnCLogin" runat="server" Text="Login" ValidationGroup="Customer" />
                        </td>
                        <td>
                            <input id="Reset1" type="reset" value="reset" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="pnlAgent" runat="server">
                <table align="center">
                    <caption>Agent Login</caption>
                    <tr>
                        <td>Email Id:</td>
                        <td>
                            <asp:TextBox ID="txtAEmail" runat="server" ValidationGroup="Agent" TextMode="Email"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Can't leave field empty." ControlToValidate="txtAEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Agent"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Password<br /> </td>
                        <td>
                            <asp:TextBox ID="txtAPwd" runat="server" ValidationGroup="Agent" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Can't leave field empty." ControlToValidate="txtAPwd" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Agent"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnALogin" runat="server" Text="Login" ValidationGroup="Agent" />
                        </td>
                        <td>
                            <input id="Reset2" type="reset" value="reset" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
