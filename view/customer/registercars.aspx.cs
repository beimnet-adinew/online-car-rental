using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.customer
{
    public partial class registercars : System.Web.UI.Page
    {
        Models.function conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.function();
        }

        protected void Regbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (pnum.Value == "" || brand.Value == "" || model.Value == "" || price.Value == "" || color.Value == "")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }
                else
                {
                    string plate = pnum.Value;
                    string bran = brand.Value;
                    string mod = model.Value;
                    int pri = Convert.ToInt32(price.Value);          
                    string col = color.Value;
                    string av = availablitycb.SelectedValue;

                    string Query = "insert into carregreqTBL values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, plate, bran, mod, pri,col,av);
                    conn.SetData(Query);
                    
                    errormsg.InnerText = "car requested";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }
    }
}