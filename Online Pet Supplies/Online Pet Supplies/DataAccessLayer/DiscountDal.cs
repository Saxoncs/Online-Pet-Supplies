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
    public class DiscountDal
    {
        public string ConString = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;

        SqlConnection con = new SqlConnection();

        DataTable dt = new DataTable();

        List<Discount> List = new List<Discount>();

        Discount objP = null;





        public List<Discount> GetDiscounts()

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from Discount", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new Discount();

                    objP.DiscountCode = Convert.ToInt16(rd.GetValue(0));

                    objP.Description = rd.GetString(1);

                    objP.DiscountPercent = rd.GetDecimal(2);

                    List.Add(objP);



                }

                return List;

            }

            catch

            {

                throw;

            }

        }



        public List<Discount> Read(int Id)

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from Discount where discountCode = " + Id + "", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new Discount();

                    objP.DiscountCode = Convert.ToInt16(rd.GetValue(0));

                    objP.Description = rd.GetString(1);

                    objP.DiscountPercent = rd.GetDecimal(2);

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