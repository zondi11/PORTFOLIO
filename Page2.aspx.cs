using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZON_220065605
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToShortDateString();
        }

        protected void btnConfirmSale_Click(object sender, EventArgs e)
        {
            //SqlDataSource3.InsertParameters["TV_ID"].DefaultValue = GridView1.Rows[].Cells[4];
            //SqlDataSource3.InsertParameters["Price"].DefaultValue = GridView1.Rows[].Cells[3];
            SqlDataSource3.Insert();
            LblSaleStatus.Text = "Sale has been recorded";
            Response.Redirect("~/Page3");
        }
    }
}