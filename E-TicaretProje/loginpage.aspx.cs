using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretProje
{
	public partial class loginsayfasıaspx : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			SqlConnection baglanti = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");


			SqlCommand sorgu = new SqlCommand("select * from TableKullanici WHERE Kullanici=@Kullanici AND Sifre=@Sifre", baglanti); //reader
			sorgu.Parameters.Add("@Kullanici", SqlDbType.VarChar).Value = Kullanici.Text;
			sorgu.Parameters.Add("@Sifre", SqlDbType.VarChar).Value= Sifre.Text;
			baglanti.Open();
			SqlDataReader oku = sorgu.ExecuteReader();

			if (oku.Read())
			{
				Session.Add("Kullanici", Kullanici);
				Session.Add("ID", oku["ID"].ToString());
				Response.Redirect("~/index.aspx?ID"+ ID );
			}
			else
			{
				Response.Write("<script>alert('Hatalı Giriş Yaptınız.Tekrar Deneyin...')</script>");


			}
		}
	}
}