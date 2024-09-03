using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_car_rental.view.customer
{   
    public partial class Registors : System.Web.UI.Page
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
                if (fname.Value == "" || lname.Value == "" || mail.Value == "" || phone.Value == "" || subcit.SelectedValue == "" || street.Value == "")
                {
                    errormsg.InnerText = "Fill the form correctly";
                }
                else
                {
                    string firstname = fname.Value;
                    string lastname = lname.Value;
                    string email = mail.Value;
                    string number = phone.Value;
                    string city = subcit.SelectedValue;
                    string sefer = street.Value;

                    string Query = "insert into registered values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, firstname, lastname, email, number, city, sefer);
                    conn.SetData(Query);
                    errormsg.InnerText = "registered sucessfully";
                }
            }
            catch (Exception Ex)
            {
                errormsg.InnerText = Ex.Message;

            }
        }
    }
}