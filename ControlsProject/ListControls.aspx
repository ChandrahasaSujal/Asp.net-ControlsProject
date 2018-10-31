<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListControls.aspx.cs" Inherits="ControlsProject.ListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="CS1">India</asp:ListItem>
            <asp:ListItem Value="CS2">UK</asp:ListItem>
            <asp:ListItem Value="CS3">America</asp:ListItem>
            <asp:ListItem Selected="True" Value="CS4">China</asp:ListItem>
            <asp:ListItem Value="CS5">Japan</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Rows="3" SelectionMode="Multiple"></asp:ListBox>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="Trivandrum"></asp:ListItem>
            <asp:ListItem Text="Bengaluru"></asp:ListItem>
            <asp:ListItem Text="Hyderabad"></asp:ListItem>
            <asp:ListItem Text="Amaravathi"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        </asp:CheckBoxList>
        <br />
        <asp:BulletedList ID="BulletedList1" runat="server">
        </asp:BulletedList>
    
    </div>
    </form>
</body>
</html>
