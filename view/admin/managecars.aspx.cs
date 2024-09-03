using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.admin
{
    public partial class managecars : System.Web.UI.Page
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
        }
        private void Showcars()
        {
            string Query = "select*from Cartbl";
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
            availablitycb.Value= carlist.SelectedRow.Cells[6].Text;


        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if ( brand.Value == "" || model.Value == "" || price.Value == "" || color.Value == "")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }

                else
                {
                    string pl = plate.Value;
                    string br = brand.Value;
                    string mo = model.Value;
                    int pr = Convert.ToInt32(price.Value);
                    string col = color.Value;
                    string av = availablitycb.Value;
                    string Query = "UPDATE Cartbl SET brand='"+br+ "',model='" + mo + "',price='" + pr + "',color='" + col + "',availablity='" + av + "' where platenum='" + pl + "'";

                    //Query = string.Format(Query, br, mo, pr, col, av, carlist.SelectedRow.Cells[1].Text.ToString());

                    conn.SetData(Query);
                    Showcars();
                    errormsg.InnerText = "edited succesfully";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (plate.Value == "")
                {
                    errormsg.InnerText = "incomplete form";
                }
                else
                {
                    string Query = "delete from Cartbl where platenum='{0}'";
                    Query = string.Format(Query, carlist.SelectedRow.Cells[1].Text);
                    conn.SetData(Query);
                    Showcars();
                    errormsg.InnerText = "car removed succesfully";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (plate.Value == "" || brand.Value == "" || model.Value == "" || price.Value == "" || color.Value == "")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }
                else
                {
                    string pnum = plate.Value;
                    string bran = brand.Value;
                    string mod = model.Value;
                    int pri = Convert.ToInt32(price.Value);
                    string col = color.Value;
                    string av = availablitycb.Value;

                    string Query = "insert into Cartbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, pnum, bran, mod, pri, col, av);
                    conn.SetData(Query);

                    errormsg.InnerText = "car added";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }
    }
}