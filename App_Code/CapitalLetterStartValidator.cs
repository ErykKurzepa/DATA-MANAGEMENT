using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
using System.ComponentModel.DataAnnotations;

/// <summary>
/// Summary description for CapitalLetterStartValidator
/// </summary>

	

    [AttributeUsage(AttributeTargets.Property |
  AttributeTargets.Field, AllowMultiple = false)]
sealed public class CapitalLetterStartValidator : ValidationAttribute
    {

        public override bool IsValid(object value)
        {
            bool result = true;
            // sprawdzenie czy pierwsza litera jest duza
          
            string tel = value.ToString();
            char tel2 = tel[0];
            result = !char.IsLower(tel2);

                      return result;
        }

      



    }

   


