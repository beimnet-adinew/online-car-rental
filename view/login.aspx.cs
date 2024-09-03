using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace online_car_rental.view
{
    public partial class login : System.Web.UI.Page
    {
        Models.function conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.function();
        }

        public static string CName = "";
        public static int customerid;

        protected void loginbtn_Click(object sender, EventArgs e)
        {

            if (usertb.Value == "" || passtb.Value == "")
            {
                errormsg.InnerText = "Fill the form correctly";
            }
            else if(usertb.Value == "Admin")
            {
                string sql = "select fname,email from registered where fname = '{0}' and email = '{1}'";
                sql = string.Format(sql,usertb.Value,passtb.Value);
                DataTable dt = conn.GetData(sql);
                if (dt.Rows.Count == 0)
                {

                }
                else
                {
                    CName = dt.Rows[0][0].ToString();
                    Response.Redirect("admin/home.aspx");
                }
            }
            else
            {
                string sql = "select fname,email,IDPASS from registered where fname='{0}' and email='{1}'";
                sql = string.Format(sql, usertb.Value, passtb.Value);
                DataTable dt = conn.GetData(sql);
                if (dt.Rows.Count == 0)
                {

                }
                else
                {
                    CName = dt.Rows[0][0].ToString();
                    customerid = Convert.ToInt32(dt.Rows[0][2].ToString());
                    Response.Redirect("customer/cushome.aspx");
                }
            }
            
        }
    }
}