<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiViewDemo.aspx.cs" Inherits="ControlsProject.MultiViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table align="center">
                        <caption>Personal Details</caption>
                        <tr>
                            <td>First Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Middle Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Mobile No.:</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Email Id:</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td align="right">
                                <asp:Button ID="btnFPnext" runat="server" Text="Next" Width="48px" OnClick="btnFPnext_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table align="center">
                        <caption>Address Details</caption>
                        <tr>
                            <td>Street Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>House No./ Plot No./ Building No.</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>City/ Town/ Village</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>State:</td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Pincode:</td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnSPPrev" runat="server" Text="Prev" Width="48px" OnClick="btnSPPrev_Click" />
                            </td>
                            <td align="right">
                                <asp:Button ID="btnSPNext" runat="server" Text="Next" Width="48px" OnClick="btnSPNext_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table align="center">
                        <caption>Family Details</caption>
                        <tr>
                            <td>Father Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Mother Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Spouse Name (If married)</td>
                            <td>
                                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Childrens (If any)</td>
                            <td>
                                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnTPPrev" runat="server" Text="Prev" Width="48px" OnClick="btnTPPrev_Click" />
                            </td>
                            <td align="right">
                                <asp:Button ID="btnTPNext" runat="server" Text="Next" Width="48px" OnClick="btnTPNext_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    All the information is provied are correct, I abide them.<br />
                    <asp:Button ID="btnLPPrev" runat="server" Text="Prev" Width="48px" OnClick="btnLPPrev_Click" />
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" Width="48px" OnClick="btnConfirm_Click" />

                </asp:View>
            </asp:MultiView>

        </div>
    </form>
</body>
</html>
