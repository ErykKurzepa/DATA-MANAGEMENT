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

    [MetadataType(typeof(Production_materialMetadata))]
    [DisplayName("Materiały Produkcyjne")]
    public partial class Production_material
    {
        public override string ToString()
        {
            int maxLength = Math.Min(Name.Length, 50);
            if (maxLength >= 50)
                return Name.Substring(0, maxLength) + "... " + Number;
            else
                return Name + " " + Number;
        }
        
    }

    public class Production_materialMetadata
    {


        [UIHint("IdProduction_Material")]
        [Display(Name = "Numer Id", Order = 1, AutoGenerateField = true)]
        public object Id;

        [Display(Name = "Oznaczenie", Order = 1)]
        public object Number;

         [UIHint("Title")]
        [Display(Name = "Nazwa", Order = 2)]
        public object Name;

         [Display(Name = "Dostawca", Order = 2)]
         public object Contractor;

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



     

    }

   
}