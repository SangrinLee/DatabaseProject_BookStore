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
    public partial class 운영자_구매관리 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("운영자.aspx?name=" + "운영자 접속");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";
            myConnection.Open();

            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = myConnection;

            if (TextBox12.Text == "")
                myCommand.CommandText = "select sum(입금금액) from 구매관리 where 입금일자_년 = " + this.TextBox10.Text + " AND 입금일자_월 = " + this.TextBox11.Text + ";";
            else
                myCommand.CommandText = "select sum(입금금액) from 구매관리 where 입금일자_년 = " + this.TextBox10.Text + " AND 입금일자_월 = " + this.TextBox11.Text + " AND 입금일자_일 = " + this.TextBox12.Text + ";";

            string temp = myCommand.ExecuteScalar().ToString();
            Label1.Text = temp;

            //myCommand.ExecuteReader();
            //GridView1.DataBind();

            myConnection.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}