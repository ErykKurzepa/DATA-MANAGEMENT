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

    [MetadataType(typeof(Tool_Document_FileMetadata))]
    [DisplayName("Pliki Narzędzi i Elementów Narzędzi")]
    public partial class Tool_Document_File
    {

        public Tool_Document_File()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }


    public class Tool_Document_FileMetadata
    {

        public object Id { get; set; }

        [UIHint("FileUpload")]
        [FileUpload(
            FileUrl = "~/tool_files/{0}",
            FileTypes = new String[] { "exe" },
            DisableHyperlink = false,
            DisplayImageUrl = "~/images/{0}"  )]
        [Display(Name = "Plik", Order = 4)]
        public object filePath { get; set; }

        [Editable(allowEdit: false)]
        [Display(AutoGenerateField = true, Name = "Rozszerzenie")]
        public object File_extension { get; set; }

         [UIHint("Title")]
        [Display(AutoGenerateField = true, Name = "Nazwa", Order=2)]
        public object File_title;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Numer", Order = 1)]
        public object File_name_number;

        [Editable(allowEdit: false)]
        [UIHint("FileSize")]
        [Display(Name = "Rozmiar")]
        public object File_size;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 5)]
        public object Description;

        [DisallowNavigation(true)]
        [Display(Name = "Typ pliku")]
        public object Tool_Document_Type { get; set; }
       

    
    }



}














