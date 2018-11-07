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
    public class OnlineOrderDal
    {
        public string ConString = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;

        SqlConnection con = new SqlConnection();

        DataTable dt = new DataTable();

        List<OnlineOrder> List = new List<OnlineOrder>();

        OnlineOrder objP = null;





        public List<OnlineOrder> GetItems()

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from OnlineOrder", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new OnlineOrder();

                    objP.OrderID = Convert.ToInt16(rd.GetValue(0));

                    objP.Street = rd.GetString(1);

                    objP.Town = rd.GetString(2);

                    objP.PostCode = Convert.ToInt16(rd.GetValue(3));

                    objP.OrderDate = rd.GetDateTime(4);

                    List.Add(objP);



                }

                return List;

            }

            catch

            {

                throw;

            }

        }



        public List<OnlineOrder> Read(int Id)

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from OnlineOrder where orderID = " + Id + "", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new OnlineOrder();

                    objP.OrderID = Convert.ToInt16(rd.GetValue(0));

                    objP.Street = rd.GetString(1);

                    objP.Town = rd.GetString(2);

                    objP.PostCode = Convert.ToInt16(rd.GetValue(3));

                    objP.OrderDate = rd.GetDateTime(4);

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
