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

    [MetadataType(typeof(Tool_TypeMetadata))]
    [DisplayName("Rodzaj Narzędzia")]
    public partial class Tool_Type
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class Tool_TypeMetadata
    {


        [UIHint("UniqueTool_TypeName")]
        [Display(Name = "Nazwa Rodzaju Narzędzia", Order = 2)]
        public object Name;

     
    }

   
}