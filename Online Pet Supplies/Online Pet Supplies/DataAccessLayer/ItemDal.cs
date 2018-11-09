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
    // Takes information from the database and converts it into Item objects for the business layer
    public class ItemDal
    {

        public string ConString = ConfigurationManager.ConnectionStrings ["ConnectionString1"].ConnectionString;

        SqlConnection con = new SqlConnection();

        DataTable dt = new DataTable();

        List<Item> List = new List<Item>();

        Item objP = null;


        // delete an item from the database based on the itemID granted
        public void DeleteItem(int ItemID)
        {
            con.ConnectionString = ConString;
            if (ConnectionState.Closed == con.State)
                con.Open();
            SqlCommand cmd = new SqlCommand("Delete from Item where ItemID = " + ItemID + "", con);
            try
            {
               cmd.ExecuteNonQuery();
                con.Close();
               // if (updated > 0)
                    //return 1;
                //else
                
                    //return 2;
                
            }
            catch
            {
                ; throw;
            }
        }


        // insert a new item with into the database with a  name and a price
        public void Insert(string Name,int Price)
        {
            con.ConnectionString = ConString;
            if (ConnectionState.Closed == con.State)
                con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Item VALUEs (@name,@price,@adminID)", con);
            try
            {

                cmd.Parameters.AddWithValue("@name", Name);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@adminID", 1);


                int recordsAffected = cmd.ExecuteNonQuery();
                con.Close();

            }
            catch
            {
                throw;
            }
        }


















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