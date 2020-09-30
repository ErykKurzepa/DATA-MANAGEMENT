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

    [MetadataType(typeof(Contractor_OrderMetadata))]
    [DisplayName("Rejestr zamówień")]
    public partial class Contractor_Order
    {
        public override string ToString()
        {
            return "RZ"+Id + ": " + Title;

        }
        
    }

    public class Contractor_OrderMetadata
    {

        [UIHint("IdContractorOrder")]
        [Display(Name = "Numer zamówienia", Order = 1)]
        public object Id;

       [UIHint("MultilineText")]
        [Display(Name = "Treść zamówienia", Order = 2)]
        public object Description;


        [Display(Name = "Cena całkowita netto [PLN]", Order = 4)]
        public object Total_price;

          [UIHint("Title")]
        [Display(Name = "Tytuł zamówienia", Order = 5)]
        public object Title;



        [Display(Name = "Zamawiał")]
        [Editable(allowEdit: false)]
        public object User;

        [FilterUIHint("DateRange")]
        [UIHint("DateTime")]    
        [Editable(allowEdit: false)]
        [Display(Name = "Data zamówienia")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [UIHint("DateTime")]
        [Display(Name = "Wymagana data dostawy")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_required;

        [UIHint("DateTime")]
        [Display(Name = "Data dostawy")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_delivered;

        [Display(Name = "Dostawca", Order=2)]
        public object Contractor;

        [Display(Name = "Ocena", AutoGenerateField = false)]
        public object Score;

        [Display(Name = "Komentarze", AutoGenerateField = false)]
        public object Comments;

        [DisallowNavigation(true)]
        [Display(Name = "Rodzaj artykułów")]
        public object Article_type { get; set; }

        [DisallowNavigation(true)]
        [Display(Name = "Status")]
        public object Order_Status { get; set; }

    }

   
}