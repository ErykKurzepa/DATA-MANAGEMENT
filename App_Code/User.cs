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
   // [DisplayColumn("F_Name")]
    [MetadataType(typeof(UserMetadata))]
    [DisplayName("Użytkownicy")]

    public partial class User
    {
        public User()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public override string ToString()
        {
            return F_Name + " " + L_Name;

        }
    }




    public class UserMetadata
    {


        [Display(Name = "Imię", Order=1)]
        public object F_Name;

        [Display(Name = "Nazwisko", Order = 2)]
        public object L_Name;
       
        [UIHint("UniqueUsersEmail")]
        [Display(Name = "Adres e-mail", Order = 3)]
        public object Email;

        [UIHint("Password")]
        [Display(Name = "Hasło logowania do serwisu", Order = 6)]
        public object Password;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object UserId;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [RegularExpression(@"[0-9]+\b")]
        [Display(Name = "Nr tel. stacjonarnego", Order = 4)]
        public object W_Phone_No;

        [RegularExpression(@"[0-9]+\b")]
        [Display(Name = "Nr tel. komórkowego", Order = 5)]
        public object M_Phone_No;

         [DisallowNavigation(true)]
        [Display(Name = "Stanowisko", Order = 7)]
        public object Position {get; set;}

         [DisallowNavigation(true)]
        [Display(Name = "Dział", Order = 8)]
         public object Department { get; set; }

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 9)]
        public object Description;


//customer
        [Display(AutoGenerateFilter=false)]
        public object Customer_List;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Delete;

//Customer_Part
        [Display(AutoGenerateFilter = false)]
        public object Customer_Part_List;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Part_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Part_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Part_Delete;

//Customer_Order
        [Display(AutoGenerateFilter = false)]
        public object Customer_Order_List;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Order_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Order_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Customer_Order_Delete;

//Contractor
        [Display(AutoGenerateFilter = false)]
        public object Contractor_List;

        [Display(AutoGenerateFilter = false)]
        public object Contractor_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Contractor_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Contractor_Delete;


//Contractor_Order
        [Display(AutoGenerateFilter = false)]
        public object Contractor_Order_List;

        [Display(AutoGenerateFilter = false)]
        public object Contractor_Order_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Contractor_Order_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Contractor_Order_Delete;

//Notyfication
        [Display(AutoGenerateFilter = false)]
        public object Notification_List;

        [Display(AutoGenerateFilter = false)]
        public object Notification_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Notification_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Notification_Delete;

//Task
        [Display(AutoGenerateFilter = false)]
        public object Task_List;

        [Display(AutoGenerateFilter = false)]
        public object Task_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Task_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Task_Delete;

//Technology
        [Display(AutoGenerateFilter = false)]
        public object Technology_List;

        [Display(AutoGenerateFilter = false)]
        public object Technology_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Technology_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Technology_Delete;

//CNC_Program
        [Display(AutoGenerateFilter = false)]
        public object CNC_Program_List;

        [Display(AutoGenerateFilter = false)]
        public object CNC_Program_Insert;

        [Display(AutoGenerateFilter = false)]
        public object CNC_Program_Edit;

        [Display(AutoGenerateFilter = false)]
        public object CNC_Program_Delete;

//Tool
        [Display(AutoGenerateFilter = false)]
        public object Tool_List;

        [Display(AutoGenerateFilter = false)]
        public object Tool_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Tool_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Tool_Delete;

//Fixture
        [Display(AutoGenerateFilter = false)]
        public object Fixture_List;

        [Display(AutoGenerateFilter = false)]
        public object Fixture_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Fixture_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Fixture_Delete;

//Quality
        [Display(AutoGenerateFilter = false)]
        public object Quality_List;

        [Display(AutoGenerateFilter = false)]
        public object Quality_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Quality_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Quality_Delete;

//CMM_Program
        [Display(AutoGenerateFilter = false)]
        public object CMM_Program_List;

        [Display(AutoGenerateFilter = false)]
        public object CMM_Program_Insert;

        [Display(AutoGenerateFilter = false)]
        public object CMM_Program_Edit;

        [Display(AutoGenerateFilter = false)]
        public object CMM_Program_Delete;


//Users
        [Display(AutoGenerateFilter = false)]
        public object Users_List;

        [Display(AutoGenerateFilter = false)]
        public object Users_Insert;

        [Display(AutoGenerateFilter = false)]
        public object Users_Edit;

        [Display(AutoGenerateFilter = false)]
        public object Users_Delete;

//FormTemplates
        [Display(AutoGenerateFilter = false)]
        public object FormTemplates_List;

        [Display(AutoGenerateFilter = false)]
        public object FormTemplates_Insert;

        [Display(AutoGenerateFilter = false)]
        public object FormTemplates_Edit;

        [Display(AutoGenerateFilter = false)]
        public object FormTemplates_Delete;  

//Admin
        [Display(AutoGenerateFilter = false)]
        public object Admin;


        //powiązania

        [Display(AutoGenerateField=false)]
        public object Notifications;

        [Display(AutoGenerateField = false)]
        public object Customers;

        [Display(AutoGenerateField = false)]
        public object Customer_Contacts;

        [Display(AutoGenerateField = false)]
        public object Comments;

        [Display(AutoGenerateField = false)]
        public object Contractor_Orders;

        [Display(AutoGenerateField = false)]
        public object Contractor_Contacts;

        [Display(AutoGenerateField = false)]
        public object Contractors;

        [Display(AutoGenerateField = false)]
        public object Scores;

        [Display(AutoGenerateField = false)]
        public object Customer_Products;

        [Display(AutoGenerateField = false)]
        public object Customer_Parts;

        [Display(AutoGenerateField = false)]
        public object Customer_Part_Indexes;

        [Display(AutoGenerateField = false)]
        public object Customer_Product_Indexex;

        [Display(AutoGenerateField = false)]
        public object Customer_Files;

        [Display(AutoGenerateField = false)]
        public object Technology;

        [Display(AutoGenerateField = false)]
        public object Technology1;

       

        [Display(AutoGenerateField = false)]
        public object Technology_Stage;

        [Display(AutoGenerateField = false)]
        public object Technology_Dwg;

        [Display(AutoGenerateField = false)]
        public object Quality_Instruction;

        [Display(AutoGenerateField = false)]
        public object Quality_Instruction_Index;

        [Display(AutoGenerateField = false)]
        public object Technology_Dwg_Index;

        [Display(AutoGenerateField = false)]
        public object Technology_Dwg_Index1;

        [Display(AutoGenerateField = false)]
        public object Quality_Instruction_Index1;

        [Display(AutoGenerateField = false)]
        public object CNC_Program;



        [Display(AutoGenerateField = false)]
        public object Technology_Files;

        [Display(AutoGenerateField = false)]
        public object Technology_Instruction_Index;

        [Display(AutoGenerateField = false)]
        public object Technology_Instruction_Index1;

        [Display(AutoGenerateField = false)]
        public object Technology_Instruction;

  

        [Display(AutoGenerateField = false)]
        public object CNC_Program2;

        [Display(AutoGenerateField = false)]
        public object CMM_Program_Index;



      

        [Display(AutoGenerateField = false)]
        public object Technology2;

        [Display(AutoGenerateField = false)]
        public object Fixture;


        [Display(AutoGenerateField = false)]
        public object CNC_Subprogram_Index;

        [Display(AutoGenerateField = false)]
        public object CNC_Subprogram_Index1;

        [Display(AutoGenerateField = false)]
        public object CNC_Subrogram;


      
    }

}
    


  