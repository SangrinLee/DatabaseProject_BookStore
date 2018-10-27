<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="운영자-회원관리.aspx.cs" Inherits="광운대서점.운영자_회원관리" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 461px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button4" runat="server" Text="뒤로!!" OnClick="Button4_Click" />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="주민등록번호" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="회원아이디" HeaderText="회원아이디" SortExpression="회원아이디" />
                <asp:BoundField DataField="이름" HeaderText="이름" SortExpression="이름" />
                <asp:BoundField DataField="비밀번호" HeaderText="비밀번호" SortExpression="비밀번호" />
                <asp:BoundField DataField="주민등록번호" HeaderText="주민등록번호" ReadOnly="True" SortExpression="주민등록번호" />
                <asp:BoundField DataField="휴대폰번호" HeaderText="휴대폰번호" SortExpression="휴대폰번호" />
                <asp:BoundField DataField="이메일" HeaderText="이메일" SortExpression="이메일" />
                <asp:BoundField DataField="주소" HeaderText="주소" SortExpression="주소" />
                <asp:BoundField DataField="마일리지" HeaderText="마일리지" SortExpression="마일리지" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:광운대서점ConnectionString19 %>" SelectCommand="SELECT * FROM [멤버]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
