﻿using System;
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

    [MetadataType(typeof(TechnologyMetadata))]
    [DisplayName("Technologie Produkcji")]
    public partial class Technology
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class TechnologyMetadata
    {

        [UIHint("IdTechnology")]
        [Display(Name = "Id", Order = 1, AutoGenerateField=true)]
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

        [Display(Name = "Materiał produkcyjny")]
        public object Production_material;

        [Display(Name = "Detal")]
        public object Customer_Part_Index;

    

    }

   
}