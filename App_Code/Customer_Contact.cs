using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

/// <summary>
/// Summary description for User
/// </summary>

namespace YASA_PL
{

    [MetadataType(typeof(Customer_ContactMetadata))]
    [DisplayName("Pracownicy klientów")]
    public partial class Customer_Contact
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;

        public Customer_Contact()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public override string ToString()
        {
            return F_Name + " " + L_Name;

        }
        
    }

    public class Customer_ContactMetadata
    {

        [Display(Name = "Imię", Order=1)]
        public object F_Name;

        [Display(Name = "Nazwisko", Order = 2)]
        public object L_Name;

        [Display(Name = "Stanowisko", Order = 4)]
        public object Position;

        [Display(Name = "Telefon", Order = 6)]
         public object W_Phone_No;

        [Display(Name = "Telefon kom", Order = 7)]
        public object M_Phone_No;


        [UIHint("EmailAddress")]
        [RegularExpression(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*")]
        [Display(Name = "E-mail", Order = 5)]
        public object Email;

        [Display(Name = "Dział", Order = 3)]
        public object Department;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 8)]
        public object Description;

        [Display(Name = "Dodał / modyfikował", Order = 10, AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji", Order = 9)]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Firma", Order=2)]
        public object Customer;

        [Display(Name = "Komentarze", AutoGenerateField = false)]
        public object Comments;

        [Display(AutoGenerateField = false)]
        public object Customer_Product2;

        [Display(AutoGenerateField = false)]
        public object Customer_Product1;

        [Display(AutoGenerateField = false)]
        public object Customer_Product;

        [Display(AutoGenerateField = false)]
        public object Customer_Part_quality;

        [Display(AutoGenerateField = false)]
        public object Customer_Part_technology;

        [Display(AutoGenerateField = false)]
        public object Customer_Parts_sales;



    }

   
}