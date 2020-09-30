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

    [MetadataType(typeof(PositionMetadata))]
    [DisplayName("Stanowiska")]
    public partial class Position
    {

    }

    public class PositionMetadata
    {
        [UIHint("UniquePositionName")]
        [Display(Name = "Nazwa")]
        public object Name;    

    }

   
}