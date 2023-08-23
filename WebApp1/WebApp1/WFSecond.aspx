
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFSecond.aspx.cs" Inherits="WebApp1.WFSecond" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 217px;
        }
        .auto-style3 {
            width: 217px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="LblMsg" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Purple" Text="[LblMsg]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="color: #000080">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtnRegister" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px">
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
