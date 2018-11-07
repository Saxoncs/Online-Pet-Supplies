using Online_Pet_Supplies.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public class LoginDetails
    {
        public string username;
        public string password;


        public int TryLogin()
        {
            try
            {
             LoginDAL lDal = new LoginDAL();
                
                return lDal.UserValidate(username, password);
            }
            catch
            {
                throw;
            }

        }
    }
}

  

