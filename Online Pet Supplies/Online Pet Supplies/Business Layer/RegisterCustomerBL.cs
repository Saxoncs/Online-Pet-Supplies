using Online_Pet_Supplies.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public class RegisterCustomerBL
    {





        public int RegisterUser(string FirstName,string LastName,string Street,string Town,string Postcode,string Email,string Password,string UserType)
        {

            

            try
            {
                RegisterDAL rUser = new RegisterDAL();
                if (rUser.checkEmail(Email,UserType) == 1)
                    return 3;
                
                else 
                return rUser.UserRegister(FirstName, LastName,Street,Town,Convert.ToInt32(Postcode), Email,Password);
            }
            catch
            {
                throw;
            }

        }


        public int RegisterAdmin(string FirstName, string LastName, string Email, string Password, string UserType)
        {



            try
            {
                RegisterDAL rUser = new RegisterDAL();
                if (rUser.checkEmail(Email,UserType) == 1)
                    return 3;

                else
                    return rUser.AdminRegister(FirstName, LastName, Email, Password);
            }
            catch
            {
                throw;
            }

        }
    }
}



    








