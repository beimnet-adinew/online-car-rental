using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.admin
{
    public partial class customers : System.Web.UI.Page
    {
        Models.function conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            inv.Visible = false;
            conn = new Models.function();
            ShowCustomers();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowCustomers()
        {
            string Query = "select*from registered";
            customerlist.DataSource = conn.GetData(Query);
            customerlist.DataBind();
        }

        protected void savebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (first.Value == "" || last.Value == "" || mail.Value == "" || phone.Value == "" || subcit.Value==""||street.Value=="")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }
                else
                {
                    string fn = first.Value;
                    string ln = last.Value;
                    string em = mail.Value;
                    string num = phone.Value;
                    string subc = subcit.Value;
                    string road = street.Value;

                    string Query = "insert into registered values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query,fn,ln,em,num,subc,road);
                    conn.SetData(Query);
                    ShowCustomers();
                    errormsg.InnerText = "customer added";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }
        //int key = 0;
        protected void customerlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            inv.Visible = true;
            first.Value = customerlist.SelectedRow.Cells[2].Text;
            last.Value = customerlist.SelectedRow.Cells[3].Text;
            mail.Value= customerlist.SelectedRow.Cells[4].Text;
            phone.Value = customerlist.SelectedRow.Cells[5].Text;
            subcit.Value = customerlist.SelectedRow.Cells[6].Text;
            street.Value = customerlist.SelectedRow.Cells[7].Text;
 
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (first.Value == "")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }
                else
                {
                    

                    string Query = "delete from registered where IDPASS='{0}'";
                    Query = string.Format(Query, Convert.ToInt32( customerlist.SelectedRow.Cells[1].Text));
                    conn.SetData(Query);
                    ShowCustomers();
                    errormsg.InnerText = "customer removed succesfully";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = "sorry the customer have some unfineshed business with the company!";

            }
        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (first.Value == "" || last.Value == "" || mail.Value == "" || phone.Value == "" || subcit.Value == "" || street.Value == "")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }

                else
                {
                    int id = Convert.ToInt32(customerlist.SelectedRow.Cells[1].Text);
                    string fir = first.Value;
                    string las = last.Value;
                    string ema = mail.Value;
                    string numb = phone.Value;
                    string subci = subcit.Value;
                    string roado = street.Value;

                    string Query = "UPDATE registered SET fname='" + fir + "',lname='" + las + "',email='" + ema + "',phone='" + numb + "',subcity='" + subci + "',street='" + roado + "' where IDPASS='" + id + "'";
                    //string Query = "update registered set fir = '{0}', las = '{1}', ema = '{2}', numb = '{3}', subci = '{4}', roado = '{5}' where IDPASS={6}";
                    //Query = string.Format(Query, fir, las, ema, numb, subci, roado, Convert.ToInt32(customerlist.SelectedRow.Cells[1].Text));
                    conn.SetData(Query);
                    ShowCustomers();
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