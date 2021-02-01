using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretProje
{
	public partial class admin : System.Web.UI.Page
	{
		SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=ETicaretDB; Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}