using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

namespace 광운대서점
{
    public partial class 운영자 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["name"] == "운영자 접속")
            {
                Label1.Text = "운영자로 접속되셨습니다!!";
                Button2.Visible = true;
                Button3.Visible = true;
                Button4.Visible = true;
            }
            else
            {
                Label1.Text = " ";
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "운영자" && TextBox2.Text == "dnsdudwk")
            {
                Label1.Text = "운영자로 접속되셨습니다!!";
                Button2.Visible = true;
                Button3.Visible = true;
                Button4.Visible = true;
            }
            else
            {
                MessageBox.Show("운영자 페이지 접속 오류!!");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("운영자-도서관리.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("운영자-회원관리.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("운영자-구매관리.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("메뉴.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}