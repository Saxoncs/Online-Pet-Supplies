﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public static class INFT3050PaymentFactory
    {
        /// <summary>
        /// Create a payment system. 
        /// </summary>
        /// <returns></returns>
        public static IPaymentSystem Create() { return new INFT3050PaymentSystem(); }
    }
}