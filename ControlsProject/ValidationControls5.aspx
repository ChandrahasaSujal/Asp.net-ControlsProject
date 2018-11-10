<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControls5.aspx.cs" Inherits="ControlsProject.ValidationControls5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   </head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Company Name:</td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" Display="Dynamic" ErrorMessage="Comapany name filed can't leave empty. " ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Contact No.:</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" Display="Dynamic" ErrorMessage="Phone field can't leave empty." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" Display="Dynamic" ErrorMessage="Invalid Phone no." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtPhone" ValidationExpression="\+91-\d{5} \d{5}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Website URL:</td>
                    <td>
                        <asp:TextBox ID="txtUrl" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUrl" runat="server" Display="Dynamic" ErrorMessage="Website URL field can't leave empty." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtUrl"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revUrl" runat="server" Display="Dynamic" ErrorMessage="Invalid Website URL." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtUrl" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email ID:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="Dynamic" ErrorMessage="Email Id field ca't leave empty." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" Display="Dynamic" ErrorMessage="Invalid Email Id format." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Button ID="btnSubmit" runat="server" Text="Register" />
                    </td>
                    <td>
                        <input id="btnReset" type="reset" value="Reset" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
