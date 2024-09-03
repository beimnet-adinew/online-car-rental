using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.admin
{
    public partial class admincars : System.Web.UI.Page
    {
        Models.function conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            inv.Visible = false;
            conn = new Models.function();
            Showcars();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void Showcars()
        {
            string Query = "select*from Cartbl";
            Carlist.DataSource = conn.GetData(Query);
            Carlist.DataBind();
        }
        protected void Carlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            inv.Visible = true;
            platetb.Value = Carlist.SelectedRow.Cells[1].Text;
            brandtb.Value = Carlist.SelectedRow.Cells[2].Text;
            modtb.Value = Carlist.SelectedRow.Cells[3].Text;
            pricetb.Value = Carlist.SelectedRow.Cells[4].Text;
            colortb.Value = Carlist.SelectedRow.Cells[5].Text;
            avtb.Value = Carlist.SelectedRow.Cells[6].Text;


        }
    }
}