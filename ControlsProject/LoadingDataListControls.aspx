<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoadingDataListControls.aspx.cs" Inherits="ControlsProject.LoadingDataListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center">
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple"></asp:ListBox>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Selected Item" OnClick="Button1_Click" style="height: 26px" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Selected Item" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Selected Item" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Selected Item" OnClick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
