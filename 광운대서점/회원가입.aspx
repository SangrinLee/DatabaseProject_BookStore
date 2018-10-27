<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="회원가입.aspx.cs" Inherits="광운대서점.회원가입" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style10 {
            width: 332px;
            margin-left: 40px;
        }
        .auto-style14 {
            width: 56px;
        }
        .auto-style13 {
            width: 289px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 57%; height: 417px;">
            <tr>
                <td class="auto-style10" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/logo.png" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2" style="border-style: solid; font-family: HY울릉도B; font-size: 25px; font-weight: bold; background-color: #808080;">회원가입</td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">회원아이디</td>
                <td class="auto-style13" style="border-style: groove">
                    <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 이름</td>
                <td class="auto-style13" style="border-style: groove">
                    <asp:TextBox ID="TextBox2" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp; 비밀번호 </td>
                <td class="auto-style13" style="border-style: groove">
                    <asp:TextBox ID="TextBox3" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;주민등록번호&nbsp;</td>
                <td class="auto-style13" style="border-style: groove">
                    <asp:TextBox ID="TextBox4" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">휴대폰번호</td>
                <td class="auto-style13" style="border-style: groove">
                    <asp:TextBox ID="TextBox5" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">이메일</td>
                <td class="auto-style13" style="border-style: groove">
                    <asp:TextBox ID="TextBox6" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">
                    <br />
                    주소</td>
                <td class="auto-style13" style="border-style: groove">
                    <asp:TextBox ID="TextBox7" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click1" Text="등록하기" Width="113px" />
                </td>
            </tr>
        </table>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
