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

    [MetadataType(typeof(Article_typeMetadata))]
    [DisplayName("Rodzaje Artykułów")]
    public partial class Article_type
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class Article_typeMetadata
    {
        [UIHint("UniqueArticleName")]
        [Display(Name = "Nazwa")]
        public object Name;

      

    }

   
}