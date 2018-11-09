using Online_Pet_Supplies.Business_Layer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.DataAccessLayer
{
    // Takes information from the database and converts it into Administrator objects for the business layer
    public class AdministratorDal
    {
        public string ConString = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;

        SqlConnection con = new SqlConnection();

        DataTable dt = new DataTable();

        List<Administrator> List = new List<Administrator>();

        Administrator objP = null;


        // Generate a list of all administrators information
        public List<Administrator> GetAdministrators()

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from Administrator", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new Administrator();

                    objP.AdminID = Convert.ToInt16(rd.GetValue(0));

                    objP.FirstName = rd.GetString(1);

                    objP.LastName = rd.GetString(2);

                    List.Add(objP);



                }

                return List;

            }

            catch

            {

                throw;

            }

        }


        //generate a specific administrator based on the ID it is passed
        public List<Administrator> Read(int Id)

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from Administrator where adminID = " + Id + "", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new Administrator();

                    objP.AdminID = Convert.ToInt16(rd.GetValue(0));

                    objP.FirstName = rd.GetString(1);

                    objP.LastName = rd.GetString(2);

                    List.Add(objP);


                }

                return List;

            }

            catch

            {

                throw;

            }
        }
    }
}