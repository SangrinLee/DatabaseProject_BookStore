<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="비회원.aspx.cs" Inherits="광운대서점.비회원" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style13 {
            width: 173px;
        }
        .auto-style14 {
            height: 33px;
            width: 173px;
        }
        .auto-style12 {
            height: 33px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table style="width: 47%; height: 458px;">
            <tr>
                <td class="auto-style13">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/logo.png" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="font-family: HY울릉도B; font-weight: bold; background-color: #808080; border-style: solid; font-size: 30px">비회원 접속</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: groove; font-weight: bold; text-align: center;">이름</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="TextBox2" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: groove; font-weight: bold; text-align: center;">비밀번호</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="TextBox3" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: groove; font-weight: bold; text-align: center;">주민등록번호</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="TextBox4" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: groove; font-weight: bold; text-align: center;">휴대폰번호</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="TextBox5" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove; font-weight: bold; text-align: center;">이메일</td>
                <td class="auto-style12" style="border-style: groove">
                    <asp:TextBox ID="TextBox6" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: groove; font-weight: bold; text-align: center;">주소</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="TextBox7" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click1" Text="접속하기" Width="75px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
