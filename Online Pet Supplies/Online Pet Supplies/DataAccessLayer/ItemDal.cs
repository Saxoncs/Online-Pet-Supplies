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

    public class ItemDal
    {

        public string ConString = ConfigurationManager.ConnectionStrings ["ConnectionString1"].ConnectionString;

        SqlConnection con = new SqlConnection();

        DataTable dt = new DataTable();

        List<Item> List = new List<Item>();

        Item objP = null;





        public List<Item> GetItems()

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from Item", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new Item();

                    objP.ItemID = Convert.ToInt16(rd.GetValue(0));

                    objP.Name = rd.GetString(1);

                    objP.Price = rd.GetDecimal(2);

                    List.Add(objP);



                }

                return List;

            }

            catch

            {

                throw;

            }

        }



        public List<Item> Read(int Id)

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from Item where itemID = " + Id + "", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new Item();

                    objP.ItemID = Convert.ToInt16(rd.GetValue(0));

                    objP.Name = rd.GetString(1);

                    objP.Price = rd.GetDecimal(2);

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