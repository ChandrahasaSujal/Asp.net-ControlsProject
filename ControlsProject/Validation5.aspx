<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation5.aspx.cs" Inherits="ControlsProject.Validation5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function MobileOrEmail(source, args)
        {
            if (document.getElementById("txtMobile").value.trim().length == 0 && document.getElementById("txtEmail").trim().length == 0)
                args.isValid = false;
            else
                args.isValid = true;
        }
        function Check50Chars(source, args)
        {
            if (args.value.length < 50)
                args.isValid = false;
            else
                args.isValid = true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" Display="Dynamic" ErrorMessage="Name field can't left empty." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMobile" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td rowspan="2">
                        <asp:RegularExpressionValidator ID="revMobile" runat="server" Display="Dynamic" ErrorMessage="Invalid mobile No." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtMobile" ValidationExpression="\+91-\d{5} \d{5}">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:CustomValidator ID="cvMobileOrEmail" runat="server" Display="Dynamic" ErrorMessage="Either Email or Mobile No. is mandatory." ForeColor="Red" SetFocusOnError="True" ClientValidationFunction="MobileOrEmail" OnServerValidate="cvMobileOrEmail_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Comments:</td>
                    <td>
                        <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvComments" runat="server" Display="Dynamic" ErrorMessage="Comments can't leave empty." ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtComments">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:CustomValidator ID="cvComments" runat="server" Display="Dynamic" ErrorMessage="Comments should be atleast 50 chars." ForeColor="Red" SetFocusOnError="True" ClientValidationFunction="Check50Chars" OnServerValidate="cvComments_ServerValidate" ControlToValidate="txtComments">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                    <td>
                        <input id="btnReset" type="reset" value="Reset" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </form>
</body>
</html>
