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

    [MetadataType(typeof(ToolMetadata))]
    [DisplayName("Narzędzia")]
    public partial class Tool
    {
        public override string ToString()
        {
            return "TL" + Id + " " + Name;

        }
    }

    public class ToolMetadata
    {

        [UIHint("IdTool")]
        [Display(Name = "Id Narzędzia", Order = 1, AutoGenerateField = true)]
        public object Id;

        [DisallowNavigation(true)]
        public object Tool_Holder_System { get; set; }

        [UIHint("Title")]
        [Display(Name = "Nazwa", Order = 4)]
        public object Name;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 3)]
        public object Description;

        [Display(Name = "Numer narzędzia", Order = 4)]
        public object Tool_Number;
        

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false, Order = 7)]
        [Editable(allowEdit: false)]
        public object User;
  
        //[Display(Name = "Maszyna")]
        //public object CNC_Machine;
        

    }

   
}