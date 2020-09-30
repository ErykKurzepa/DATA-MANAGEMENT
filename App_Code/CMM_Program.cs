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

    [MetadataType(typeof(CMM_ProgramMetadata))]
    [DisplayName("Programy CMM")]
    public partial class CMM_Program
    {
        public override string ToString()
        {
            return "CMM_"+Id + " " + Name;

        }
    }

    public class CMM_ProgramMetadata
    {

        [UIHint("IdCMM_Program")]
        [Display(Name = "Numer Id Programu", Order = 1, AutoGenerateField = true)]
        public object Id;

       
        [Display(Name = "Maszyna", Order = 4)]
        public object CNC_Machine;

        
        [Display(Name = "Przyrząd", Order = 5)]
        public object Fixture;



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

        [Display(Name = "Arkusz ustawczy", AutoGenerateFilter = false)]
        public object Setup_Sheet;
  

    }

   
}