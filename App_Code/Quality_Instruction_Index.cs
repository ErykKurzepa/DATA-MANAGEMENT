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

    [MetadataType(typeof(Quality_Instruction_IndexMetadata))]
    [DisplayName("Rewizji Instrukcje Kontroli")]
    public partial class Quality_Instruction_Index
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class Quality_Instruction_IndexMetadata
    {



        [UIHint("IdTechnologyInstructionIndex")]
        [Display(Name = "Numer rewizji", Order = 1, AutoGenerateField = true)]
        public object Index_number;

         [UIHint("MultilineText")]
         [Display(Name = "Opis", Order = 4)]
        public object Index_description;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false, Order = 7)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]    
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji", Order = 8)]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Instrukcja kontroli", Order = 2)]
        public object Quality_Instruction;



        [Display(Name = "Autor rewizji", Order = 5)]
        public object User_approved;

        [UIHint("DateTime")]
         [Display(Name = "Data rewizji", Order = 6)]
         [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_approved;
        

    }

   
}