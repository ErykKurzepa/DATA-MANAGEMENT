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

    [MetadataType(typeof(Fixture_Document_FileMetadata))]
    [DisplayName("Dokumentacja przyrządów")]
    public partial class Fixture_Document_File
    {

        public Fixture_Document_File()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }


    public class Fixture_Document_FileMetadata
    {


        [UIHint("FileUpload")]
        [FileUpload(
            FileUrl = "~/fixture_files/{0}",
            FileTypes = new String[] { "exe" },
            DisableHyperlink = false,
            DisplayImageUrl = "~/images/{0}"  )]
        [Display(Name = "Plik", Order=4)]
        public object filePath { get; set; }

        [Editable(allowEdit: false)]
        [Display(AutoGenerateField = true, Name = "Rozszerzenie")]
        public object File_extension { get; set; }

        [UIHint("MultilineText")]
        [Display(Name = "Opis zmian", Order=1)]
        public object Description;

        [UIHint("IdTechnologyInstructionIndex")]
        [Display(Name = "Numer rewizji", Order = 2)]
        public object Index;

        [Display(Name = "Nazwa", Order = 2)]
        public object File_title;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;


        [Editable(allowEdit: false)]
        [UIHint("FileSize")]
        [Display(Name = "Rozmiar [MB]")]
        public object File_size;

        [DisallowNavigation(true)]
        [Display(Name = "Typ dokumentu", Order = 2)]
        public object Fixture_Document_Type { get; set; }

       
    
    }



}














