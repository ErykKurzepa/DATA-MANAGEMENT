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

    [MetadataType(typeof(FormTypeMetadata))]
    [DisplayName("Typ formularza")]
    public partial class FormType
    {

    }

    public class FormTypeMetadata
    {

     

        [Display(Name = "Rodzaj", Order = 1)]
        public object Name;

     

    }

   
}