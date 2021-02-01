using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace E_TicaretProje
{
	public partial class kaydol : System.Web.UI.Page
	{
		SqlConnection db = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");

		protected void Page_Load(object sender, EventArgs e)
		{
			

			
			SqlConnection db = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");


			SqlCommand cmd = new SqlCommand("select * from TableKullanici", db);
		}

		protected void Buton_Kaydol_Click(object sender, EventArgs e)
		{
			if (Email.Text == "" || Sifre.Text == "" || Kullanici.Text == "")
			{

				Response.Write("<script>alert('Lütfen Değer Giriniz..')</script>");


				return;
			}
			else
			{

             db.Open();
			
			SqlCommand cmd = new SqlCommand(@"insert into TableKullanici (Adi,Soyadi,Email,Kullanici,Sifre) values(@Adi,
        @Soyadi,@Email,@Kullanici,@Sifre)", db);
			cmd.Parameters.AddWithValue("Adi", Adi.Text);
			cmd.Parameters.AddWithValue("Soyadi", Soyadi.Text);
			cmd.Parameters.AddWithValue("Email", Email.Text);
			cmd.Parameters.AddWithValue("Kullanici", Kullanici.Text);
			cmd.Parameters.AddWithValue("Sifre", Sifre.Text);
			cmd.ExecuteNonQuery();
			
			db.Close();
			Response.Redirect("~/loginpage.aspx");
			}

				
		}
	}
}