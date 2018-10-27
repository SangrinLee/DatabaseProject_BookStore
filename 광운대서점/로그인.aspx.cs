using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace 광운대서점
{
    public partial class 로그인 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";
            myConnection.Open();

            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = myConnection;

            myCommand.CommandText = "Select 회원아이디 from 멤버 where 회원아이디 = @Id and 비밀번호 = @Password";

            // ID, PASSWARD 해당 입력 매개 변수 지정
            myCommand.Parameters.Add("@Id", SqlDbType.VarChar, 10);
            myCommand.Parameters.Add("@Password", SqlDbType.VarChar, 10);
            myCommand.Parameters["@Id"].Value = TextBox1.Text;
            myCommand.Parameters["@Password"].Value = TextBox2.Text;

            if (myCommand.ExecuteScalar() != null)
            {
                Response.Redirect("메뉴.aspx?name=" + TextBox1.Text);
            }
            else
            {
                MessageBox.Show("로그인 실패");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox1.Focus();
            }

            myConnection.Close();
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}