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

    [MetadataType(typeof(OrganizationMetadata))]
    [DisplayName("Wydawcy Norm")]
    public partial class Organization
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class OrganizationMetadata
    {


        [UIHint("UniqueOrganizationName")]
        [Display(Name = "Nazwa wydawcy", Order = 2)]
        public object Name;

     
    }

   
}