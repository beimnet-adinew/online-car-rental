using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.admin
{
    public partial class regcarRequests : System.Web.UI.Page
    {
        Models.function conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.function();
            Showregreq();
            invreq.Visible = false;
        }
        public void Showregreq()
        {
            string Query = "select*from carregreqTBL";
            carreqlist.DataSource = conn.GetData(Query);
            carreqlist.DataBind();
        }

        protected void carreqlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            invreq.Visible = true;
            platereq.Value = carreqlist.SelectedRow.Cells[1].Text;
            brandreq.Value = carreqlist.SelectedRow.Cells[2].Text;
            modreq.Value = carreqlist.SelectedRow.Cells[3].Text;
            prireq.Value = carreqlist.SelectedRow.Cells[4].Text;
            colreq.Value = carreqlist.SelectedRow.Cells[5].Text;
            availreq.Value = carreqlist.SelectedRow.Cells[6].Text;
        }

        protected void acceptbtn_Click(object sender, EventArgs e)
        {
            string plate2 = platereq.Value;
            string brand2 = brandreq.Value;
            string model2 = modreq.Value;
            int price2 = Convert.ToInt32(prireq.Value);
            string color2 = colreq.Value;
            string available2 = availreq.Value;
            try
            {
                if (platereq.Value == "")
                {

                    errormsg.InnerText = "missing info";
                }
                else
                {
                    //inserting into rented table
                    string Query = "insert into Cartbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, plate2, brand2, model2, price2, color2, available2);
                    conn.SetData(Query);
                    Showregreq();
                    errormsg.InnerText = "requested";
                    //showing approved message to user

                    customer.pending.disapprove = "your request to register'" + carreqlist.SelectedRow.Cells[1].Text + "' is accepted";


                    //removing the data from the requesttbl
                    string Query2 = "delete from carregreqTBL where platenum='{0}'";
                    Query2 = string.Format(Query2, carreqlist.SelectedRow.Cells[1].Text);
                    conn.SetData(Query2);


                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;
            }
        }

        protected void rejectbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (platereq.Value == "")
                {
                    errormsg.InnerText = "incomplete form";
                }
                else
                {

                    customer.pending.disapprove = "your request to register '" + carreqlist.SelectedRow.Cells[1].Text + "' is regected";
                    string Query = "delete from carregreqTBL where platenum='{0}'";
                    Query = string.Format(Query, carreqlist.SelectedRow.Cells[1].Text);
                    conn.SetData(Query);
                    Showregreq();

                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }
    }
}