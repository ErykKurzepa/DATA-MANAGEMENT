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

    [MetadataType(typeof(FormTemplate_FilesMetadata))]
    [DisplayName("Pliki formularzy")]
    public partial class FormTemplate_Files
    {

        public FormTemplate_Files()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }


    public class FormTemplate_FilesMetadata
    {


        [UIHint("FileUpload")]
        [FileUpload(
            FileUrl = "~/formfiles/{0}",
            FileTypes = new String[] { "exe" },
            DisableHyperlink = false,
            DisplayImageUrl = "~/images/{0}"  )]
        [Display(Name = "Plik", Order=4)]
        public object filePath { get; set; }

        [Editable(allowEdit: false)]
        [Display(AutoGenerateField = true, Name = "Rozszerzenie")]
        public object File_extension { get; set; }

        [UIHint("MultilineText")]
        [Display(AutoGenerateField = true, Name = "Opis zmian", Order=1)]
        public object Title;

        [Display(AutoGenerateField = true, Name = "Numer rewizji", Order = 2)]
        public object Index;

        [Display(AutoGenerateField = true, Name = "Formularz", Order = 3)]
        public object FormTemplates;


        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;


        [Editable(allowEdit: false)]
        [UIHint("FileSize")]
        [Display(Name = "Rozmiar [MB]")]
        public object File_size;

    

    
    }



}














