using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.admin
{
    public partial class cars : System.Web.UI.Page
    {
        Models.function conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn =new  Models.function();
            ShowCars();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
           
        }
        private void ShowCars()
        {
            string Query = "select*from Cartbl";
            carlist.DataSource = conn.GetData(Query);
            carlist.DataBind();
        }

        protected void savebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(lnumtb.Text=="" || brandtb.Text == ""|| modtb.Text == ""|| pricetb.Text == ""|| colortb.Text == "")
                {
                    errormsg.InnerText="Fill the form correctly";
                }
                else
                {
                    string platenum = lnumtb.Text;
                    string brand = brandtb.Text;
                    string model = modtb.Text;
                    int price = Convert.ToInt32(pricetb.Text.ToString());
                    string color = colortb.Text;
                    string availablity = availablitycb.SelectedValue;
                    string Query = "insert into Cartbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = String.Format(Query,platenum, brand, model, price, color, availablity);
                    conn.SetData(Query);
                    errormsg.InnerText = "car added";
                }
            }
            catch(Exception Ex)
            {
                errormsg.InnerText = Ex.Message;
                
            }
        }
        string key = "";
        protected void carlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            lnumtb.Text = carlist.SelectedRow.Cells[1].Text;
            brandtb.Text = carlist.SelectedRow.Cells[2].Text;
            modtb.Text = carlist.SelectedRow.Cells[3].Text;
            pricetb.Text = carlist.SelectedRow.Cells[4].Text;
            colortb.Text = carlist.SelectedRow.Cells[5].Text;
            availablitycb.SelectedValue = carlist.SelectedRow.Cells[6].Text;


            

        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (lnumtb.Text == "")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }
                else
                {
                    string platenum = lnumtb.Text.ToString();
                    
                    string Query = "delete from Cartbl where platenum='{0}'";
                    Query = String.Format(Query, platenum);
                    conn.SetData(Query);
                    ShowCars();
                    errormsg.InnerText = "car removed succesfully";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }

        protected void editbtn_Click(object sender, EventArgs e)
        {

            try
            {
                if (lnumtb.Text == "" || brandtb.Text == "" || modtb.Text == "" || pricetb.Text == "" || colortb.Text == "")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }
                
                else
                {
                    string platenum = lnumtb.Text.ToString();
                    string brand = brandtb.Text;
                    string model = modtb.Text;
                    int price = Convert.ToInt32(pricetb.Text.ToString());
                    string color = colortb.Text;
                    string availablity = availablitycb.SelectedValue;
                    string Query = "update Cartbl set brand='{0}', model='{1}', price='{2}', color='{3}', availablity='{4}',platenum='{5}' where platenum='{5}'";
         
                    Query = String.Format(Query,brand,model,price,color,availablity,platenum);
                    conn.SetData(Query);
                    ShowCars();
                    errormsg.InnerText = "edited succesfully";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }
    }
}