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

    [MetadataType(typeof(CNC_MachineMetadata))]
    [DisplayName("Maszyny")]
    public partial class CNC_Machine
    {
        public override string ToString()
        {
            return "MACH_" + Id + " " + Name;

        }
        
    }

    public class CNC_MachineMetadata
    {

        [UIHint("IdCNC_Machine")]
        [Display(Name = "Numer inwentaryzacyjny", Order = 1, AutoGenerateField = true)]
        public object Id;

        [DisallowNavigation(true)]
        [Display(Name = "Rodzaj maszyny", Order = 2)]
        public object CNC_Machine_Type { get; set; }

        [DisallowNavigation(true)]
        public object Tool_Holder_System { get; set; }



        [Display(Name = "Numer seryjny", Order = 3)]
        public object Serial_number;

        [UIHint("Title")]
        [Display(Name = "Nazwa", Order=4, Description="Wpisz pełną nazwę maszyny")]
        public object Name;

         [UIHint("Title")]
        [Display(Name = "Producent", Order = 3)]
        public object Manufacturer;

         [UIHint("Title")]
        [Display(Name = "Model", Order = 5)]
        public object Model;

         [UIHint("Title")]
        [Display(Name = "Sterowanie", Order = 6)]
        public object Control;

         [Display(Name = "Max. obroty wrzeciona", Order = 7)]
         public object Max_spindle;

        [Display(Name = "Ilość osi", Order = 7)]
        public object Axis;

        [Display(Name = "Moc [kW]", Order = 8)]
        public object Moc;

        [UIHint("DateTime")]
        [Display(Name = "Data produkcji", Order = 9)]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_purchased;



        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 11)]
        public object Description;


        [Display(AutoGenerateField = false)]
        public object CNC_Program;


        [Display(AutoGenerateField=false)]
        public object CNC_Machine_Files;

        //[Display(AutoGenerateField = false)]
        //public object Tool;

    }

   
}