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

    [MetadataType(typeof(Contractor_categoryMetadata))]
    [DisplayName("Branża")]
    public partial class Contractor_category
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class Contractor_categoryMetadata
    {
        [UIHint("UniqueContractorCategoryName")]
        [Display(Name = "Nazwa")]
        public object Nazwa;


    }

   
}