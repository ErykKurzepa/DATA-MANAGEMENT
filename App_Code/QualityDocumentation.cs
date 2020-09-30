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

    [MetadataType(typeof(QualityDocumentationMetadata))]
    [DisplayName("Księga jakości, Procedury Systemowe, Procesy")]
    public partial class QualityDocumentation
    {

    }

    public class QualityDocumentationMetadata
    {
        
        [Display(Name = "Numer Id", Order = 1, AutoGenerateField = true)]
        public object Id;

        [UIHint("Title")]
        [Display(Name = "Tytuł", Order = 2)]
        public object Title;

        [DisallowNavigation(true)]
        [Display(Name = "Typ dokumentacji", Order = 3)]
        public object QualityDocumentationType { get; set; }

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 4)]
        public object Description;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data utworzenia", Order=5)]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Pliki")]
        public object QualityDocumentation_Files;


    }

   
}