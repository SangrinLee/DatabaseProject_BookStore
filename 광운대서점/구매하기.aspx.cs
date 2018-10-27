using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Text;

namespace 광운대서점
{
    public partial class 구매하기 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["name"];
        }

        public int mileage = 0;

        protected void Button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("결제 되었습니다.");

            SqlConnection myconnection = new SqlConnection();
            myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            SqlConnection myconnection2 = new SqlConnection();
            myconnection2.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            SqlConnection myconnection3 = new SqlConnection();
            myconnection3.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            SqlConnection myconnection4 = new SqlConnection();
            myconnection4.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            SqlConnection myconnection5 = new SqlConnection();
            myconnection5.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

            myconnection.Open();
            myconnection2.Open();
            myconnection3.Open();
            myconnection4.Open();
            myconnection5.Open();

            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();
            SqlCommand cmd3 = new SqlCommand();
            SqlCommand cmd4 = new SqlCommand();
            SqlCommand cmd5 = new SqlCommand();

            cmd.Connection = myconnection;
            cmd2.Connection = myconnection2;
            cmd3.Connection = myconnection3;
            cmd4.Connection = myconnection4;
            cmd5.Connection = myconnection4;

            cmd.CommandText = "Insert into 구매관리(도서번호,회원아이디,입금일자_년,입금일자_월,입금일자_일,입금금액,은행명) Values('"
                + this.TextBox1.Text + "','" + this.Label1.Text + "','" + this.TextBox3.Text.Substring(0, this.TextBox3.Text.Length - 4) + "','" + this.TextBox3.Text.Substring(4, this.TextBox3.Text.Length - 6) + "','" + this.TextBox3.Text.Substring(6, this.TextBox3.Text.Length - 6) + "','"
                + this.TextBox4.Text + "','" + this.TextBox5.Text + "');";
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            cmd4.CommandText = "select 가격 from 도서 where 도서번호= '" + this.TextBox1.Text + "'";
            cmd4.CommandType = CommandType.Text;
            double num = Convert.ToInt32(cmd4.ExecuteScalar().ToString()) * 0.05 - Convert.ToDouble(Label2.Text); //- mileage;  //마일리지

            cmd2.CommandText = "update 도서 set 재고=재고-1 where 도서번호='" + this.TextBox1.Text + "'";
            cmd2.CommandType = CommandType.Text;
            cmd2.ExecuteNonQuery();

            if (Label1.Text.Substring(0, 3) != "비회원")
            {
                cmd3.CommandText = "update 멤버 set 마일리지=마일리지 + " + Convert.ToString(num) + " where 회원아이디='" + this.Label1.Text + "'";
                cmd3.CommandType = CommandType.Text;
                cmd3.ExecuteNonQuery();
            }

            myconnection.Close();
            myconnection2.Close();
            myconnection3.Close();
            myconnection4.Close();
            myconnection5.Close();
            Response.Redirect("메뉴.aspx?name=" + Label1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection();
            myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";
            myconnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconnection;

            cmd.CommandText = "select 가격 from 도서 where 도서번호= '" + this.TextBox1.Text + "'";
            cmd.CommandType = CommandType.Text;
            int num = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            TextBox4.Text = Convert.ToString(num);
            myconnection.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection();
            myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";
            myconnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconnection;

            cmd.CommandText = "select 마일리지 from 멤버 where 회원아이디 ='" + this.Label1.Text + "'";
            cmd.CommandType = CommandType.Text;
            int num = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (Convert.ToInt32(TextBox6.Text) > num)
            {
                MessageBox.Show("마일리지 초과!");
                TextBox6.Text = "";
                TextBox6.Focus();
                return;
            }
            else
            {
                MessageBox.Show("마일리지 사용 가능합니다");
                Label2.Text = TextBox6.Text;
            }
        }
    }
}