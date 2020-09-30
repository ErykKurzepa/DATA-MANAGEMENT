using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Data;
using System.Web.DynamicData;
using System.Drawing.Imaging;

using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using YASA_PL;

namespace YASA_PL
{

    [MetadataType(typeof(Customer_FilesMetadata))]
    [DisplayName("Pliki klientów")]
    public partial class Customer_Files
    {

        public Customer_Files()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }


    public class Customer_FilesMetadata
    {


        [UIHint("FileUpload")]
        [FileUpload(
            FileUrl = "~/files/{0}",
            FileTypes = new String[] { "exe" },
            DisableHyperlink = false,
            DisplayImageUrl = "~/images/{0}"  )]
        [Display(Name = "Plik", Order=4)]
        public object filePath { get; set; }

        [Editable(allowEdit: false)]
        [Display(AutoGenerateField = true, Name = "Rozszerzenie")]
        public object File_extension { get; set; }

        [Display(AutoGenerateField = true, Name = "Nazwa", Order=1)]
        public object File_title;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Numer", Order = 2)]
        public object File_name_number;

        [Display(Name = "Rodzaj pliku", Order = 3)]
        [EnumDataType(typeof(TypeEnum))]
        public object Typ;

      //  [Editable(allowEdit: false)]
       // [UIHint("FileSize")]
        [Display(Name = "Rozmiar [MB]")]
        public object File_size;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 5)]
        public object Description;

        [DefaultValue("3")]
        public Object Customer_Part_IndexId { get; set; }

        public enum TypeEnum : byte
        {
            Rysunek,
            Model,
            Norma,
            Inny
        }

    
    }



}














