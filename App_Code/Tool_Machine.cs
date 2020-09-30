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

    [MetadataType(typeof(Tool_MachineMetadata))]
    [DisplayName("Wybór maszyn")]
    public partial class Tool_Machine
    {
        //public override string ToString()
        //{
        //    return Id + ": T"; // +Tool_Number;

        //}
    }

    public class Tool_MachineMetadata
    {

        [UIHint("IdTool_Element")]
        [Display(Name = "Numer Narzędzia w Maszynie", Order = 1, AutoGenerateField = true)]
        public object Id;

       //[UIHint("Title")]
       // [Display(Name = "Numer narzędzia w maszynie", Order = 4)]
       // public object Tool_Number;

       
        
    }

   
}