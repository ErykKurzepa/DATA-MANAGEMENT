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

    [MetadataType(typeof(QualityDocumentationTypeMetadata))]
    [DisplayName("Typ Dokumentacji")]
    public partial class QualityDocumentationType
    {

    }

    public class QualityDocumentationTypeMetadata
    {

     

        [Display(Name = "Typ dokumentacji", Order = 1)]
        public object Name;

     

    }

   
}