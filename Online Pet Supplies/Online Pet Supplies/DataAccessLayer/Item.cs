using System;
using System.Collections;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;

namespace Online_Pet_Supplies.DataAccessLayer
{

    [DataObject(true)]
    public static class Item
    {
        [DataObjectMethod (DataObjectMethodType.Select)]
        public static IEnumerable GetAllItems()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            string sql = "SELECT * FROM Item ORDER BY name";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dr;
        }

        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings
                ["ConnectionString1"].ConnectionString;
        }


    }
}