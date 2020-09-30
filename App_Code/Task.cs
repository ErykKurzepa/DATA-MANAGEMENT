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

    [MetadataType(typeof(TaskMetadata))]
    [DisplayName("Zadania")]
    public partial class Task
    {
    }

    public class TaskMetadata
    {



       
        [Display(Name = "Id", Order = 1, AutoGenerateField = true)]
        public object Id;

         [UIHint("Title")]
        [Display(Name = "Tytuł", Order = 3)]
        public object Title;


        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 3)]
        public object Description;

        [Display(Name = "Powiadomienie", AutoGenerateFilter=false)]
        public object Notification;

        [Display(Name = "Zadaniodawca")]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data utworzenia")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [UIHint("DateTime")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        [Display(Name = "Data ukończenia", Order = 4)]
        public object EndDate;

        [UIHint("DateTime")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        [Display(Name = "Data rozpoczęcia", Order = 4)]
        public object StartDate;

        [UIHint("DateTime")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        [Display(Name = "Wymagana <br>data zakończenia", Order = 4)]
        public object RequiredEndDate;

        [Display(Name = "Zadaniobiorca", Order = 2)]
        public object User_task;

        [DisallowNavigation(true)]
        [Display(Name = "Status")]
        public object TaskStatus { get; set; }

       
        [Display(AutoGenerateFilter=false)]
        [EnumDataType(typeof(ProprytetEnum))]
        public object Priorytet;

    }

    

    public enum ProprytetEnum : byte
    {
        [Display(Name = "Normalny")]
        Normalny,

        [Display(Name = "Niski")]
        Niski,

        [Display(Name = "Wysoki")]
        Wysoki,
    }
}