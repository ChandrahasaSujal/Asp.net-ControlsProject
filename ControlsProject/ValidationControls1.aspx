<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControls1.aspx.cs" Inherits="ControlsProject.ValidationControls1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Name:
            <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtName" ErrorMessage="Can't leave field entry" SetFocusOnError="true" Display="Dynamic" ForeColor="red"/>
            <br />
            Select Country
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem Text="-Select Country-" Value="c" />
                <asp:ListItem Text="India" Value="c1" />
                <asp:ListItem Text="Japan" Value="c2" />
                <asp:ListItem Text="Australia" Value="c3" />
                <asp:ListItem Text="Pakistan" Value="c4" />
                <asp:ListItem Text="China" Value="c5" />
                <asp:ListItem Text="Srilanka" Value="c6" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="ddlCountry" ForeColor="Red" Display="Dynamic" InitialValue="c" ErrorMessage="Select Country" SetFocusOnError="true"/>
            <asp:Button ID="btnSubmit" Text="Submit" runat="server" />
        </div>
    </form>
</body>
</html>
