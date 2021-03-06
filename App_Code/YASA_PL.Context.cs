﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class YASA_PLContainer : DbContext
{
    public YASA_PLContainer()
        : base("name=YASA_PLContainer")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<User> Users { get; set; }
    public DbSet<Customer> CustomerSet { get; set; }
    public DbSet<Customer_Contact> Customer_ContactSet1 { get; set; }
    public DbSet<Customer_Order> Customer_OrderSet1 { get; set; }
    public DbSet<Technology_Index> Technology_IndexSet { get; set; }
    public DbSet<Technology_Stage> Technology_StageSet { get; set; }
    public DbSet<Technology_Dwg> Technology_DwgSet { get; set; }
    public DbSet<CNC_Program_Index> CNC_Program_IndexSet { get; set; }
    public DbSet<CNC_Machine> CNC_MachineSet { get; set; }
    public DbSet<Fixture> FixtureSet { get; set; }
    public DbSet<Production_Order> Production_OrderSet { get; set; }
    public DbSet<Customer_Product> Customer_ProductSet { get; set; }
    public DbSet<Customer_Part> Customer_PartSet { get; set; }
    public DbSet<Notification> NotificationSet { get; set; }
    public DbSet<CNC_Subprogram_Index> CNC_Subprogram_IndexSet { get; set; }
    public DbSet<Country> Countries { get; set; }
    public DbSet<Department> Departments { get; set; }
    public DbSet<Position> Positions { get; set; }
    public DbSet<Customer_Product_Index> Customer_Product_IndexSet { get; set; }
    public DbSet<Customer_Part_Index> Customer_Part_IndexSet { get; set; }
    public DbSet<Customer_Files> Customer_FilesSet { get; set; }
    public DbSet<Quality_Instruction> Quality_InstructionSet { get; set; }
    public DbSet<Contractor> ContractorSet { get; set; }
    public DbSet<Contractor_Contact> Contractor_ContactSet { get; set; }
    public DbSet<Contractor_Order> Contractor_OrderSet { get; set; }
    public DbSet<Score> ScoreSet { get; set; }
    public DbSet<Contractor_category> Contractor_categorySet { get; set; }
    public DbSet<Technology_Changes> Technology_ChangesSet { get; set; }
    public DbSet<Comment> CommentSet { get; set; }
    public DbSet<Technology_Dwg_Index> Technology_Dwg_IndexSet { get; set; }
    public DbSet<Quality_Instruction_Index> Quality_Instruction_IndexSet { get; set; }
    public DbSet<Technology_Files> Technology_FilesSet { get; set; }
    public DbSet<Technology_Instruction> Technology_InstructionSet { get; set; }
    public DbSet<Technology_Instruction_Index> Technology_Instruction_IndexSet { get; set; }
    public DbSet<CNC_Program> CNC_ProgramSet { get; set; }
    public DbSet<Technology> TechnologySet { get; set; }
    public DbSet<CNC_Subprogram> CNC_SubprogramSet { get; set; }
    public DbSet<Change_Request> Change_RequestSet { get; set; }
    public DbSet<Task> TaskSet { get; set; }
    public DbSet<FormTemplates> FormTemplatesSet { get; set; }
    public DbSet<FormType> FormTypeSet { get; set; }
    public DbSet<FormTemplate_Files> FormTemplate_FilesSet { get; set; }
    public DbSet<QualityDocumentation> QualityDocumentationSet { get; set; }
    public DbSet<QualityDocumentationType> QualityDocumentationTypeSet { get; set; }
    public DbSet<QualityDocumentation_Files> QualityDocumentation_FilesSet { get; set; }
    public DbSet<Fixture_Document_File> Fixture_Document_FileSet { get; set; }
    public DbSet<Fixture_Document_Type> Fixture_Document_TypeSet { get; set; }
    public DbSet<Tool_Element> Tool_ElementSet { get; set; }
    public DbSet<Tool> ToolSet { get; set; }
    public DbSet<Tool_Document_File> Tool_Document_FileSet { get; set; }
    public DbSet<Tool_Document_Type> Tool_Document_TypeSet { get; set; }
    public DbSet<Tool_Type> Tool_TypeSet { get; set; }
    public DbSet<TaskStatus> TaskStatusSet { get; set; }
    public DbSet<NotificationStatus> NotificationStatusSet { get; set; }
    public DbSet<NotificationType> NotificationTypeSet { get; set; }
    public DbSet<DocumentInOut> DocumentInOutSet { get; set; }
    public DbSet<Technology_Dwg_Files> Technology_Dwg_FilesSet { get; set; }
    public DbSet<Setup_Sheet_Files> Setup_Sheet_FilesSet { get; set; }
    public DbSet<Setup_Sheet> Setup_SheetSet { get; set; }
    public DbSet<Setup_Sheet_Index> Setup_Sheet_IndexSet { get; set; }
    public DbSet<CNC_Program_Files> CNC_Program_FilesSet { get; set; }
    public DbSet<CNC_Subprogram_Files> CNC_Subprogram_FilesSet { get; set; }
    public DbSet<CNC_Machine_Files> CNC_Machine_FilesSet { get; set; }
    public DbSet<CNC_Machine_Type> CNC_Machine_TypeSet { get; set; }
    public DbSet<Quality_Instruction_Files> Quality_Instruction_FilesSet { get; set; }
    public DbSet<Quality_Chart> Quality_ChartSet { get; set; }
    public DbSet<Quality_Chart_Index> Quality_Chart_IndexSet { get; set; }
    public DbSet<Quality_Chart_Files> Quality_Chart_FilesSet { get; set; }
    public DbSet<Standard> StandardSet { get; set; }
    public DbSet<Organization> OrganizationSet { get; set; }
    public DbSet<Standard_Files> Standard_FilesSet { get; set; }
    public DbSet<CNC_Status> CNC_StatusSet { get; set; }
    public DbSet<CMM_Program> CMM_ProgramSet { get; set; }
    public DbSet<CMM_Program_Index> CMM_Program_IndexSet { get; set; }
    public DbSet<CMM_Status> CMM_StatusSet { get; set; }
    public DbSet<CMM_Program_Files> CMM_Program_FilesSet { get; set; }
    public DbSet<Article_type> Article_typeSet { get; set; }
    public DbSet<Production_material> Production_materialSet { get; set; }
    internal DbSet<ToolCNC_Program> ToolCNC_ProgramSet { get; set; }
    public DbSet<Tool_Assembly_Type> Tool_Assembly_TypeSet { get; set; }
    public DbSet<Tool_Holder_System> Tool_Holder_SystemSet { get; set; }
    public DbSet<Order_Status> Order_StatusSet { get; set; }
}
