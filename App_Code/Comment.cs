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

    [MetadataType(typeof(CommentMetadata))]
    [DisplayName("Notatki")]
    public partial class Comment
    {

    }

    public class CommentMetadata
    {
        [UIHint("MultilineText")]
        [Display(Name = "Treść")]
        public object Description;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created;

      

    }

   
}