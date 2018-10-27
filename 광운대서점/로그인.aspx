<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="로그인.aspx.cs" Inherits="광운대서점.로그인" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


        .auto-style7 {
            width: 190px;
        }
        .auto-style4 {
            width: 169px;
        }
        .auto-style6 {
            width: 190px;
            height: 18px;
        }
        .auto-style8 {
            width: 190px;
            height: 24px;
        }
        .auto-style5 {
            width: 169px;
            height: 24px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 21%; height: 57px;">
            <tr>
                <td class="auto-style7">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/logo.png" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" OnTextChanged="TextBox1_TextChanged" style="margin-top: 24px" BackColor="#FFFFCC" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style4" rowspan="2">
                    <asp:Button ID="Button1" runat="server" Height="52px" OnClick="Button1_Click" style="margin-top: 0px" Text="로그인" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
