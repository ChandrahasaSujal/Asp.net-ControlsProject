<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestServerCalendar.aspx.cs" Inherits="ControlsProject.TestServerCalendar" %>

<%@ Register Assembly="ServerControl" Namespace="ServerControl" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <cc1:ServerCalendar ID="ServerCalendar1" runat="server" ImageUrl="~/Icons/calendar.png" />
        </div>
    </form>
</body>
</html>
