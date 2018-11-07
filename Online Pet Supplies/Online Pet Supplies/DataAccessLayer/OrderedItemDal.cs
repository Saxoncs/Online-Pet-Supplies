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
    public class OrderedItemDal
    {
        public string ConString = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;

        SqlConnection con = new SqlConnection();

        DataTable dt = new DataTable();

        List<OrderedItem> List = new List<OrderedItem>();

        OrderedItem objP = null;





        public List<OrderedItem> GetOrderedItems()

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from OrderedItem", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new OrderedItem();

                    objP.OrderID = Convert.ToInt16(rd.GetValue(0));

                    objP.ItemID = Convert.ToInt16(rd.GetValue(1));

                    objP.Quantity = Convert.ToInt16(rd.GetValue(2));

                    List.Add(objP);



                }

                return List;

            }

            catch

            {

                throw;

            }

        }



        public List<OrderedItem> Read(int itemId, int orderId)

        {



            con.ConnectionString = ConString;

            if (ConnectionState.Closed == con.State)

                con.Open();

            SqlCommand cmd = new SqlCommand("select * from OrderedItem where itemID = " + itemId + " and orderID = " + orderId + " ", con);

            try

            {

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())

                {

                    objP = new OrderedItem();

                    objP.ItemID = Convert.ToInt16(rd.GetValue(0));

                    objP.OrderID = Convert.ToInt16(rd.GetValue(1));

                    objP.Quantity = Convert.ToInt16(rd.GetValue(2));

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