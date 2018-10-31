<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioAndCheck.aspx.cs" Inherits="ControlsProject.RadioAndCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Gemder:
        <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="gender"/>
            <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="gender"/>
            <br />
            Veggie:
            <asp:RadioButton ID="rbYes" runat="server" Text="Yes" GroupName="veggie"/>
            &nbsp;<asp:RadioButton ID="rbNo" runat="server" Text="No" GroupName="veggie"/>
            <br />
            Hobbies:&nbsp;
        <asp:CheckBox ID="cbBooks" runat="server" Text="Reading Books" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Watching Mobies" />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Playing Games" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div><br />
        <br />
        <div>
            <asp:Label ID="lblData" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
