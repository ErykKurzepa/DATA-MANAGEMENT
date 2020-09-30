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

    [MetadataType(typeof(QualityDocumentation_FilesMetadata))]
    [DisplayName("Pliki dokumentacji")]
    public partial class QualityDocumentation_Files
    {

        public QualityDocumentation_Files()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }


    public class QualityDocumentation_FilesMetadata
    {


        [UIHint("FileUpload")]
        [FileUpload(
            FileUrl = "~/qualitydocumentation_files/{0}",
            FileTypes = new String[] { "exe" },
            DisableHyperlink = false,
            DisplayImageUrl = "~/images/{0}"  )]
        [Display(Name = "Link", Order=4)]
        public object filePath { get; set; }

        [Editable(allowEdit: false)]
        [Display(AutoGenerateField = true, Name = "Rozszerzenie")]
        public object File_extension { get; set; }

        [UIHint("MultilineText")]
        [Display(AutoGenerateField = true, Name = "Opis zmian", Order=1)]
        public object Title;

        [Display(AutoGenerateField = true, Name = "Indeks", Order = 2)]
        public object Index;

        [Display(AutoGenerateField = true, Name = "Dokumentacja", Order = 3)]
        public object QualityDocumentation;


        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;


        [Editable(allowEdit: false)]
        [UIHint("FileSize")]
        [Display(Name = "Rozmiar")]
        public object File_size;

    

    
    }



}














