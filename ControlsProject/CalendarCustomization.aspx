<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarCustomization.aspx.cs" Inherits="ControlsProject.CalendarCustomization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select Date:
            <asp:TextBox ID="txtDate" runat="server" />
            <asp:ImageButton ID="dateIcon" runat="server" OnClick="dateIcon_Click" ImageUrl="~/Icons/calendar_view_week.png"/>
            <asp:Calendar ID="cld" runat="server" Visible="false" OnSelectionChanged="cld_SelectionChanged" NextMonthText="Next" OnDayRender="cld_DayRender" OnVisibleMonthChanged="cld_VisibleMonthChanged" PrevMonthText="Prev"/>
        </div>
    </form>
</body>
</html>
