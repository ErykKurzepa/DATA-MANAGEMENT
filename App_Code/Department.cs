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

    [MetadataType(typeof(DepartmentMetadata))]
    [DisplayName("Dział")]
    public partial class Department
    {

    }

    public class DepartmentMetadata
    {
        [UIHint("UniqueDepartmentName")]
        [Display(Name = "Nazwa")]
        public object Name;    

    }

   
}