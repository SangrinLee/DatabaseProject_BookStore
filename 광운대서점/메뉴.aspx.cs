using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace 광운대서점
{
    public partial class 메뉴 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["name"];
            if (Label1.Text != "")
            {
                Button6.Visible = true;
                Label2.Text = "[로그인]";
            }
            else
            {
                Button6.Visible = false;
                Label2.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection();
            myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            myconnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconnection;

            cmd.CommandText = "select 도서명, 장르, 저자 from 도서 where 장르 = '소설'";
            cmd.CommandType = CommandType.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();

            dr.Close();
            myconnection.Close();
            ImageButton6.ImageUrl = "~/Image/book_1.png";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection();
            myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            myconnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconnection;

            cmd.CommandText = "select 도서명, 장르, 저자 from 도서 where 장르 = '인문'";
            cmd.CommandType = CommandType.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();

            dr.Close();
            myconnection.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection();
            myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            myconnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconnection;

            cmd.CommandText = "select 도서명, 장르, 저자 from 도서 where 장르 = '종교'";
            cmd.CommandType = CommandType.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();

            dr.Close();
            myconnection.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection();
            myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            myconnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconnection;

            cmd.CommandText = "select 도서명, 장르, 저자 from 도서 where 장르 = '스포츠'";
            cmd.CommandType = CommandType.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();

            dr.Close();
            myconnection.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection();
            myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            myconnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconnection;

            cmd.CommandText = "select 도서명, 장르, 저자 from 도서 where 장르 = '공학'";
            cmd.CommandType = CommandType.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();

            dr.Close();
            myconnection.Close();
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("메뉴.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("회원가입.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("로그인.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("비회원.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("검색.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("운영자.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("구매하기.aspx?name=" + Label1.Text);
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}