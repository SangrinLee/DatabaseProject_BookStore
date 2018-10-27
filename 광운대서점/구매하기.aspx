<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="구매하기.aspx.cs" Inherits="광운대서점.구매하기" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style14 {
            width: 56px;
        }
        
        .auto-style13 {
            width: 290px;
        }
        .auto-style15 {
            height: 69px;
        }
        .auto-style16 {
            width: 290px;
            height: 69px;
        }
    </style>
</head>
<body style="height: 515px">
    <form id="form1" runat="server">
        <div>
            <br />
            <table style="width: 61%; height: 455px;">
                <tr>
                    <td class="auto-style10" colspan="2">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/logo.png" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2" style="border-style: solid; font-family: HY울릉도B; font-size: 25px; font-weight: bold; background-color: #808080;">구매하기</td>
                </tr>
                <tr>
                    <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp; 도서번호</td>
                    <td class="auto-style13" style="border-style: groove">
                        <asp:TextBox ID="TextBox1" runat="server" Width="201px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="확인" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 회원 ID</td>
                    <td class="auto-style13" style="border-style: groove">&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp; 결제일자</td>
                    <td class="auto-style13" style="border-style: groove">&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 금액</td>
                    <td class="auto-style13" style="border-style: groove">
                        <asp:TextBox ID="TextBox4" runat="server" Width="201px"></asp:TextBox>
                    &nbsp;-
                        <asp:Label ID="Label2" runat="server">0</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 은행명</td>
                    <td class="auto-style16" style="border-style: groove">
                        <asp:TextBox ID="TextBox5" runat="server" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="border-style: groove; text-align: center; font-weight: bold;">마일리지</td>
                    <td class="auto-style15" style="border-style: groove; text-align: left; font-weight: bold;">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:Button ID="Button3" runat="server" Height="28px" OnClick="Button3_Click" Text="마일리지 사용" Width="129px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="결제" Width="67px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
