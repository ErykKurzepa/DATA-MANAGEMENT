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

    [MetadataType(typeof(NotificationMetadata))]
    [DisplayName("Powiadomienia o zmianach")]
    public partial class Notification
    {
    }

    public class NotificationMetadata
    {

        [UIHint("IdNotification")]
        [Display(Name = "Numer", Order = 1, AutoGenerateField = true)]
        public object Id;

        [UIHint("Title")]
        [Display(Name = "Tytuł", Order = 2)]
        public object Name;


        [UIHint("DateTime")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        [Display(Name = "Wymagana data ukończenia", Order = 4)]
        public object RequiredEndDate;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 3)]
        public object Description;

        [Display(Name = "Detal", Order = 5)]
        public object Customer_Part;

        [Display(Name = "Produkt", Order = 6)]
        public object Customer_Product;

        [Display(Name = "Opiekun")]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data utworzenia")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [DefaultValue("3")]
        public Object Customer_PartId { get; set; }

        [DisallowNavigation(true)]
        [Display(Name = "Statu")]
        public object NotificationStatus { get; set; }

        [DisallowNavigation(true)]
        [Display(Name = "Typ")]
        public object NotyficationType { get; set; }


    }





   
}