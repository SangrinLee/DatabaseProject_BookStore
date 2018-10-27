<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="운영자-구매관리.aspx.cs" Inherits="광운대서점.운영자_구매관리" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style5 {
            width: 238px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 465px">
    
        <table style="width: 59%; height: 230px;">
            <tr>
                <td class="auto-style5">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/logo.png" />
                </td>
                <td class="auto-style1" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" style="border-style: solid; font-family: HY울릉도B; font-size: 25px; font-weight: bold; background-color: #808080;">매출액 </td>
                <td class="auto-style1" colspan="2" style="border-style: solid; font-family: HY울릉도B; font-size: 25px; font-weight: bold; background-color: #808080;">
                    <asp:Button ID="Button6" runat="server" Height="29px" OnClick="Button6_Click" Text="계산" Width="111px" />
                </td>
            </tr>
            <tr style="border-style: groove">
                <td class="auto-style3" colspan="3" style="border-style: groove">
                    <asp:TextBox ID="TextBox10" runat="server" Width="110px"></asp:TextBox>
                    &nbsp; 년&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox11" runat="server" Width="119px"></asp:TextBox>
                    &nbsp; 월&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" Width="119px"></asp:TextBox>
                    &nbsp; 일<br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    &nbsp;원입니다.</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="width: 64px" Text="뒤로!!" />
                </td>
            </tr>
        </table>
    
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="도서번호" HeaderText="도서번호" SortExpression="도서번호" />
                <asp:BoundField DataField="회원아이디" HeaderText="회원아이디" SortExpression="회원아이디" />
                <asp:BoundField DataField="입금일자_년" HeaderText="입금일자_년" SortExpression="입금일자_년" />
                <asp:BoundField DataField="입금일자_월" HeaderText="입금일자_월" SortExpression="입금일자_월" />
                <asp:BoundField DataField="입금일자_일" HeaderText="입금일자_일" SortExpression="입금일자_일" />
                <asp:BoundField DataField="입금금액" HeaderText="입금금액" SortExpression="입금금액" />
                <asp:BoundField DataField="은행명" HeaderText="은행명" SortExpression="은행명" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:광운대서점ConnectionString22 %>" SelectCommand="SELECT * FROM [구매관리]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
