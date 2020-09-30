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

    [MetadataType(typeof(Customer_Part_IndexMetadata))]
    [DisplayName("Rewizje Detali")]
    public partial class Customer_Part_Index
    {

        public override string ToString()
        {
            int maxLength = Math.Min(Customer_Part.Name.Length, 50);
            if (maxLength>=50)
                return Customer_Part.Name.Substring(0, maxLength) + "... " + Customer_Part.Number + " rev. " + Index_number;
            else
                return Customer_Part.Name + " " + Customer_Part.Number + " REV. " + Index_number;
        }

    }

    public class Customer_Part_IndexMetadata
    {

        [Display(Name = "Numer rewizji", Order = 2)]
        public object Index_number;

        [UIHint("MultilineText")]
        [Display(Name = "Opis rewizji", Order = 4)]
        public object Index_description;

        [UIHint("DateTime")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        [Display(Name = "Data otrzymania", Order = 3)]
        public object Date_received;

        [UIHint("DateTime")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        [Display(Name = "Data rewizji", Order = 3)]
        public object Index_date;

        [Display(Name = "Konstruktor rewizji", Order = 2)]
        public object Index_designer;

        [DefaultValue("3")]
        [Display(Name = "Część", Order = 1)]
        public Object Customer_Part { get; set; }

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;
    
    }

   
}