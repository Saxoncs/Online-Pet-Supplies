﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.DataAccessLayer
{
    // class containing information from the Administrator table in the database
    public class Administrator
    {
        public int AdminID { get; set; }
        public String FirstName { get; set; }
        public String LastName { get; set; }


    }
}