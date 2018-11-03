<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ads.aspx.cs" Inherits="ControlsProject.Ads" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="refresh" content="3" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads.xml" Width="100%"  Height="75" Target="_blank"/>
        </div>
    </form>
</body>
</html>
