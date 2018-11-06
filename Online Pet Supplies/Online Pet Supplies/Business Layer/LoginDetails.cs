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


        public int TryLogin(string UserName, string Password)
        {
            LoginDAL c = new LoginDAL();
            username = UserName;
           password = Password;
            int loginSuccess;
            loginSuccess = c.UserValidate(username, password);
            if (loginSuccess == 1)
                return 1;
            else return 2;


        }
    }
}

  

