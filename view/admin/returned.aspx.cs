using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.admin
{
    public partial class returned : System.Web.UI.Page
    {
        Models.function conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.function();
            Showcars();
            hidet.Visible = false;
        }
        private void Showcars()
        {
            //string status = "booked";
            string Query = "select*from returnTBL";
            returnlist.DataSource = conn.GetData(Query);
            returnlist.DataBind();
        }

        protected void returnlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            hidet.Visible = true;
            retid.Value = returnlist.SelectedRow.Cells[1].Text;
        }

        protected void removebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (retid.Value == "")
                {
                    errormsg.InnerText = "incomplete form";
                }
                else
                {
                    string Query2 = "delete from returnTBL where returnID='{0}'";
                    Query2 = string.Format(Query2, returnlist.SelectedRow.Cells[1].Text);
                    conn.SetData(Query2);
                    Showcars();
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;
            }
        }
    }
}