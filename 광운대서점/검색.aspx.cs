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
    public partial class 검색 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")// && TextBox2.Text == "" && TextBox3.Text == "" && CheckBox1.Checked == false && CheckBox2.Checked == false && CheckBox3.Checked == false && CheckBox4.Checked == false && CheckBox5.Checked == false)
            {
                SqlConnection myconnection = new SqlConnection();
                myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

                myconnection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = myconnection;
                cmd.CommandText = "select 도서명 from 도서";


                cmd.CommandType = CommandType.Text;
                //				cmd.ExecuteNonQuery();

                SqlDataReader d = cmd.ExecuteReader();
                while (d.Read())
                {
                   // if (d.GetString(0) != null)
                   // {
                        //Label1.Text = d.GetString(0);
                        if(d.GetString(0).Trim() == TextBox1.Text)
                            MessageBox.Show("!!!");
                     //   return;
                    //}
                }
                MessageBox.Show("END");

                try
                {

                    SqlDataReader dr = cmd.ExecuteReader();
                    this.GridView1.DataSource = dr;
                    this.GridView1.DataBind();
                    
                    dr.Close();
                    myconnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            else if (TextBox2.Text != "")
            {
                SqlConnection myconnection = new SqlConnection();
                myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

                myconnection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = myconnection;
                cmd.CommandText = "select 도서번호,도서명,장르,저자 "
                    + "from 도서 "
                    + "where 도서명 = '" + this.TextBox2.Text + "'";

                //cmd.CommandText = "Insert into 도서(도서번호,도서명) Values('"+this.TextBox1.Text + "','" + this.TextBox2.Text + "')";

                cmd.CommandType = CommandType.Text;
                //				cmd.ExecuteNonQuery();
                try
                {

                    SqlDataReader dr = cmd.ExecuteReader();
                    this.GridView1.DataSource = dr;
                    this.GridView1.DataBind();

                    dr.Close();
                    myconnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            else if (TextBox3.Text != "")
            {
                SqlConnection myconnection = new SqlConnection();
                myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

                myconnection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = myconnection;
                cmd.CommandText = "select 도서번호,도서명,장르,저자 "
                    + "from 도서 "
                    + "where 저자 = '" + this.TextBox3.Text + "'";

                //cmd.CommandText = "Insert into 도서(도서번호,도서명) Values('"+this.TextBox1.Text + "','" + this.TextBox2.Text + "')";

                cmd.CommandType = CommandType.Text;
                //				cmd.ExecuteNonQuery();
                try
                {

                    SqlDataReader dr = cmd.ExecuteReader();
                    this.GridView1.DataSource = dr;
                    this.GridView1.DataBind();

                    dr.Close();
                    myconnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            else if (CheckBox1.Checked == true)
            {
                SqlConnection myconnection = new SqlConnection();
                myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

                myconnection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = myconnection;
                cmd.CommandText = "select 도서번호,도서명,장르,저자 "
                    + "from 도서 "
                    + "where 장르 = '소설'";

                //cmd.CommandText = "Insert into 도서(도서번호,도서명) Values('"+this.TextBox1.Text + "','" + this.TextBox2.Text + "')";

                cmd.CommandType = CommandType.Text;
                //				cmd.ExecuteNonQuery();
                try
                {

                    SqlDataReader dr = cmd.ExecuteReader();
                    this.GridView1.DataSource = dr;
                    this.GridView1.DataBind();

                    dr.Close();
                    myconnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            else if (CheckBox2.Checked == true)
            {
                SqlConnection myconnection = new SqlConnection();
                myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

                myconnection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = myconnection;
                cmd.CommandText = "select 도서번호,도서명,장르,저자 "
                    + "from 도서 "
                    + "where 장르 = '인문'";

                //cmd.CommandText = "Insert into 도서(도서번호,도서명) Values('"+this.TextBox1.Text + "','" + this.TextBox2.Text + "')";

                cmd.CommandType = CommandType.Text;
                //				cmd.ExecuteNonQuery();
                try
                {

                    SqlDataReader dr = cmd.ExecuteReader();
                    this.GridView1.DataSource = dr;
                    this.GridView1.DataBind();

                    dr.Close();
                    myconnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            else if (CheckBox3.Checked == true)
            {
                SqlConnection myconnection = new SqlConnection();
                myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

                myconnection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = myconnection;
                cmd.CommandText = "select 도서번호,도서명,장르,저자 "
                    + "from 도서 "
                    + "where 장르 = '종교'";

                //cmd.CommandText = "Insert into 도서(도서번호,도서명) Values('"+this.TextBox1.Text + "','" + this.TextBox2.Text + "')";

                cmd.CommandType = CommandType.Text;
                //				cmd.ExecuteNonQuery();
                try
                {

                    SqlDataReader dr = cmd.ExecuteReader();
                    this.GridView1.DataSource = dr;
                    this.GridView1.DataBind();

                    dr.Close();
                    myconnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            else if (CheckBox4.Checked == true)
            {
                SqlConnection myconnection = new SqlConnection();
                myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

                myconnection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = myconnection;
                cmd.CommandText = "select 도서번호,도서명,장르,저자 "
                    + "from 도서 "
                    + "where 장르 = '스포츠'";

                //cmd.CommandText = "Insert into 도서(도서번호,도서명) Values('"+this.TextBox1.Text + "','" + this.TextBox2.Text + "')";

                cmd.CommandType = CommandType.Text;
                //				cmd.ExecuteNonQuery();
                try
                {

                    SqlDataReader dr = cmd.ExecuteReader();
                    this.GridView1.DataSource = dr;
                    this.GridView1.DataBind();

                    dr.Close();
                    myconnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            else if (CheckBox5.Checked == true)
            {
                SqlConnection myconnection = new SqlConnection();
                myconnection.ConnectionString = "data source=MYCOMPUTER\\DBSERVER;" + "initial catalog=광운대서점;" + "user id=LSR;" + "password=thtlf!";

                myconnection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = myconnection;
                cmd.CommandText = "select 도서번호,도서명,장르,저자 "
                    + "from 도서 "
                    + "where 장르 = '공학'";

                //cmd.CommandText = "Insert into 도서(도서번호,도서명) Values('"+this.TextBox1.Text + "','" + this.TextBox2.Text + "')";

                cmd.CommandType = CommandType.Text;
                //				cmd.ExecuteNonQuery();
                try
                {

                    SqlDataReader dr = cmd.ExecuteReader();
                    this.GridView1.DataSource = dr;
                    this.GridView1.DataBind();

                    dr.Close();
                    myconnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("메뉴.aspx");
        }
    }
}