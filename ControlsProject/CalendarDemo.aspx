<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarDemo.aspx.cs" Inherits="ControlsProject.CalendarDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select Date:
            <asp:TextBox ID="CldText" runat="server" />
            <asp:ImageButton ID="cldImage" runat="server" ImageUrl="~/Icons/calendar_view_week.png" OnClick="cldImage_Click" />
            <asp:Calendar ID="cld1" runat="server" Visible="false" Caption="Select Date" NextMonthText="Next" OnSelectionChanged="cld1_SelectionChanged" PrevMonthText="Prev"/>
        </div>
    </form>
</body>
</html>
