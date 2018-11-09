using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.DataAccessLayer
{
    //Uses Customer and Administrator information to be compared to login details
    public class LoginDAL
    {
        
        
            public string ConString =
               ConfigurationManager.ConnectionStrings
                ["ConnectionString1"].ConnectionString;


            SqlConnection con = new SqlConnection();

            DataTable dt = new DataTable();



            public int UserValidate(string username, string password )
            {
                con.ConnectionString = ConString;
                if (ConnectionState.Closed == con.State)
                    con.Open();
                SqlCommand cmd = new SqlCommand("select * from Customer where email = '" + username + "' and password = '" + password + "'", con);
                try
                {
                    SqlDataReader rd = cmd.ExecuteReader();
                    dt.Load(rd);
                if (dt != null && dt.Rows.Count > 0)
                        return 1;
                else return 2;
                }
                catch
                {
                ; throw;
                }
            }

        public int AdminUserValidate(string username, string password)
        {
            con.ConnectionString = ConString;
            if (ConnectionState.Closed == con.State)
                con.Open();
            SqlCommand cmd = new SqlCommand("select * from Administrator where firstName = '" + username + "' and lastName = '" + password + "'", con);
            try
            {
                SqlDataReader rd = cmd.ExecuteReader();
                dt.Load(rd);
                if (dt != null && dt.Rows.Count > 0)
                    return 1;
                else return 2;
            }
            catch
            {
                ; throw;
            }
        }


    }
    }


