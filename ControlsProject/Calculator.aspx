<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="ControlsProject.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center">
            <tr>
                <td >Enter 1<sup>st</sup> Number:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter 2<sup>nd</sup>nd Number:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Result is:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Add" Width="50px" CommandArgument="+" OnCommand="Button_Command" OnClientClick="return confirm(&quot;Are you sure want to exit&quot;);" />
                    <asp:Button ID="Button2" runat="server" Text="Sub" Width="50px" CommandArgument="-" OnCommand="Button_Command" />
                    <asp:Button ID="Button3" runat="server" Text="Mul" Width="50px" CommandArgument="*" OnCommand="Button_Command" />
                    <asp:Button ID="Button4" runat="server" Text="Div" Width="50px" CommandArgument="/" OnCommand="Button_Command" />
                    <asp:Button ID="Button5" runat="server" CommandArgument="%" OnCommand="Button_Command" Text="Mod" Width="50px" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
