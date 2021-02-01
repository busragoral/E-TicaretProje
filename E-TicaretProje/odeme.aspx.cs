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
	public partial class odeme : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{

				SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
				conn.Open();

				SqlCommand cmd = new SqlCommand("select * from sepet where uyeid="+ Session["ID"].ToString()+" and statu=0", conn);
				SqlDataAdapter adap = new SqlDataAdapter(cmd);
				SqlDataReader dr = cmd.ExecuteReader();
				DataTable dt = new DataTable(); dt.Load(dr);
				Repeater1.DataSource = dt;//Veri tabanımızdan gelen kayıtları repeatera yüklüyoruz
				Repeater1.DataBind();
				
			}

			
		


		}
		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			
			SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
			conn.Open();
			SqlCommand cmd = new SqlCommand("select * from odeme", conn);
			SqlDataReader rdr = cmd.ExecuteReader();
			if (rdr.Read())
			{
				

				int stok = Int32.Parse(rdr[1].ToString());
				int yenistok=stok-1;
			
				
				rdr.Close();
				cmd.ExecuteNonQuery();
				SqlCommand cmd4 = new SqlCommand("select urunid from sepet where uyeid="+ Session["ID"].ToString() + "and statu=0", conn);
				SqlDataReader rdr4 = cmd4.ExecuteReader();
				int countrdr4 = 0;
				DataTable dt = new DataTable();
				
				dt.Load(rdr4);
				Console.Write("Itesdfdsfm: "); // Print label.


				rdr4.Close();
				cmd4.ExecuteNonQuery();


				foreach (DataRow row in dt.Rows) // Loop over the rows.
				{
					foreach (var item in row.ItemArray) // Loop over the items.
					{

						SqlCommand cmd2 = new SqlCommand("UPDATE urunler SET urunstok=urunstok-1 where ID=@urunid", conn);
						cmd2.Parameters.AddWithValue("urunid", item);
						SqlDataReader rdr5 = cmd2.ExecuteReader();
						rdr5.Close();
						cmd2.ExecuteNonQuery();

					}
					
				}

				
					

			}
			

			SqlCommand cmd3 = new SqlCommand("UPDATE sepet SET statu=1 WHERE uyeid="+ Session["ID"].ToString(), conn);
			SqlDataReader rdr3 = cmd3.ExecuteReader();
			rdr3.Close();
			cmd3.ExecuteNonQuery();
		
			conn.Close();


			Response.Redirect("~/index.aspx");
		}
		
		}
	}

	
