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
    public partial class 운영자_도서관리 : System.Web.UI.Page
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

            myCommand.CommandText = "Insert into 도서(도서번호, 도서명, 장르, 저자, 가격, 재고) Values('"
                + this.TextBox3.Text + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.TextBox6.Text + "','" + this.TextBox7.Text + "','" + this.TextBox8.Text + "')";

            myCommand.ExecuteReader();
            GridView1.DataBind();

            myConnection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";
            myConnection.Open();

            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = myConnection;

            myCommand.CommandText = "Delete from 도서 where 도서번호 = " + this.TextBox9.Text + ";";

            myCommand.ExecuteReader();
            GridView1.DataBind();

            myConnection.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("운영자.aspx?name=" + "운영자 접속");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}