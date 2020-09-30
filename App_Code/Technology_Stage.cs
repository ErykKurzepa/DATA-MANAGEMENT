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

    [MetadataType(typeof(Technology_StageMetadata))]
    [DisplayName("Operacje w Technologii Produkcji")]
    public partial class Technology_Stage
    {
        public override string ToString()
        {
            return "TP" + Technology_Index.Technology.Id + " REV" + Technology_Index.Index_number + " OP" + Number + ": "
                + Technology_Index.Technology.Customer_Part_Index.Customer_Part.Number + " " + Technology_Index.Technology.Customer_Part_Index.Customer_Part.Name;

        }
        
    }

    public class Technology_StageMetadata
    {

       
        
        [Display(Name = "Numer Operacji", Order = 1)]
        public object Number;

         [UIHint("Title")]
        [Display(Name = "Nazwa", Order = 2)]
        public object Name;




         [UIHint("MultilineText")]
         [Display(Name = "Opis", Order = 3)]
         public object Description;

         [Display(Name = "Wymagany czas [min]", Order = 1)]
         public object Operation_time;


        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]    
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Technologia Produkcji")]
        public object Technology_Index;



    

    }

   
}