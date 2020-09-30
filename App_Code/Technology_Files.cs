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

    [MetadataType(typeof(Technology_FilesMetadata))]
    [DisplayName("Pliki Instrukcji Pracy")]
    public partial class Technology_Files
    {

        public Technology_Files()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }


    public class Technology_FilesMetadata
    {

        public object Id { get; set; }

        [UIHint("FileUpload")]
        [FileUpload(
            FileUrl = "~/work_instruction_files/{0}",
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

       
       

    
    }



}














