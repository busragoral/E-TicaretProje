using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretProje
{
	public partial class detay : System.Web.UI.Page
	{
		SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string id = Request.QueryString["id"];



				conn.Open();

				SqlCommand cmd = new SqlCommand("select * from urunler WHERE ID=@ID", conn);
				cmd.Parameters.AddWithValue("@ID", id);
				SqlDataReader rdr = cmd.ExecuteReader();
				if (rdr.Read())
				{
					Label1.Text = rdr[1].ToString();
					Label2.Text = rdr[2].ToString();


				}

				rdr.Close();
				conn.Close();

			}
		}
	}
	}