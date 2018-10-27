<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="메뉴.aspx.cs" Inherits="광운대서점.메뉴" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            height: 33px;
            width: 183px;
        }
        .auto-style24 {
            height: 33px;
            width: 210px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
            width: 80px;
        }
        .auto-style29 {
            height: 8px;
            width: 28px;
        }
        .auto-style2 {
            height: 8px;
        }
        .auto-style32 {
            width: 183px;
            height: 19px;
        }
        .auto-style33 {
            width: 210px;
            height: 19px;
        }
        .auto-style34 {
            height: 19px;
        }
        .auto-style7 {
            width: 183px;
            height: 20px;
        }
        .auto-style27 {
            width: 210px;
            }
        .auto-style30 {
            height: 20px;
        }
        .auto-style22 {
            height: 20px;
        }
        .auto-style36 {
            width: 234px;
        }
        .auto-style38 {
            width: 310px;
        }
        .auto-style44 {
            width: 48px;
        }
        .auto-style37 {
            height: 22px;
            width: 234px;
        }
        .auto-style39 {
            height: 22px;
            width: 310px;
            margin-left: 40px;
        }
        .auto-style40 {
            height: 22px;
            width: 102px;
        }
        .auto-style42 {
            height: 20px;
            width: 229px;
        }
        .auto-style45 {
            width: 229px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border-style: ridge;">
                <tr>
                    <td class="auto-style36" rowspan="2">
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="58px" ImageUrl="~/Image/logo.png" OnClick="ImageButton4_Click" Width="236px" />
                    </td>
                    <td class="auto-style38" rowspan="2">&nbsp;</td>
                    <td class="auto-style44" style="border-style: ridge">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageAlign="Baseline" ImageUrl="~/Image/membership.png" OnClick="ImageButton2_Click" style="margin-bottom: 0px" Width="94px" />
                    </td>
                    <td style="border-style: ridge">
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="20px" ImageAlign="Left" ImageUrl="~/Image/nonmember.png" OnClick="ImageButton3_Click" style="margin-left: 0px" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style44" style="border-style: ridge">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageAlign="Baseline" ImageUrl="~/Image/login.png" OnClick="ImageButton1_Click" Width="80px" />
                    </td>
                    <td style="border-style: ridge">
                        <asp:ImageButton ID="ImageButton5" runat="server" Height="25px" ImageAlign="Left" ImageUrl="~/Image/managerlogin.png" OnClick="ImageButton5_Click" Width="98px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37" style="padding: inherit; border-style: solid; font-family: HY울릉도B; background-color: #808080; font-size: 25px; font-weight: bold; text-decoration: blink; text-align: center;">광운대서점</td>
                    <td class="auto-style39">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp; </td>
                    <td class="auto-style40">
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="구매하기" />
                    </td>
                </tr>
            </table>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <p>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style42" style="font-family: '맑은 고딕', Arial, Helvetica, sans-serif; color: #000080; border-style: none">분야 / 서비스 전체보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style22">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">상세검색</asp:LinkButton>
                    </td>
                    <td class="auto-style9" rowspan="8" style="font-weight: bold">오늘의 추천 도서<br />
                        <br />
                        <asp:ImageButton ID="ImageButton6" runat="server" Height="164px" ImageUrl="~/Image/book_1.png" Width="215px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="소설" Width="58px" style="height: 27px" />
                    </td>
                    <td class="auto-style27" rowspan="5">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="인문" Width="58px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style45">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="종교" Width="58px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="스포츠" Width="58px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="공학" Width="58px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style27" rowspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style45"></td>
                </tr>
                <tr>
                    <td class="auto-style42"></td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
        </p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1" rowspan="2">&nbsp;</td>
                <td class="auto-style24" rowspan="2"></td>
                <td class="auto-style10" colspan="2">&nbsp;</td>
                <td class="auto-style10" colspan="2">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style2" colspan="2"></td>
                <td class="auto-style2" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style32"></td>
                <td class="auto-style33"></td>
                <td class="auto-style34" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style27"></td>
                <td class="auto-style30" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style9" colspan="5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
