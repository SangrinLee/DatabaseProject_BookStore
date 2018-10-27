<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="운영자.aspx.cs" Inherits="광운대서점.운영자" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style11 {
            width: 21%;
            height: 189px;
        }
        .auto-style12 {
            width: 190px;
            height: 39px;
        }
        
        .auto-style4 {
            width: 169px;
        }
        .auto-style8 {
            width: 190px;
            height: 22px;
        }
        .auto-style9 {
            width: 190px;
            height: 38px;
        }
        .auto-style10 {
            width: 169px;
        }
        .auto-style14 {
            width: 190px;
            height: 7px;
        }
        .auto-style5 {
            width: 169px;
            height: 22px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 413px">
    
        <br />
        <table class="auto-style11">
            <tr>
                <td class="auto-style12">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/logo.png" OnClick="ImageButton1_Click" />
                </td>
                <td class="auto-style4" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-family: HY울릉도B; font-size: 20px">&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp; 관리자 접속</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" OnTextChanged="TextBox1_TextChanged" style="margin-top: 24px"></asp:TextBox>
                </td>
                <td class="auto-style10" rowspan="2">
                    <asp:Button ID="Button1" runat="server" Height="52px" OnClick="Button1_Click" style="margin-top: 0px" Text="접속" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
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
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="도서관리" Visible="False" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="멤버관리" Visible="False" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="구매관리" Visible="False" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="메뉴로!" />
    
    </div>
    </form>
</body>
</html>
