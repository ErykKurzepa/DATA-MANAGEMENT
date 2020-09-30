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

    [MetadataType(typeof(Technology_DwgMetadata))]
    [DisplayName("Rysunki Technologiczne")]
    public partial class Technology_Dwg
    {
        public override string ToString()
        {
            return "RTG_"+Id + " " + Name;

        }
        
    }

    public class Technology_DwgMetadata
    {

        [UIHint("IdTechnology_Dwg")]
        [Display(Name = "Numer", Order = 1, AutoGenerateField=true)]
        public object Id;


         [UIHint("Title")]
        [Display(Name = "Nazwa", Order = 2)]
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
        public object Technology_Dwg_Index;



    }

   
}