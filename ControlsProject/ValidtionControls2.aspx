<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidtionControls2.aspx.cs" Inherits="ControlsProject.ValidtionCntrols2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Range Validator</title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td>Enter Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Can't leave field empty." ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Age:</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Can't leave field empty." ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="rvAge" runat="server" ErrorMessage="Age should between 18 to 60" ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="18" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Journey:</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                        <br />
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Can't leave field empty." ControlToValidate="txtDate" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="rvDate" runat="server" ErrorMessage="Journey date should between 90 days from current day of booking." ControlToValidate="txtDate" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Type="Date"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnSubmit" runat="server" Text="Button" />
                        <input id="btnReset" type="reset" value="reset" /></td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
