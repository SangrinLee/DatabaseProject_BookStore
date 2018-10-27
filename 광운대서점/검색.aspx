<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="검색.aspx.cs" Inherits="광운대서점.검색" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">



        .auto-style2 {
            width: 832px;
            height: 240px;
            margin-bottom: 0px;
        margin-right: 0px;
    }
        .auto-style13 {
            height: 46px;
        }
        .auto-style25 {
            width: 88px;
            height: 52px;
        }
        .auto-style15 {
            width: 711px;
            height: 52px;
        }
        .auto-style23 {
            height: 34px;
            width: 88px;
        }
        .auto-style24 {
            height: 34px;
            width: 711px;
            font-weight: 700;
        }
        .auto-style14 {
            height: 47px;
        }
        </style>
</head>
<body style="height: 838px; width: 1113px">
    <form id="form1" runat="server">
    <div style="height: 19px">
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
        <br />
    
    </div>
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style13" colspan="2">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/logo.png" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" colspan="2" style="border-style: solid; background-color: #808080; font-family: HY울릉도M; font-weight: bold; font-size: 30px;">상세검색</td>
                </tr>
                <tr>
                    <td class="auto-style25" style="border-style: outset; font-weight: bold; text-align: center;">도서번호</td>
                    <td class="auto-style15" style="border-style: outset">
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 0px" Width="388px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" style="border-style: outset; font-weight: bold; text-align: center;">&nbsp;도서명</td>
                    <td class="auto-style15" style="border-style: outset">
                        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="385px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" style="border-style: outset; font-weight: bold; text-align: center;">&nbsp; 저&nbsp; 자</td>
                    <td class="auto-style15" style="border-style: outset">
                        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Width="389px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23" style="border-style: outset; font-weight: bold; text-align: center;">&nbsp; 장&nbsp; 르 </td>
                    <td class="auto-style24" style="border-style: outset">&nbsp;<br />
                        &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="소설" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="인문" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="종교" />
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="스포츠" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox5" runat="server" Text="공학" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style24">
                        <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="검색" Width="61px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="42px" OnClick="Button2_Click" Text="메뉴로" Width="61px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" Width="280px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
