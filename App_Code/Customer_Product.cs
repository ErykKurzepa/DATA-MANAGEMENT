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

    [MetadataType(typeof(Customer_ProductMetadata))]
    [DisplayName("Produkty")]
    public partial class Customer_Product
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class Customer_ProductMetadata
    {
        [UIHint("Id_CustomerProduct")]
        [Display(Name = "ID", Order = 1, AutoGenerateField = true)]
        public object Id;
        
        [UIHint("Title")]
        [Display(Name = "Nazwa", Order = 1)]
        public object Name;

         [UIHint("UniqueCustomerProductNumber")]
        [Display(Name = "Numer", Order = 2)]
        public object Number;

         [Display(Name = "Klient", Order = 3)]
         public object Customer;

         [UIHint("CustomerContactForeignKeyList")]
         [Display(Name = "Kontakt - dział handlowy", Order = 3, AutoGenerateFilter = false)]
         public object Customer_Contact_sales;

          [UIHint("CustomerContactForeignKeyList")]
          [Display(Name = "Kontakt - dział technologiczny", Order = 3, AutoGenerateFilter = false)]
         public object Customer_Contact_technology;

          [UIHint("CustomerContactForeignKeyList")]
          [Display(Name = "Kontakt - dział jakości", Order = 3, AutoGenerateFilter = false)]
         public object Customer_Contact_quality;

         [UIHint("MultilineText")]
         [Display(Name = "Opis", Order = 4)]
         public object Description;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]    
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Wersje", AutoGenerateField = false)]
        public object Customer_Index;

        [Display(Name = "Powiadomienia", AutoGenerateField = false)]
        public object Notifications;

        [Display(Name = "Notatki", AutoGenerateField = false)]
        public object Comments;

    }

   
}