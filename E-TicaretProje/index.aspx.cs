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
	public partial class index : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
			conn.Open();

			SqlCommand cmd = new SqlCommand("select * from urunler", conn);
			SqlDataAdapter adap = new SqlDataAdapter(cmd);
			SqlDataReader dr = cmd.ExecuteReader();
			DataTable dt = new DataTable(); dt.Load(dr);
			Repeater1.DataSource = dt;//Veri tabanımızdan gelen kayıtları repeatera yüklüyoruz
			Repeater1.DataBind();
		}

		protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
		{

		}
		protected void LinkButton1_Click(object source, RepeaterCommandEventArgs e)
		{
			
				
			


		}


		protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
		{
			if (e.CommandName == "sepet")
			{
				var id = e.CommandArgument;
				SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
				conn.Open();
				SqlCommand komut2 = new SqlCommand("insert into sepet (uyeid,urunid,statu,fiyat) values(@uyeid2,@urunid2,0,6500)", conn);
				komut2.Parameters.AddWithValue("@uyeid2", Session["ID"].ToString());
				komut2.Parameters.AddWithValue("@urunid2",id);
				komut2.ExecuteNonQuery();
			
			
				
			}
			if (e.CommandName == "detay")
			{
				var id = e.CommandArgument;
				Response.Redirect("detay.aspx?ID=" + id);
			}

		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			Response.Redirect("arama.aspx?q=" + txtKelime.Text.Trim());
		}





		}
	}

	

