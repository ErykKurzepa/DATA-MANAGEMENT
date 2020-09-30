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

    [MetadataType(typeof(CNC_SubprogramMetadata))]
    [DisplayName("Podprogramy CNC")]
    public partial class CNC_Subprogram
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;

        //internal sealed class CustomerMetadata
        //{

        //    [DisallowNavigation(true)]
        //    public object Country1 { get; set; }

        //}
        
    }

    public class CNC_SubprogramMetadata
    {

        [UIHint("IdCNC_Podprogram")]
        [Display(Name = "Numer Id Podprogramu", Order = 1, AutoGenerateField = true)]
        public object Id;

       
       

        [Display(Name = "Program CNC", Order = 6)]
        public object CNC_Program;



        [UIHint("Title")]
        [Display(Name = "Nazwa programu", Order = 2)]
        public object Name;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 3)]
        public object Description;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;


  

    }

   
}