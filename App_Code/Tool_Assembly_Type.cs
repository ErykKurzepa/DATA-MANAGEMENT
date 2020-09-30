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

    [MetadataType(typeof(Tool_Assembly_TypeMetadata))]
    [DisplayName("Rodzaj Obróbki")]
    public partial class Tool_Assembly_Type
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class Tool_Assembly_TypeMetadata
    {


        [UIHint("UniqueTool_TypeName")]
        [Display(Name = "Nazwa Rodzaju Obróbki", Order = 2)]
        public object Name;

     
    }

   
}