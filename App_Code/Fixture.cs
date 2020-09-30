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

    [MetadataType(typeof(FixtureMetadata))]
    [DisplayName("Przyrządy")]
    public partial class Fixture
    {
        public override string ToString()
        {
            return "FIX_" + Id + " " + Name;

        }


    }

    public class FixtureMetadata
    {
         [UIHint("IdFixture")]
        [Display(Name = "Numer Id", Order = 1, AutoGenerateField = true)]
        public object Id;

        [UIHint("Title")]
        [Display(Name = "Nazwa", Order = 2)]
        public object Name;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 4)]
        public object Description;

        [Display(Name = "Dostawca")]
        public object Contractor;

        [Display(Name = "Numer zamówienia")]
        public object Contractor_Order;

        [Display(Name = "Programy CMM")]
        public object CMM_Program;

        [Display(Name = "Programy CNC")]
        public object CNC_Program;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data utworzenia", Order=5)]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Pliki")]
        public object Fixture_Document_File;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;
    }

   
}