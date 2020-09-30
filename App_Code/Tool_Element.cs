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

    [MetadataType(typeof(Tool_ElementMetadata))]
    [DisplayName("Elementy Narzędzi")]
    public partial class Tool_Element
    {
        public override string ToString()
        {
            return "EL" + Id + " " + Name;

        }
    }

    public class Tool_ElementMetadata
    {

        [UIHint("IdTool_Element")]
        [Display(Name = "Id Elementu", Order = 1, AutoGenerateField = true)]
        public object Id;

       [UIHint("Title")]
        [Display(Name = "Nazwa", Order = 4)]
        public object Name;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 3)]
        public object Description;



        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false, Order = 7)]
        [Editable(allowEdit: false)]
        public object User;
  

         [Display(Name = "Dostawca")]
        public object Contractor;

         [DisallowNavigation(true)]
         [Display(Name = "Rodzaj elementu")]
         public object Tool_Type { get; set; }
        
    }

   
}