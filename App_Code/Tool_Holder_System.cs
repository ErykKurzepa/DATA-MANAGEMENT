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

    [MetadataType(typeof(Tool_Holder_SystemMetadata))]
    [DisplayName("System mocowania narzędzia")]
    public partial class Tool_Holder_System
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;

        //internal sealed class CustomerMetadata
        //{

        //    [DisallowNavigation(true)]
        //    public object Country1 { get; set; }

        //}
        
    }

    public class Tool_Holder_SystemMetadata
    {


[UIHint("UniqueToolHolderSystemName")]
        [Display(Name = "System mocowania narzędzia", Order = 2)]
        public object Name;

    

    }

   
}