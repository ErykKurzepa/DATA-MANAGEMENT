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

    [MetadataType(typeof(Customer_Product_IndexMetadata))]
    [DisplayName("Rewizje Produktów")]
    public partial class Customer_Product_Index
    {
    }

    public class Customer_Product_IndexMetadata
    {

        [Display(Name = "Numer rewizji", Order = 2)]
        public object Index_number;

            [UIHint("MultilineText")]
        [Display(Name = "Opis rewizji", Order = 4)]
        public object Index_description;

            [UIHint("DateTime")]
            [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
            [Display(Name = "Data rewizji", Order = 3)]
            public object Index_date;

            [Display(Name = "Kontruktor rewizji", Order = 2)]
            public object Index_designer;

         [UIHint("DateTime")]
         [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        [Display(Name = "Data otrzymania", Order = 3)]
        public object Date_received;

        [DefaultValue("3")]
        [Display(Name = "Produkt", Order = 1)]
        public Object Customer_Product { get; set; }

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Notatki", AutoGenerateField = false)]
        public object Comments;

        [Display(Name = "Lista części", AutoGenerateField = false)]
        public object Customer_Part_Index;


        [Display(Name = "Lista plików", AutoGenerateField = false)]
        public object Customer_Files;
    }

   
}