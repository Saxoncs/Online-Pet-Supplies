using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.DataAccessLayer
{
    public class RegisterDAL
    {

        public string ConString =
           ConfigurationManager.ConnectionStrings
            ["ConnectionString1"].ConnectionString;


        SqlConnection con = new SqlConnection();

        DataTable dt = new DataTable();



        public int checkEmail(string email)

        {
            con.ConnectionString = ConString;
            if (ConnectionState.Closed == con.State)
                con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Customer where email = '" + email +  "'", con);
            try
            {
                try
                {
                    SqlDataReader rd = cmd.ExecuteReader();
                    dt.Load(rd);
                    con.Close();
                    if (dt != null && dt.Rows.Count > 0)
                        return 1;
                    else return 2;
                    
                }
                catch
                {
                    ; throw;
                }



            }
            catch
            {
                ; throw;
            }
        }

    





        public int UserRegister(string FirstName, string LastName, string Street, string Town, int Postcode, string Email, string Password)
        {
            con.ConnectionString = ConString;
            if (ConnectionState.Closed == con.State)
                con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO CUSTOMER VALUEs (@firstname,@lastname,@street,@Town,@postcode,@email,@password)", con);
            try
            {

                cmd.Parameters.AddWithValue("@firstname", FirstName);
                cmd.Parameters.AddWithValue("@lastname", LastName);
                cmd.Parameters.AddWithValue("@street", Street);
                cmd.Parameters.AddWithValue("@Town", Town);
                cmd.Parameters.AddWithValue("@postcode", Postcode);
                cmd.Parameters.AddWithValue("@email", Email);
                cmd.Parameters.AddWithValue("@password", Password);
               
                
                int recordsAffected = cmd.ExecuteNonQuery();
                con.Close();
                if (recordsAffected > 0)
                    return 1;
                else return 2;
            }
            catch
            {
                ; throw;
            }
        }
        //'"  + FirstName + "','" + LastName + "','" + Street + "','" + Town + "," + Postcode + "','" + Email + "'," + Password + ")"
    }
    }




