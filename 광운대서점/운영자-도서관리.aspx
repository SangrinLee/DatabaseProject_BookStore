<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="운영자-도서관리.aspx.cs" Inherits="광운대서점.운영자_도서관리" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style19 {
            width: 61%;
            height: 453px;
        }
        .auto-style20 {
            height: 46px;
        }
        .auto-style21 {
            height: 39px;
        }
        .auto-style24 {
            width: 39px;
            height: 54px;
        }
        .auto-style25 {
            width: 290px;
            height: 54px;
        }
        .auto-style17 {
            width: 39px;
            height: 55px;
        }
        .auto-style18 {
            width: 290px;
            height: 55px;
        }
        .auto-style14 {
            width: 39px;
            height: 31px;
        }
        .auto-style13 {
            width: 290px;
            height: 31px;
        }
        </style>
</head>
<body style="height: 510px">
    <form id="form1" runat="server">
        <table class="auto-style19">
            <tr>
                <td class="auto-style20" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/logo.png" OnClick="ImageButton1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2" style="border-style: solid; font-family: HY울릉도B; font-size: 25px; font-weight: bold; background-color: #808080;">도서추가</td>
            </tr>
            <tr>
                <td class="auto-style24" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;책번호</td>
                <td class="auto-style25" style="border-style: groove">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="border-style: groove; text-align: center; font-weight: bold;">책이름</td>
                <td class="auto-style25" style="border-style: groove">&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp; 장르</td>
                <td class="auto-style25" style="border-style: groove">&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 저자</td>
                <td class="auto-style25" style="border-style: groove">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="border-style: groove; text-align: center; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 가격</td>
                <td class="auto-style25" style="border-style: groove">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="border-style: groove; text-align: center; font-weight: bold;">재고</td>
                <td class="auto-style18" style="border-style: groove">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="도서 추가" />
                    <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" Width="106px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table style="width: 30%; height: 56px;">
            <tr>
                <td class="auto-style26" colspan="2" style="border-style: solid; font-family: HY울릉도B; font-size: 25px; font-weight: bold; background-color: #808080;">도서 삭제</td>
            </tr>
            <tr style="border-style: groove; text-align: center; font-weight: bold;">
                <td class="auto-style26" style="border-style: groove; text-align: center; font-weight: bold;">도서번호</td>
                <td style="border-style: groove; font-weight: bold; text-align: left;">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="도서 삭제" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="도서번호" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="도서번호" HeaderText="도서번호" ReadOnly="True" SortExpression="도서번호" />
                <asp:BoundField DataField="도서명" HeaderText="도서명" SortExpression="도서명" />
                <asp:BoundField DataField="장르" HeaderText="장르" SortExpression="장르" />
                <asp:BoundField DataField="저자" HeaderText="저자" SortExpression="저자" />
                <asp:BoundField DataField="가격" HeaderText="가격" SortExpression="가격" />
                <asp:BoundField DataField="재고" HeaderText="재고" SortExpression="재고" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:광운대서점ConnectionString5 %>" SelectCommand="SELECT * FROM [도서]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="뒤로!!" />
        </form>
</body>
</html>
