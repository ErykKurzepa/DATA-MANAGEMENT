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

    [MetadataType(typeof(StandardMetadata))]
    [DisplayName("Normy")]
    public partial class Standard
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class StandardMetadata
    {


        [UIHint("UniqueStandardNumber")]
        [Display(Name = "Numer", Order = 1)]
        public object Number;

         [UIHint("Title")]
        [Display(Name = "Tytuł", Order = 2)]
        public object Title;

         [DisallowNavigation(true)]
         [Display(Name = "Wydawca Norm", Order = 3)]
         public object Organization { get; set; }

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 4)]
        public object Description;



        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;



     

    }

   
}