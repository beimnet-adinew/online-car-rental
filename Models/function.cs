using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace online_car_rental.Models
{
    public class function
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        private DataTable dt;
        private string connstr;
        private SqlDataAdapter sda;

        public function()
        {
            connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\user\Documents\carrentaldb.mdf;Integrated Security=True;Connect Timeout=30";
            conn = new SqlConnection(connstr);
            cmd = new SqlCommand();
            cmd.Connection = conn;

        }
        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, connstr);
            sda.Fill(dt);
            return dt;
        }
        public int SetData(string Query)
        {
            int rcnt = 0;
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.CommandText = Query;
            rcnt = cmd.ExecuteNonQuery();
            conn.Close();
            return rcnt;
        }
        //public void databox()
        //{

        //}
    }
    
}