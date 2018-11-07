using Online_Pet_Supplies.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public class RegisterCustomerBL
    {





        public int RegisterUser(string FirstName,string LastName,string Street,string Town,string Postcode,string Email,string Password)
        {

            

            try
            {
                RegisterDAL rUser = new RegisterDAL();
                if (rUser.checkEmail(Email) == 1)
                    return 3;
                
                else 
                return rUser.UserRegister(FirstName, LastName,Street,Town,Convert.ToInt32(Postcode), Email,Password);
            }
            catch
            {
                throw;
            }

        }
    }
}



    








