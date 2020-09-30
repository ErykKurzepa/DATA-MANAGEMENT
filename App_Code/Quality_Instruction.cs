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

    [MetadataType(typeof(Quality_InstructionMetadata))]
    [DisplayName("Instrukcje Kontroli")]
    public partial class Quality_Instruction
    {
        public override string ToString()
        {
            return "IN.K"+Id + " " + Name;

        }
        
    }

    public class Quality_InstructionMetadata
    {

        [UIHint("IdQuality_Instruction")]
        [Display(Name = "Numer Id", Order = 1, AutoGenerateField=true)]
        public object Id;
        
        
        [UIHint("Title")]
        [Display(Name = "Tytuł", Order = 2)]
        public object Name;




         [UIHint("MultilineText")]
         [Display(Name = "Opis", Order = 4)]
         public object Description;



        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]    
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Indeksy", AutoGenerateField = false)]
        public object Quality_Instruction_Index;



    }

   
}