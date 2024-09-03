using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.customer
{
    public partial class cars : System.Web.UI.Page
    {
        Models.function conn;
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

       
        protected void Page_Load(object sender, EventArgs e)
        {
            inv.Visible = false;
            conn = new Models.function();
            Showcars();
            custname.InnerText = login.CName;
           int customer = login.customerid;



        }
        private void Showcars()
        {
            string status = "available";
            string Query = "select*from Cartbl where availablity='"+status+"'";
            carlist.DataSource = conn.GetData(Query);
            carlist.DataBind();
        }
       

        
        protected void carlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            inv.Visible = true;
            plate.Value = carlist.SelectedRow.Cells[1].Text;
            brand.Value = carlist.SelectedRow.Cells[2].Text;
            model.Value = carlist.SelectedRow.Cells[3].Text;
            price.Value = carlist.SelectedRow.Cells[4].Text;
            color.Value = carlist.SelectedRow.Cells[5].Text;

        } 
        

        protected void Rentbtn_Click1(object sender, EventArgs e)
        {
            string pnumber = carlist.SelectedRow.Cells[1].Text;
            string rendate = from.Value;
            string retdate = to.Value;
            int customer = login.customerid;

            TimeSpan daynumber = Convert.ToDateTime(to.Value) - Convert.ToDateTime(from.Value);
            int dayn = daynumber.Days;
            int dprice = Convert.ToInt32(carlist.SelectedRow.Cells[4].Text);
            int fees = dayn * dprice;

            try
            {
                if (pnumber == "")
                {

                    errormsg.InnerText = "missing info";
                }
                else
                {
                    string Query = "insert into requestTBL values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, pnumber, customer, rendate, retdate, fees);
                    conn.SetData(Query);
                    
                    Showcars();
                    errormsg.InnerText = "requested";
                    pending.disapprove = "";

                }
                

            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;
            }
        }
    }
}