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

    [MetadataType(typeof(ScoreMetadata))]
    [DisplayName("Oceny Zamówień")]
    public partial class Score
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class ScoreMetadata
    {


        [Display(Name = "Numer zamówienia", Order = 1, AutoGenerateFilter=false)]
        public object Contractor_Order;

      
        [Range(1,5)]
        [Display(Name = "Cena", Order=2)]
        public object Price;

        
        [Range(1, 5)]
        [Display(Name = "Jakość", Order = 3)]
        public object Quality;

        
        [Range(1, 5)]
        [Display(Name = "Czas dostawy", Order = 4)]
        public object Delivery_time;

       
        [Range(1, 5)]
        [Display(Name = "Komunikacja z dostawcą", Order = 5)]
        public object Contact;

        [Required(ErrorMessage = "Opis jest wymagany.")]
        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 6)]
        public object Description;


        [UIHint("DateTime")]    
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Wystawił", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;



    }

   
}