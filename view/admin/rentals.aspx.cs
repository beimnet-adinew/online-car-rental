using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.admin
{
    public partial class rentals : System.Web.UI.Page
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
            string Query = "select*from rentTBL";
            rentlist.DataSource = conn.GetData(Query);
            rentlist.DataBind();
        }

        protected void rentlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            hidet.Visible = true;
            rentid.Value = rentlist.SelectedRow.Cells[1].Text;
        }

        protected void returnedbtn_Click(object sender, EventArgs e)
        {
            TimeSpan dlayed = DateTime.Today - Convert.ToDateTime(rentlist.SelectedRow.Cells[5].Text);
            int delayd = dlayed.Days;
            int feed = Convert.ToInt32(rentlist.SelectedRow.Cells[6].Text);
            int kitat = delayd * feed;

            string care = rentlist.SelectedRow.Cells[2].Text;
            int cuse = Convert.ToInt32( rentlist.SelectedRow.Cells[3].Text);
            string returnday = rentlist.SelectedRow.Cells[5].Text;
            int dalay = delayd;
            int fined = kitat;
            


            try
            {
                if (rentid.Value == "")
                {
                    errormsg.InnerText = "incomplete form";
                }
                else
                {
                    string Query = "insert into returnTBL values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, care, cuse, returnday, dalay, fined);
                    conn.SetData(Query);
                    Showcars();
                    

                    string Query2 = "delete from rentTBL where rentID='{0}'";
                    Query2 = string.Format(Query2, rentlist.SelectedRow.Cells[1].Text);
                    conn.SetData(Query2);
                    Showcars();
                    errormsg.InnerText = "accepted";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }
    }
}