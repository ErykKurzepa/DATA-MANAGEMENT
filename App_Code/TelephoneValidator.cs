using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
using System.ComponentModel.DataAnnotations;

/// <summary>
/// Summary description for TelephoneValidator
/// </summary>

	

    [AttributeUsage(AttributeTargets.Property |
  AttributeTargets.Field, AllowMultiple = false)]
    sealed public class TelephoneValidator : ValidationAttribute
    {

        public override bool IsValid(object value)
        {
            bool result = true;
            // Add validation logic here.
            int n;
            string tel = value.ToString();
          //  result = int.TryParse(value.ToString(), out n);
            result = !tel.Any(ch => ch < '0' || ch > '9');

            return result;
        }

      



    }

   


