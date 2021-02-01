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
	public partial class arama : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				if (string.IsNullOrEmpty(Request.QueryString["q"]))
				{
					Repeater1.Dispose();
					Repeater1.DataBind();
				}
				else
				{

					string Kelime = Request.QueryString["q"].ToString();
					SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
					conn.Open();
					SqlDataAdapter da = new SqlDataAdapter("Select * from urunler where urunadi like '%" + Kelime + "%'", conn);
					DataTable dt = new DataTable();
					da.Fill(dt);
					Repeater1.DataSource = dt;
					Repeater1.DataBind();
				}

			}
		}
	}
}