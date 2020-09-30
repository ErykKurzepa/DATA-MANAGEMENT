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

    [MetadataType(typeof(CNC_Machine_TypeMetadata))]
    [DisplayName("Rodzaj maszyny")]
    public partial class CNC_Machine_Type
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;

        //internal sealed class CustomerMetadata
        //{

        //    [DisallowNavigation(true)]
        //    public object Country1 { get; set; }

        //}
        
    }

    public class CNC_Machine_TypeMetadata
    {


        [UIHint("UniqueMachineTypeName")]
        [Display(Name = "Rodzaj maszyny", Order = 2)]
        public object Name;

    

    }

   
}