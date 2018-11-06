using Online_Pet_Supplies.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public class Person1
    { 

        public DataTable GetPersons()
    {
        try
        {
                Customer objdal = new DataAccessLayer.Customer();
            return objdal//.Read();
        }
        catch
        {
            throw;
        }
    }
    public DataTable GetPersons(Int16 ID)
    {
        try
        {
                Customer objdal = new DataAccessLayer.Customer();
            return objdal.Read(ID);
        }
        catch
        {
            throw;
        }
    }

}
}