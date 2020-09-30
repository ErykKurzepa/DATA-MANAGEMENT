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

    [MetadataType(typeof(Customer_PartMetadata))]
    [DisplayName("Detale")]
    public partial class Customer_Part
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class Customer_PartMetadata
    {

        [UIHint("Id_CustomerPart")]
        [Display(Name = "ID", Order = 1, AutoGenerateField = true)]
        public object Id;
        
        // [UIHint("UniqueCustomerPartName")]
        [UIHint("Title")]
        [Display(Name = "Nazwa detalu", Order = 1)]
        public object Name;

         [UIHint("UniqueCustomerPartNumber")]
        [Display(Name = "Numer detalu / Numer dysunku", Order = 2)]
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
        public object Customer_Part_Index;

        [Display(Name = "Powiadomienia", AutoGenerateField = false)]
        public object Notifications;

    }

   
}