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
    public partial class 회원가입 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";
            myConnection.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myConnection;
            cmd.CommandText = "Insert into 멤버(회원아이디, 이름, 비밀번호, 주민등록번호, 휴대폰번호, 이메일, 주소, 마일리지) values('"
                + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','"
                + this.TextBox6.Text + "','" + this.TextBox7.Text + "', 0)";

            cmd.ExecuteNonQuery();
            myConnection.Close();

            MessageBox.Show("회원가입이 되었습니다.");
            Response.Redirect("메뉴.aspx");
        }
    }
}