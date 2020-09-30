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

    [MetadataType(typeof(Standard_FilesMetadata))]
    [DisplayName("Pliki Norm")]
    public partial class Standard_Files
    {

        public Standard_Files()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }


    public class Standard_FilesMetadata
    {


        [UIHint("FileUpload")]
        [FileUpload(
            FileUrl = "~/standard_files/{0}",
            FileTypes = new String[] { "exe" },
            DisableHyperlink = false,
            DisplayImageUrl = "~/images/{0}"  )]
        [Display(Name = "Plik", Order=4)]
        public object filePath { get; set; }

        [Editable(allowEdit: false)]
        [Display(AutoGenerateField = true, Name = "Rozszerzenie")]
        public object File_extension { get; set; }

        [UIHint("MultilineText")]
        [Display(AutoGenerateField = true, Name = "Opis rewizji", Order=1)]
        public object Index_description;

        [Display(AutoGenerateField = true, Name = "Numer rewizji", Order = 2)]
        public object Index;

        [Display(AutoGenerateField = true, Name = "Norma", Order = 3)]
        public object Standard;

        [UIHint("DateTime")]
        [Display(Name = "Data rewizji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Index_date;

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














