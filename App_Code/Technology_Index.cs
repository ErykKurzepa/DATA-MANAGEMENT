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

    [MetadataType(typeof(Technology_IndexMetadata))]
    [DisplayName("Rewizje Technologii Produkcji")]
    public partial class Technology_Index
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class Technology_IndexMetadata
    {
        [UIHint("IdTechnologyInstructionIndex")]
        [Display(Name = "Numer rewizji", Order = 1, AutoGenerateField = true)]
        public object Index_number;



        [UIHint("MultilineText")]
        [Display(Name = "Opis rewizji", Order = 4)]
        public object Description;

        [Display(Name = "Autor rewizji", AutoGenerateFilter = false, Order = 7)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data rewizji", Order = 8)]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;


        [Display(Name = "Zatwierdził", Order = 5)]
        public object Approved_by;

        [UIHint("DateTime")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        [Display(Name = "Data zatwierdzenia", Order = 6)]
        public object Date_approved;
        



    }

   
}