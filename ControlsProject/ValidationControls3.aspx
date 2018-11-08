<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControls3.aspx.cs" Inherits="ControlsProject.ValidationControls3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table>
                <tr>
                    <td>User Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Can't leave field empty." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Can't leave field empty." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvCPwd" runat="server" ControlToValidate="txtCPwd" Display="Dynamic" ErrorMessage="Can't leave field empty." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="cvCPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCPwd" Display="Dynamic" ErrorMessage="Confirm password should match with password." ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Select Date:</td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imageDate" runat="server" ImageUrl="~/Icons/calendar_view_week.png" OnClick="imageDate_Click" ValidationGroup="Date" />
                        <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    </td>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    <td>
                        <asp:CompareValidator ID="cvDateDTC" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Value must be a Date format." ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Date"></asp:CompareValidator>
                        <br />
                        <asp:CompareValidator ID="cvDateLTC" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Date should not be &lt; todays date." ForeColor="Red" Operator="GreaterThanEqual" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </td>
                    <td>
                        <input id="btnReset" type="reset" value="Reset" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
