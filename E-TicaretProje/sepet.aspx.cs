using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretProje
{
	public partial class sepet : System.Web.UI.Page
	{
		SqlConnection bag = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True; MultipleActiveResultSets=True");


		protected void Page_Load(object sender, EventArgs e)
		{

			if (!IsPostBack)
			{


				if (string.IsNullOrEmpty(Request.QueryString["ID"]))
				{
					bag.Open();

					SqlCommand komut1 = new SqlCommand("select * from sepet where uyeid=@uyeid and statu=0", bag);
					komut1.Parameters.AddWithValue("@uyeid", Session["ID"].ToString());

					SqlDataReader dr = komut1.ExecuteReader();
					while (dr.Read())
					{
						Repeater1.DataSource = dr;

					}

					Repeater1.DataBind();
					dr.Close();
					bag.Close();


				}


				if (Session["Kullanici"] == null)
				{
					sonuc.InnerHtml = "Kullanıcı girisi yok";
					sonuc2.InnerHtml = "girişe yönlendiriyorsunuz";
					sonuc2.InnerHtml += "<meta http-equiv='refresh' content='3;url=loginpage.aspx'>";
				}
				else
				{
					string urunid = Request.QueryString["ID"];
					SqlConnection bag = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True; MultipleActiveResultSets=True");
					bag.Open();

					SqlCommand komut = new SqlCommand("select * from sepet where uyeid=@uyeid and statu = 0", bag);
					komut.Parameters.AddWithValue("@uyeid", Session["ID"].ToString());

					SqlDataReader oku = komut.ExecuteReader();

					if (oku.Read())
					{
						var id2 = Session["ID"].ToString();
						SqlDataAdapter adap = new SqlDataAdapter("select * from sepet inner join urunler ON sepet.urunid = urunler.ID WHERE uyeid=" + id2 + "and statu=0", bag);
						DataTable dt = new DataTable();

						adap.Fill(dt);
						Repeater1.DataSource = dt;
						Repeater1.DataBind();

						bag.Close();

					}
					else
					{



					}



				}

			}


		}

		protected void odeme_Click(object source, RepeaterCommandEventArgs e)
		{
			{
				if (e.CommandName == "ID")
				{

					Response.Redirect("odeme.aspx?ID");

				}
			}

		}
	

		protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)


		{

			if (e.CommandName == "sil")
			{
				var id = e.CommandArgument;
				SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
				bag.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM sepet WHERE ID=" + id, bag);

				cmd.ExecuteNonQuery();
				conn.Close();
				Response.Redirect("~/sepet.aspx");
			}

			if (e.CommandName == "odeme")
			{
				var id = e.CommandArgument;
				Response.Redirect("odeme.aspx?ID=" + id);
			}

		}
	}
}
	


	
