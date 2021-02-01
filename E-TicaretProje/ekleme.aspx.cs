using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretProje
{
	public partial class ekleme : System.Web.UI.Page
	{
		SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
			SqlCommand cmd = new SqlCommand("select * from urunler", conn);
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{

			SqlCommand cmd = new SqlCommand("INSERT INTO urunler(urunadi,urundetay,urunstok,urunfiyat) VALUES(' " + TextBox1.Text + " ','" + TextBox2.Text + " ',' " + TextBox3.Text + " ',' " + TextBox4.Text + "' )", conn);
			conn.Open();
			cmd.ExecuteNonQuery();
			conn.Close();
			Response.Redirect("~/admin.aspx");

		}
	}
}