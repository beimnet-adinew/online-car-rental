using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.admin
{
    public partial class requests : System.Web.UI.Page
    {
        Models.function conn;
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void Showcars()
        {
            
            string Query = "select*from requestTBL";
            requestlist.DataSource = conn.GetData(Query);
            requestlist.DataBind();
        }
        

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.function();
            Showcars();
            
            inv.Visible = false;
            
            custname.InnerText = login.CName;
            int customere = login.customerid;
        }

        protected void requestlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            inv.Visible = true;
            carid.Value = requestlist.SelectedRow.Cells[2].Text;
            customid.Value = requestlist.SelectedRow.Cells[3].Text;
            rentd.Value = requestlist.SelectedRow.Cells[4].Text;
            retd.Value = requestlist.SelectedRow.Cells[5].Text;
            feeb.Value = requestlist.SelectedRow.Cells[6].Text;
            
        }
        private void Updatcars()
        {
            try
            {
                string stat = "booked";
                string Query = "update Cartbl set availablity='{0}' where platenum={1}";
                Query = string.Format(Query, stat, requestlist.SelectedRow.Cells[2].Text);
                conn.SetData(Query);
                Showcars();


            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }

        protected void approvebtn_Click(object sender, EventArgs e)
        {
            string cid = carid.Value;
            string cuid = customid.Value;
            string renday = rentd.Value;
            string retday = retd.Value;
            string ffee = feeb.Value.ToString();

            try
            {
                if (carid.Value == "")
                {

                    errormsg.InnerText = "missing info";
                }
                else
                {
                    //inserting into rented table
                    string Query = "insert into rentTBL values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, cid, cuid, renday, retday, ffee);
                    conn.SetData(Query);     
                    Showcars();
                    Updatcars();
                    errormsg.InnerText = "requested";
                    //showing approved message to user
                    if (login.customerid == Convert.ToInt32(requestlist.SelectedRow.Cells[3].Text))
                    {
                        customer.pending.disapprove = "your request for '" + requestlist.SelectedRow.Cells[2].Text + "' is approved";
                    }
                    
                    //removing the data from the requesttbl
                    string Query2 = "delete from requestTBL where rentid='{0}'";
                    Query2 = string.Format(Query2, Convert.ToInt32(requestlist.SelectedRow.Cells[1].Text));
                    conn.SetData(Query2);
                    

                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;
            }
            

        }

        protected void disappbtn_Click(object sender, EventArgs e)
        {
          
            try
            {
                if (carid.Value == "")
                {
                    errormsg.InnerText = "incomplete form";
                }
                else
                {

                    customer.pending.disapprove = "your request for '" + requestlist.SelectedRow.Cells[2].Text + "' is not approved";
                    string Query = "delete from requestTBL where rentid='{0}'";
                    Query = string.Format(Query, Convert.ToInt32(requestlist.SelectedRow.Cells[1].Text));
                    conn.SetData(Query);
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