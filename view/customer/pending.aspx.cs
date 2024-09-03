using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.customer
{
    public partial class pending : System.Web.UI.Page
    {
        Models.function conn;
        public static string disapprove = "";
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void Showcars()
        {
            
            string Query = "select*from requestTBL where customerid='" + login.customerid + "'";
            carlist.DataSource = conn.GetData(Query);
            carlist.DataBind();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.function();
            Showcars();
            approvedisapprove.InnerText = disapprove;
        }
    }
}