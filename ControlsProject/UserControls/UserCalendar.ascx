<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserCalendar.ascx.cs" Inherits="ControlsProject.UserCalendar" %>
Select a date:
<asp:TextBox ID="txtDate" runat="server" />
<asp:ImageButton ID="btnImage" runat="server" ImageUrl="~/Icons/calendar_view_week.png" OnClick="btnImage_Click"/>
<br />
<asp:Calendar ID="cldDate" runat="server" Visible="false" OnDayRender="cldDate_DayRender" OnSelectionChanged="cldDate_SelectionChanged" OnVisibleMonthChanged="cldDate_VisibleMonthChanged" PrevMonthText="" />
