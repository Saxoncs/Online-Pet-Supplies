using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.DataAccessLayer
{
    public class Customer
    {
        
        
            public string ConString =
               ConfigurationManager.ConnectionStrings
                ["ConnectionString1"].ConnectionString;


            SqlConnection con = new SqlConnection();

            DataTable dt = new DataTable();


            public DataTable Read()
            {
                con.ConnectionString = ConString;
                if (ConnectionState.Closed == con.State)
                    con.Open();
                SqlCommand cmd = new SqlCommand("select * from Customer", con);
                try
                {
                    SqlDataReader rd = cmd.ExecuteReader();
                    dt.Load(rd);
                    return dt;
                }
                catch
                {
                    throw;
                }
            }
            public DataTable Read(Int16 Id)
            {
                con.ConnectionString = ConString;
                if (ConnectionState.Closed == con.State)
                    con.Open();
                SqlCommand cmd = new SqlCommand("select * from Customer where ID= " + Id + "", con);
                try
                {
                    SqlDataReader rd = cmd.ExecuteReader();
                    dt.Load(rd);
                    return dt;
                }
                catch
                {
                    throw;
                }
            }
        }
    }