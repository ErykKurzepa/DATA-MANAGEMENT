
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/06/2016 12:30:16
-- Generated from EDMX file: D:\LEOPEK_DATABASE\LEOPEK_DATABASE_06.02.2016\App_Code\YASA_PL.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [YASA_PL];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CustomerCustomer_Contact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_ContactSet1] DROP CONSTRAINT [FK_CustomerCustomer_Contact];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerCustomer_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_ProductSet] DROP CONSTRAINT [FK_CustomerCustomer_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerCustomer_Part]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_PartSet] DROP CONSTRAINT [FK_CustomerCustomer_Part];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerSet] DROP CONSTRAINT [FK_CountryCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_OrderProduction_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Production_OrderSet] DROP CONSTRAINT [FK_Customer_OrderProduction_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_UserPosition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserPosition];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_DepartmentUser];
GO
IF OBJECT_ID(N'[dbo].[FK_UserNotification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationSet] DROP CONSTRAINT [FK_UserNotification];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_PartNotification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationSet] DROP CONSTRAINT [FK_Customer_PartNotification];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_ProductNotification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationSet] DROP CONSTRAINT [FK_Customer_ProductNotification];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_IndexCustomer_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_Product_IndexSet] DROP CONSTRAINT [FK_Customer_IndexCustomer_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Part_IndexCustomer_Part]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_Part_IndexSet] DROP CONSTRAINT [FK_Customer_Part_IndexCustomer_Part];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_FilesCustomer_Part_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_FilesSet] DROP CONSTRAINT [FK_Customer_FilesCustomer_Part_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_FilesCustomer_Product_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_FilesSet] DROP CONSTRAINT [FK_Customer_FilesCustomer_Product_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_FilesCustomer_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_FilesSet] DROP CONSTRAINT [FK_Customer_FilesCustomer_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractorContractor_Contact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contractor_ContactSet] DROP CONSTRAINT [FK_ContractorContractor_Contact];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractorContractor_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contractor_OrderSet] DROP CONSTRAINT [FK_ContractorContractor_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractorContractor_category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContractorSet] DROP CONSTRAINT [FK_ContractorContractor_category];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractorCountry]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContractorSet] DROP CONSTRAINT [FK_ContractorCountry];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerSet] DROP CONSTRAINT [FK_CustomerUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_ContactUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_ContactSet1] DROP CONSTRAINT [FK_Customer_ContactUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_CommentUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_CommentCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentCustomer_Contact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_CommentCustomer_Contact];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentContractor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_CommentContractor];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentContractor_Contact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_CommentContractor_Contact];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentContractor_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_CommentContractor_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentCustomer_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_CommentCustomer_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_Contractor_OrderUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contractor_OrderSet] DROP CONSTRAINT [FK_Contractor_OrderUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Contractor_ContactUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contractor_ContactSet] DROP CONSTRAINT [FK_Contractor_ContactUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractorUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContractorSet] DROP CONSTRAINT [FK_ContractorUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ScoreUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ScoreSet] DROP CONSTRAINT [FK_ScoreUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_ProductUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_ProductSet] DROP CONSTRAINT [FK_Customer_ProductUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_PartUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_PartSet] DROP CONSTRAINT [FK_Customer_PartUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Part_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_Part_IndexSet] DROP CONSTRAINT [FK_Customer_Part_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Product_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_Product_IndexSet] DROP CONSTRAINT [FK_Customer_Product_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_FilesSet] DROP CONSTRAINT [FK_Customer_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_PartCustomer_Contact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_PartSet] DROP CONSTRAINT [FK_Customer_PartCustomer_Contact];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_PartCustomer_Contact1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_PartSet] DROP CONSTRAINT [FK_Customer_PartCustomer_Contact1];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_PartCustomer_Contact2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_PartSet] DROP CONSTRAINT [FK_Customer_PartCustomer_Contact2];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_ProductCustomer_Contact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_ProductSet] DROP CONSTRAINT [FK_Customer_ProductCustomer_Contact];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_ProductCustomer_Contact1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_ProductSet] DROP CONSTRAINT [FK_Customer_ProductCustomer_Contact1];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_ProductCustomer_Contact2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_ProductSet] DROP CONSTRAINT [FK_Customer_ProductCustomer_Contact2];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_ProductComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_Customer_ProductComment];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_PartComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_Customer_PartComment];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Part_IndexComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_Customer_Part_IndexComment];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Product_IndexComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_Customer_Product_IndexComment];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_FilesComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_Customer_FilesComment];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Part_IndexCustomer_Product_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer_Part_IndexSet] DROP CONSTRAINT [FK_Customer_Part_IndexCustomer_Product_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_TechnologyUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_IndexSet] DROP CONSTRAINT [FK_TechnologyUser];
GO
IF OBJECT_ID(N'[dbo].[FK_TechnologyUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_IndexSet] DROP CONSTRAINT [FK_TechnologyUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageSet] DROP CONSTRAINT [FK_Technology_StageUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_DwgTechnology_Dwg_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_Dwg_IndexSet] DROP CONSTRAINT [FK_Technology_DwgTechnology_Dwg_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_DwgUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_DwgSet] DROP CONSTRAINT [FK_Technology_DwgUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_InstructionUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_InstructionSet] DROP CONSTRAINT [FK_Quality_InstructionUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_Instruction_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Instruction_IndexSet] DROP CONSTRAINT [FK_Quality_Instruction_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_Dwg_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_Dwg_IndexSet] DROP CONSTRAINT [FK_Technology_Dwg_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_Dwg_IndexUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_Dwg_IndexSet] DROP CONSTRAINT [FK_Technology_Dwg_IndexUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_Instruction_IndexUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Instruction_IndexSet] DROP CONSTRAINT [FK_Quality_Instruction_IndexUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_ProgramUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Program_IndexSet] DROP CONSTRAINT [FK_CNC_ProgramUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_FilesSet] DROP CONSTRAINT [FK_Technology_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_Instruction_IndexTechnology_Instruction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_Instruction_IndexSet] DROP CONSTRAINT [FK_Technology_Instruction_IndexTechnology_Instruction];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_Instruction_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_Instruction_IndexSet] DROP CONSTRAINT [FK_Technology_Instruction_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_Instruction_IndexUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_Instruction_IndexSet] DROP CONSTRAINT [FK_Technology_Instruction_IndexUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_Instruction_IndexTechnology_Files]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_FilesSet] DROP CONSTRAINT [FK_Technology_Instruction_IndexTechnology_Files];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_InstructionUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_InstructionSet] DROP CONSTRAINT [FK_Technology_InstructionUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_InstructionQuality_Instruction_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Instruction_IndexSet] DROP CONSTRAINT [FK_Quality_InstructionQuality_Instruction_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_ProgramCNC_Program_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Program_IndexSet] DROP CONSTRAINT [FK_CNC_ProgramCNC_Program_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_ProgramUser2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_ProgramSet] DROP CONSTRAINT [FK_CNC_ProgramUser2];
GO
IF OBJECT_ID(N'[dbo].[FK_TechnologyUser2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TechnologySet] DROP CONSTRAINT [FK_TechnologyUser2];
GO
IF OBJECT_ID(N'[dbo].[FK_TechnologyTechnology_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_IndexSet] DROP CONSTRAINT [FK_TechnologyTechnology_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_FixtureUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FixtureSet] DROP CONSTRAINT [FK_FixtureUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_SubrogramCNC_Subprogram_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Subprogram_IndexSet] DROP CONSTRAINT [FK_CNC_SubrogramCNC_Subprogram_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Subprogram_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Subprogram_IndexSet] DROP CONSTRAINT [FK_CNC_Subprogram_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_SubrogramUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_SubprogramSet] DROP CONSTRAINT [FK_CNC_SubrogramUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Change_RequestUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Change_RequestSet] DROP CONSTRAINT [FK_Change_RequestUser];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskSet] DROP CONSTRAINT [FK_TaskUser];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskSet] DROP CONSTRAINT [FK_TaskUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskNotification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskSet] DROP CONSTRAINT [FK_TaskNotification];
GO
IF OBJECT_ID(N'[dbo].[FK_FormTypeFormTemplates]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FormTemplatesSet] DROP CONSTRAINT [FK_FormTypeFormTemplates];
GO
IF OBJECT_ID(N'[dbo].[FK_FormTemplate_FilesFormTemplates]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FormTemplate_FilesSet] DROP CONSTRAINT [FK_FormTemplate_FilesFormTemplates];
GO
IF OBJECT_ID(N'[dbo].[FK_QualityDocumentationQualityDocumentationType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QualityDocumentationSet] DROP CONSTRAINT [FK_QualityDocumentationQualityDocumentationType];
GO
IF OBJECT_ID(N'[dbo].[FK_QualityDocumentationQualityDocumentation_Files]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QualityDocumentation_FilesSet] DROP CONSTRAINT [FK_QualityDocumentationQualityDocumentation_Files];
GO
IF OBJECT_ID(N'[dbo].[FK_Fixture_Document_FileFixture_Document_Type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Fixture_Document_FileSet] DROP CONSTRAINT [FK_Fixture_Document_FileFixture_Document_Type];
GO
IF OBJECT_ID(N'[dbo].[FK_FixtureContractor_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FixtureSet] DROP CONSTRAINT [FK_FixtureContractor_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_FixtureContractor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FixtureSet] DROP CONSTRAINT [FK_FixtureContractor];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_Document_TypeTool_Document_File]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tool_Document_FileSet] DROP CONSTRAINT [FK_Tool_Document_TypeTool_Document_File];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_Document_FileTool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tool_Document_FileSet] DROP CONSTRAINT [FK_Tool_Document_FileTool];
GO
IF OBJECT_ID(N'[dbo].[FK_FixtureFixture_Document_File]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Fixture_Document_FileSet] DROP CONSTRAINT [FK_FixtureFixture_Document_File];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_ElementTool_Document_File]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tool_Document_FileSet] DROP CONSTRAINT [FK_Tool_ElementTool_Document_File];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_ElementContractor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tool_ElementSet] DROP CONSTRAINT [FK_Tool_ElementContractor];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_TypeTool_Element]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tool_ElementSet] DROP CONSTRAINT [FK_Tool_TypeTool_Element];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserUser];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_TaskComment];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_NotificationComment];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskTaskStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskSet] DROP CONSTRAINT [FK_TaskTaskStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationNotificationStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationSet] DROP CONSTRAINT [FK_NotificationNotificationStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_NotyficationTypeNotification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationSet] DROP CONSTRAINT [FK_NotyficationTypeNotification];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentInOutUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentInOutSet] DROP CONSTRAINT [FK_DocumentInOutUser];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentInOutUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentInOutSet] DROP CONSTRAINT [FK_DocumentInOutUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_Dwg_FilesTechnology_Dwg_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_Dwg_FilesSet] DROP CONSTRAINT [FK_Technology_Dwg_FilesTechnology_Dwg_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_Dwg_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_Dwg_FilesSet] DROP CONSTRAINT [FK_Technology_Dwg_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Setup_Sheet_FilesSetup_Sheet_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Setup_Sheet_FilesSet] DROP CONSTRAINT [FK_Setup_Sheet_FilesSetup_Sheet_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_Setup_Sheet_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Setup_Sheet_FilesSet] DROP CONSTRAINT [FK_Setup_Sheet_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Setup_SheetSetup_Sheet_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Setup_Sheet_IndexSet] DROP CONSTRAINT [FK_Setup_SheetSetup_Sheet_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_Setup_Sheet_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Setup_Sheet_IndexSet] DROP CONSTRAINT [FK_Setup_Sheet_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Setup_Sheet_IndexUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Setup_Sheet_IndexSet] DROP CONSTRAINT [FK_Setup_Sheet_IndexUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_Setup_SheetUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Setup_SheetSet] DROP CONSTRAINT [FK_Setup_SheetUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_ProgramCNC_Machine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_ProgramSet] DROP CONSTRAINT [FK_CNC_ProgramCNC_Machine];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_SubrogramCNC_Program]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_SubprogramSet] DROP CONSTRAINT [FK_CNC_SubrogramCNC_Program];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Program_FilesCNC_Program_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Program_FilesSet] DROP CONSTRAINT [FK_CNC_Program_FilesCNC_Program_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Subprogram_FilesCNC_Subprogram_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Subprogram_FilesSet] DROP CONSTRAINT [FK_CNC_Subprogram_FilesCNC_Subprogram_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Machine_FilesCNC_Machine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Machine_FilesSet] DROP CONSTRAINT [FK_CNC_Machine_FilesCNC_Machine];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_MachineCNC_Machine_Type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_MachineSet] DROP CONSTRAINT [FK_CNC_MachineCNC_Machine_Type];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_Instruction_FilesQuality_Instruction_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Instruction_FilesSet] DROP CONSTRAINT [FK_Quality_Instruction_FilesQuality_Instruction_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_Instruction_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Instruction_FilesSet] DROP CONSTRAINT [FK_Quality_Instruction_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_InstructionQuality_Instruction_Index1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Chart_IndexSet] DROP CONSTRAINT [FK_Quality_InstructionQuality_Instruction_Index1];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_ChartUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_ChartSet] DROP CONSTRAINT [FK_Quality_ChartUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_Chart_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Chart_IndexSet] DROP CONSTRAINT [FK_Quality_Chart_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_Chart_IndexUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Chart_IndexSet] DROP CONSTRAINT [FK_Quality_Chart_IndexUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_Chart_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Chart_FilesSet] DROP CONSTRAINT [FK_Quality_Chart_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Quality_Chart_FilesQuality_Chart_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quality_Chart_FilesSet] DROP CONSTRAINT [FK_Quality_Chart_FilesQuality_Chart_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_FormTypeFormTemplates1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StandardSet] DROP CONSTRAINT [FK_FormTypeFormTemplates1];
GO
IF OBJECT_ID(N'[dbo].[FK_Standard_FilesStandard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Standard_FilesSet] DROP CONSTRAINT [FK_Standard_FilesStandard];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_ProgramFixture]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_ProgramSet] DROP CONSTRAINT [FK_CNC_ProgramFixture];
GO
IF OBJECT_ID(N'[dbo].[FK_ToolUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToolSet] DROP CONSTRAINT [FK_ToolUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_ElementUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tool_ElementSet] DROP CONSTRAINT [FK_Tool_ElementUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_Document_FileUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tool_Document_FileSet] DROP CONSTRAINT [FK_Tool_Document_FileUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Program_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Program_IndexSet] DROP CONSTRAINT [FK_CNC_Program_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_StatusCNC_Program_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Program_IndexSet] DROP CONSTRAINT [FK_CNC_StatusCNC_Program_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Subprogram_IndexCNC_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Subprogram_IndexSet] DROP CONSTRAINT [FK_CNC_Subprogram_IndexCNC_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Subprogram_IndexUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Subprogram_IndexSet] DROP CONSTRAINT [FK_CNC_Subprogram_IndexUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Program_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Program_FilesSet] DROP CONSTRAINT [FK_CNC_Program_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CNC_Subprogram_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_Subprogram_FilesSet] DROP CONSTRAINT [FK_CNC_Subprogram_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_Program_IndexCMM_Program]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_Program_IndexSet] DROP CONSTRAINT [FK_CMM_Program_IndexCMM_Program];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_Program_IndexCMM_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_Program_IndexSet] DROP CONSTRAINT [FK_CMM_Program_IndexCMM_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_Program_FilesCMM_Program_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_Program_FilesSet] DROP CONSTRAINT [FK_CMM_Program_FilesCMM_Program_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_ProgramUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_ProgramSet] DROP CONSTRAINT [FK_CMM_ProgramUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_Program_IndexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_Program_IndexSet] DROP CONSTRAINT [FK_CMM_Program_IndexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_Program_IndexUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_Program_IndexSet] DROP CONSTRAINT [FK_CMM_Program_IndexUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_Program_FilesUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_Program_FilesSet] DROP CONSTRAINT [FK_CMM_Program_FilesUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_ProgramFixture]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_ProgramSet] DROP CONSTRAINT [FK_CMM_ProgramFixture];
GO
IF OBJECT_ID(N'[dbo].[FK_CMM_ProgramCNC_Machine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_ProgramSet] DROP CONSTRAINT [FK_CMM_ProgramCNC_Machine];
GO
IF OBJECT_ID(N'[dbo].[FK_Contractor_OrderArticle_type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contractor_OrderSet] DROP CONSTRAINT [FK_Contractor_OrderArticle_type];
GO
IF OBJECT_ID(N'[dbo].[FK_ScoreContractor_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ScoreSet] DROP CONSTRAINT [FK_ScoreContractor_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_TechnologyCustomer_Part_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TechnologySet] DROP CONSTRAINT [FK_TechnologyCustomer_Part_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_TechnologyProduction_material]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TechnologySet] DROP CONSTRAINT [FK_TechnologyProduction_material];
GO
IF OBJECT_ID(N'[dbo].[FK_Production_materialUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Production_materialSet] DROP CONSTRAINT [FK_Production_materialUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Production_materialContractor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Production_materialSet] DROP CONSTRAINT [FK_Production_materialContractor];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageTechnology_Index]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageSet] DROP CONSTRAINT [FK_Technology_StageTechnology_Index];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageTechnology_Instruction_Technology_Stage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageTechnology_Instruction] DROP CONSTRAINT [FK_Technology_StageTechnology_Instruction_Technology_Stage];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageTechnology_Instruction_Technology_Instruction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageTechnology_Instruction] DROP CONSTRAINT [FK_Technology_StageTechnology_Instruction_Technology_Instruction];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageTechnology_Dwg_Technology_Stage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageTechnology_Dwg] DROP CONSTRAINT [FK_Technology_StageTechnology_Dwg_Technology_Stage];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageTechnology_Dwg_Technology_Dwg]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageTechnology_Dwg] DROP CONSTRAINT [FK_Technology_StageTechnology_Dwg_Technology_Dwg];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageSetup_Sheet_Technology_Stage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageSetup_Sheet] DROP CONSTRAINT [FK_Technology_StageSetup_Sheet_Technology_Stage];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageSetup_Sheet_Setup_Sheet]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageSetup_Sheet] DROP CONSTRAINT [FK_Technology_StageSetup_Sheet_Setup_Sheet];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageCNC_Program_Technology_Stage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageCNC_Program] DROP CONSTRAINT [FK_Technology_StageCNC_Program_Technology_Stage];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageCNC_Program_CNC_Program]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageCNC_Program] DROP CONSTRAINT [FK_Technology_StageCNC_Program_CNC_Program];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageQuality_Instruction_Technology_Stage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageQuality_Instruction] DROP CONSTRAINT [FK_Technology_StageQuality_Instruction_Technology_Stage];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageQuality_Instruction_Quality_Instruction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageQuality_Instruction] DROP CONSTRAINT [FK_Technology_StageQuality_Instruction_Quality_Instruction];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageQuality_Chart_Technology_Stage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageQuality_Chart] DROP CONSTRAINT [FK_Technology_StageQuality_Chart_Technology_Stage];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageQuality_Chart_Quality_Chart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageQuality_Chart] DROP CONSTRAINT [FK_Technology_StageQuality_Chart_Quality_Chart];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageCMM_Program_Technology_Stage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageCMM_Program] DROP CONSTRAINT [FK_Technology_StageCMM_Program_Technology_Stage];
GO
IF OBJECT_ID(N'[dbo].[FK_Technology_StageCMM_Program_CMM_Program]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Technology_StageCMM_Program] DROP CONSTRAINT [FK_Technology_StageCMM_Program_CMM_Program];
GO
IF OBJECT_ID(N'[dbo].[FK_ToolTool_Element_Tool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToolTool_Element] DROP CONSTRAINT [FK_ToolTool_Element_Tool];
GO
IF OBJECT_ID(N'[dbo].[FK_ToolTool_Element_Tool_Element]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToolTool_Element] DROP CONSTRAINT [FK_ToolTool_Element_Tool_Element];
GO
IF OBJECT_ID(N'[dbo].[FK_ToolCNC_ProgramCNC_Program]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToolCNC_ProgramSet] DROP CONSTRAINT [FK_ToolCNC_ProgramCNC_Program];
GO
IF OBJECT_ID(N'[dbo].[FK_ToolCNC_ProgramTool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToolCNC_ProgramSet] DROP CONSTRAINT [FK_ToolCNC_ProgramTool];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_Assembly_TypeTool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToolSet] DROP CONSTRAINT [FK_Tool_Assembly_TypeTool];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_Holder_SystemCNC_Machine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_MachineSet] DROP CONSTRAINT [FK_Tool_Holder_SystemCNC_Machine];
GO
IF OBJECT_ID(N'[dbo].[FK_Tool_Holder_SystemTool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToolSet] DROP CONSTRAINT [FK_Tool_Holder_SystemTool];
GO
IF OBJECT_ID(N'[dbo].[FK_Setup_SheetCNC_Program]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CNC_ProgramSet] DROP CONSTRAINT [FK_Setup_SheetCNC_Program];
GO
IF OBJECT_ID(N'[dbo].[FK_Setup_SheetCMM_Program]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CMM_ProgramSet] DROP CONSTRAINT [FK_Setup_SheetCMM_Program];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_StatusContractor_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contractor_OrderSet] DROP CONSTRAINT [FK_Order_StatusContractor_Order];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[CustomerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerSet];
GO
IF OBJECT_ID(N'[dbo].[Customer_ContactSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer_ContactSet1];
GO
IF OBJECT_ID(N'[dbo].[Customer_OrderSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer_OrderSet1];
GO
IF OBJECT_ID(N'[dbo].[Technology_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[Technology_StageSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_StageSet];
GO
IF OBJECT_ID(N'[dbo].[Technology_DwgSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_DwgSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_Program_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_Program_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_MachineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_MachineSet];
GO
IF OBJECT_ID(N'[dbo].[FixtureSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FixtureSet];
GO
IF OBJECT_ID(N'[dbo].[Production_OrderSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Production_OrderSet];
GO
IF OBJECT_ID(N'[dbo].[Customer_ProductSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer_ProductSet];
GO
IF OBJECT_ID(N'[dbo].[Customer_PartSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer_PartSet];
GO
IF OBJECT_ID(N'[dbo].[NotificationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NotificationSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_Subprogram_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_Subprogram_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[Countries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Countries];
GO
IF OBJECT_ID(N'[dbo].[Departments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departments];
GO
IF OBJECT_ID(N'[dbo].[Positions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Positions];
GO
IF OBJECT_ID(N'[dbo].[Customer_Product_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer_Product_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[Customer_Part_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer_Part_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[Customer_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[Quality_InstructionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Quality_InstructionSet];
GO
IF OBJECT_ID(N'[dbo].[ContractorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContractorSet];
GO
IF OBJECT_ID(N'[dbo].[Contractor_ContactSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contractor_ContactSet];
GO
IF OBJECT_ID(N'[dbo].[Contractor_OrderSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contractor_OrderSet];
GO
IF OBJECT_ID(N'[dbo].[ScoreSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ScoreSet];
GO
IF OBJECT_ID(N'[dbo].[Contractor_categorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contractor_categorySet];
GO
IF OBJECT_ID(N'[dbo].[Technology_ChangesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_ChangesSet];
GO
IF OBJECT_ID(N'[dbo].[CommentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CommentSet];
GO
IF OBJECT_ID(N'[dbo].[Technology_Dwg_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_Dwg_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[Quality_Instruction_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Quality_Instruction_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[Technology_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[Technology_InstructionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_InstructionSet];
GO
IF OBJECT_ID(N'[dbo].[Technology_Instruction_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_Instruction_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_ProgramSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_ProgramSet];
GO
IF OBJECT_ID(N'[dbo].[TechnologySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TechnologySet];
GO
IF OBJECT_ID(N'[dbo].[CNC_SubprogramSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_SubprogramSet];
GO
IF OBJECT_ID(N'[dbo].[Change_RequestSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Change_RequestSet];
GO
IF OBJECT_ID(N'[dbo].[TaskSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaskSet];
GO
IF OBJECT_ID(N'[dbo].[FormTemplatesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FormTemplatesSet];
GO
IF OBJECT_ID(N'[dbo].[FormTypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FormTypeSet];
GO
IF OBJECT_ID(N'[dbo].[FormTemplate_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FormTemplate_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[QualityDocumentationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QualityDocumentationSet];
GO
IF OBJECT_ID(N'[dbo].[QualityDocumentationTypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QualityDocumentationTypeSet];
GO
IF OBJECT_ID(N'[dbo].[QualityDocumentation_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QualityDocumentation_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[Fixture_Document_FileSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Fixture_Document_FileSet];
GO
IF OBJECT_ID(N'[dbo].[Fixture_Document_TypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Fixture_Document_TypeSet];
GO
IF OBJECT_ID(N'[dbo].[Tool_ElementSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tool_ElementSet];
GO
IF OBJECT_ID(N'[dbo].[ToolSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ToolSet];
GO
IF OBJECT_ID(N'[dbo].[Tool_Document_FileSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tool_Document_FileSet];
GO
IF OBJECT_ID(N'[dbo].[Tool_Document_TypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tool_Document_TypeSet];
GO
IF OBJECT_ID(N'[dbo].[Tool_TypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tool_TypeSet];
GO
IF OBJECT_ID(N'[dbo].[TaskStatusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaskStatusSet];
GO
IF OBJECT_ID(N'[dbo].[NotificationStatusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NotificationStatusSet];
GO
IF OBJECT_ID(N'[dbo].[NotificationTypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NotificationTypeSet];
GO
IF OBJECT_ID(N'[dbo].[DocumentInOutSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentInOutSet];
GO
IF OBJECT_ID(N'[dbo].[Technology_Dwg_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_Dwg_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[Setup_Sheet_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Setup_Sheet_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[Setup_SheetSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Setup_SheetSet];
GO
IF OBJECT_ID(N'[dbo].[Setup_Sheet_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Setup_Sheet_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_Program_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_Program_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_Subprogram_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_Subprogram_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_Machine_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_Machine_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_Machine_TypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_Machine_TypeSet];
GO
IF OBJECT_ID(N'[dbo].[Quality_Instruction_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Quality_Instruction_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[Quality_ChartSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Quality_ChartSet];
GO
IF OBJECT_ID(N'[dbo].[Quality_Chart_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Quality_Chart_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[Quality_Chart_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Quality_Chart_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[StandardSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StandardSet];
GO
IF OBJECT_ID(N'[dbo].[OrganizationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrganizationSet];
GO
IF OBJECT_ID(N'[dbo].[Standard_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Standard_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[CNC_StatusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CNC_StatusSet];
GO
IF OBJECT_ID(N'[dbo].[CMM_ProgramSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CMM_ProgramSet];
GO
IF OBJECT_ID(N'[dbo].[CMM_Program_IndexSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CMM_Program_IndexSet];
GO
IF OBJECT_ID(N'[dbo].[CMM_StatusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CMM_StatusSet];
GO
IF OBJECT_ID(N'[dbo].[CMM_Program_FilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CMM_Program_FilesSet];
GO
IF OBJECT_ID(N'[dbo].[Article_typeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Article_typeSet];
GO
IF OBJECT_ID(N'[dbo].[Production_materialSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Production_materialSet];
GO
IF OBJECT_ID(N'[dbo].[ToolCNC_ProgramSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ToolCNC_ProgramSet];
GO
IF OBJECT_ID(N'[dbo].[Tool_Assembly_TypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tool_Assembly_TypeSet];
GO
IF OBJECT_ID(N'[dbo].[Tool_Holder_SystemSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tool_Holder_SystemSet];
GO
IF OBJECT_ID(N'[dbo].[Order_StatusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order_StatusSet];
GO
IF OBJECT_ID(N'[dbo].[Technology_StageTechnology_Instruction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_StageTechnology_Instruction];
GO
IF OBJECT_ID(N'[dbo].[Technology_StageTechnology_Dwg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_StageTechnology_Dwg];
GO
IF OBJECT_ID(N'[dbo].[Technology_StageSetup_Sheet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_StageSetup_Sheet];
GO
IF OBJECT_ID(N'[dbo].[Technology_StageCNC_Program]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_StageCNC_Program];
GO
IF OBJECT_ID(N'[dbo].[Technology_StageQuality_Instruction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_StageQuality_Instruction];
GO
IF OBJECT_ID(N'[dbo].[Technology_StageQuality_Chart]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_StageQuality_Chart];
GO
IF OBJECT_ID(N'[dbo].[Technology_StageCMM_Program]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Technology_StageCMM_Program];
GO
IF OBJECT_ID(N'[dbo].[ToolTool_Element]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ToolTool_Element];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [F_Name] nvarchar(max)  NOT NULL,
    [L_Name] nvarchar(max)  NOT NULL,
    [PositionId] int  NOT NULL,
    [DepartmentId] int  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [W_Phone_No] nvarchar(max)  NOT NULL,
    [M_Phone_No] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Customer_List] bit  NULL,
    [Customer_Insert] bit  NULL,
    [Customer_Edit] bit  NULL,
    [Customer_Delete] bit  NULL,
    [Customer_Part_List] bit  NULL,
    [Customer_Part_Insert] bit  NULL,
    [Customer_Part_Edit] bit  NULL,
    [Customer_Part_Delete] bit  NULL,
    [Customer_Order_List] bit  NULL,
    [Customer_Order_Insert] bit  NULL,
    [Customer_Order_Edit] bit  NULL,
    [Customer_Order_Delete] bit  NULL,
    [Contractor_List] bit  NULL,
    [Contractor_Insert] bit  NULL,
    [Contractor_Edit] bit  NULL,
    [Contractor_Delete] bit  NULL,
    [Contractor_Order_List] bit  NULL,
    [Contractor_Order_Insert] bit  NULL,
    [Contractor_Order_Edit] bit  NULL,
    [Contractor_Order_Delete] bit  NULL,
    [Notification_List] bit  NULL,
    [Notification_Insert] bit  NULL,
    [Notification_Edit] bit  NULL,
    [Notification_Delete] bit  NULL,
    [Task_List] bit  NULL,
    [Task_Insert] bit  NULL,
    [Task_Edit] bit  NULL,
    [Task_Delete] bit  NULL,
    [Technology_List] bit  NULL,
    [Technology_Insert] bit  NULL,
    [Technology_Edit] bit  NULL,
    [Technology_Delete] bit  NULL,
    [CNC_Program_List] bit  NULL,
    [CNC_Program_Insert] bit  NULL,
    [CNC_Program_Edit] bit  NULL,
    [CNC_Program_Delete] bit  NULL,
    [Tool_List] bit  NULL,
    [Tool_Insert] bit  NULL,
    [Tool_Edit] bit  NULL,
    [Tool_Delete] bit  NULL,
    [Fixture_List] bit  NULL,
    [Fixture_Insert] bit  NULL,
    [Fixture_Edit] bit  NULL,
    [Fixture_Delete] bit  NULL,
    [Quality_List] bit  NULL,
    [Quality_Insert] bit  NULL,
    [Quality_Edit] bit  NULL,
    [Quality_Delete] bit  NULL,
    [CMM_Program_List] bit  NULL,
    [CMM_Program_Insert] bit  NULL,
    [CMM_Program_Edit] bit  NULL,
    [CMM_Program_Delete] bit  NULL,
    [Users_List] bit  NULL,
    [Users_Insert] bit  NULL,
    [Users_Edit] bit  NULL,
    [Users_Delete] bit  NULL,
    [FormTemplates_List] bit  NULL,
    [FormTemplates_Insert] bit  NULL,
    [FormTemplates_Edit] bit  NULL,
    [FormTemplates_Delete] bit  NULL,
    [Admin] bit  NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'CustomerSet'
CREATE TABLE [dbo].[CustomerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Postal_Code] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [Www] nvarchar(max)  NULL,
    [CountryId] int  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Customer_ContactSet1'
CREATE TABLE [dbo].[Customer_ContactSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [F_Name] nvarchar(max)  NOT NULL,
    [L_Name] nvarchar(max)  NOT NULL,
    [Position] nvarchar(max)  NULL,
    [W_Phone_No] nvarchar(max)  NULL,
    [M_Phone_No] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [Department] nvarchar(max)  NULL,
    [CustomerId] int  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Customer_OrderSet1'
CREATE TABLE [dbo].[Customer_OrderSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [Date] datetime  NOT NULL,
    [Quantity] nvarchar(max)  NOT NULL,
    [Date_required] datetime  NOT NULL
);
GO

-- Creating table 'Technology_IndexSet'
CREATE TABLE [dbo].[Technology_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] bigint  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [UserId_created] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId_approced] int  NULL,
    [Date_approved] datetime  NULL,
    [TechnologyId] int  NOT NULL
);
GO

-- Creating table 'Technology_StageSet'
CREATE TABLE [dbo].[Technology_StageSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Number] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Operation_time] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Technology_IndexId] int  NOT NULL
);
GO

-- Creating table 'Technology_DwgSet'
CREATE TABLE [dbo].[Technology_DwgSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'CNC_Program_IndexSet'
CREATE TABLE [dbo].[CNC_Program_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] int  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [CNC_ProgramId] int  NOT NULL,
    [Date_approved] datetime  NOT NULL,
    [UserId_approved] int  NOT NULL,
    [CNC_StatusId] int  NOT NULL
);
GO

-- Creating table 'CNC_MachineSet'
CREATE TABLE [dbo].[CNC_MachineSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Manufacturer] nvarchar(max)  NOT NULL,
    [Serial_number] nvarchar(max)  NOT NULL,
    [Model] nvarchar(max)  NOT NULL,
    [Moc] smallint  NULL,
    [Control] nvarchar(max)  NOT NULL,
    [Axis] smallint  NULL,
    [Date_purchased] datetime  NOT NULL,
    [Max_spindle] smallint  NULL,
    [CNC_Machine_TypeId] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Tool_Holder_SystemId] int  NOT NULL
);
GO

-- Creating table 'FixtureSet'
CREATE TABLE [dbo].[FixtureSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [ContractorId] int  NOT NULL,
    [Contractor_OrderId] int  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Production_OrderSet'
CREATE TABLE [dbo].[Production_OrderSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Customer_OrderId] int  NOT NULL,
    [Amount_required] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Customer_ProductSet'
CREATE TABLE [dbo].[Customer_ProductSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [CustomerId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Customer_Contact_sales_Id] int  NULL,
    [Customer_Contact_technology_Id] int  NULL,
    [Customer_Contact_quality_Id] int  NULL
);
GO

-- Creating table 'Customer_PartSet'
CREATE TABLE [dbo].[Customer_PartSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [CustomerId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Customer_Contact_sales_Id] int  NULL,
    [Customer_Contact_technology_Id] int  NULL,
    [Customer_Contact_quality_Id] int  NULL
);
GO

-- Creating table 'NotificationSet'
CREATE TABLE [dbo].[NotificationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Customer_PartId] int  NULL,
    [Customer_ProductId] int  NULL,
    [RequiredEndDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [UserId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [NotificationStatusId] int  NOT NULL,
    [NotyficationTypeId] int  NOT NULL
);
GO

-- Creating table 'CNC_Subprogram_IndexSet'
CREATE TABLE [dbo].[CNC_Subprogram_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] int  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [CNC_SubprogramId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [CNC_StatusId] int  NOT NULL,
    [Date_approved] datetime  NOT NULL,
    [UserId_approved] int  NOT NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Positions'
CREATE TABLE [dbo].[Positions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Customer_Product_IndexSet'
CREATE TABLE [dbo].[Customer_Product_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] nvarchar(max)  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Index_designer] nvarchar(max)  NOT NULL,
    [Index_date] datetime  NOT NULL,
    [Customer_ProductId] int  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Date_received] datetime  NOT NULL
);
GO

-- Creating table 'Customer_Part_IndexSet'
CREATE TABLE [dbo].[Customer_Part_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] nvarchar(max)  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Index_designer] nvarchar(max)  NOT NULL,
    [Index_date] datetime  NOT NULL,
    [Customer_PartId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Date_received] datetime  NOT NULL,
    [Customer_Product_IndexId] int  NULL
);
GO

-- Creating table 'Customer_FilesSet'
CREATE TABLE [dbo].[Customer_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [Typ] smallint  NOT NULL,
    [Customer_Part_IndexId] int  NULL,
    [Customer_Product_IndexId] int  NULL,
    [Customer_OrderId] int  NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Quality_InstructionSet'
CREATE TABLE [dbo].[Quality_InstructionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'ContractorSet'
CREATE TABLE [dbo].[ContractorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Postal_Code] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [Www] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [Contractor_categoryId] int  NOT NULL,
    [CountryId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Contractor_ContactSet'
CREATE TABLE [dbo].[Contractor_ContactSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [F_Name] nvarchar(max)  NOT NULL,
    [L_Name] nvarchar(max)  NOT NULL,
    [W_Phone_No] nvarchar(max)  NULL,
    [M_Phone_No] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [Department] nvarchar(max)  NULL,
    [ContractorId] int  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Position] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Contractor_OrderSet'
CREATE TABLE [dbo].[Contractor_OrderSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Date_required] datetime  NOT NULL,
    [Date_delivered] datetime  NULL,
    [ContractorId] int  NOT NULL,
    [Total_price] float  NOT NULL,
    [UserId] int  NOT NULL,
    [Contractor_offer_name_number] nvarchar(max)  NOT NULL,
    [Article_typeId] int  NOT NULL,
    [Order_StatusId] int  NOT NULL
);
GO

-- Creating table 'ScoreSet'
CREATE TABLE [dbo].[ScoreSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Delivery_time] smallint  NOT NULL,
    [Price] smallint  NOT NULL,
    [Contact] smallint  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Quality] smallint  NOT NULL,
    [Contractor_OrderId] int  NOT NULL
);
GO

-- Creating table 'Contractor_categorySet'
CREATE TABLE [dbo].[Contractor_categorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nazwa] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Technology_ChangesSet'
CREATE TABLE [dbo].[Technology_ChangesSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'CommentSet'
CREATE TABLE [dbo].[CommentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [CustomerId] int  NULL,
    [Customer_ContactId] int  NULL,
    [ContractorId] int  NULL,
    [Contractor_ContactId] int  NULL,
    [Contractor_OrderId] int  NULL,
    [Customer_OrderId] int  NULL,
    [Customer_ProductId] int  NULL,
    [Customer_PartId] int  NULL,
    [Customer_Part_IndexId] int  NULL,
    [Customer_Product_IndexId] int  NULL,
    [Customer_FilesId] int  NULL,
    [TaskId] int  NULL,
    [NotificationId] int  NULL
);
GO

-- Creating table 'Technology_Dwg_IndexSet'
CREATE TABLE [dbo].[Technology_Dwg_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] int  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Technology_DwgId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Date_approved] datetime  NOT NULL,
    [UserId_approved] int  NOT NULL
);
GO

-- Creating table 'Quality_Instruction_IndexSet'
CREATE TABLE [dbo].[Quality_Instruction_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] int  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Quality_InstructionId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [UserId_approved] int  NULL,
    [Date_approved] nvarchar(max)  NULL
);
GO

-- Creating table 'Technology_FilesSet'
CREATE TABLE [dbo].[Technology_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Technology_Instruction_IndexId] int  NOT NULL
);
GO

-- Creating table 'Technology_InstructionSet'
CREATE TABLE [dbo].[Technology_InstructionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Technology_Instruction_IndexSet'
CREATE TABLE [dbo].[Technology_Instruction_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Index_number] int  NOT NULL,
    [Technology_InstructionId] int  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Date_approved] datetime  NOT NULL,
    [UserId_approved] int  NOT NULL
);
GO

-- Creating table 'CNC_ProgramSet'
CREATE TABLE [dbo].[CNC_ProgramSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [CNC_MachineId] int  NOT NULL,
    [FixtureId] int  NULL,
    [Setup_SheetId] int  NULL
);
GO

-- Creating table 'TechnologySet'
CREATE TABLE [dbo].[TechnologySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Customer_Part_IndexId] int  NOT NULL,
    [Production_materialId] int  NOT NULL
);
GO

-- Creating table 'CNC_SubprogramSet'
CREATE TABLE [dbo].[CNC_SubprogramSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [CNC_ProgramId] int  NOT NULL
);
GO

-- Creating table 'Change_RequestSet'
CREATE TABLE [dbo].[Change_RequestSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'TaskSet'
CREATE TABLE [dbo].[TaskSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [EndDate] datetime  NULL,
    [UserIdTask] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [NotificationId] int  NULL,
    [StartDate] datetime  NOT NULL,
    [RequiredEndDate] datetime  NOT NULL,
    [Priorytet] int  NOT NULL,
    [TaskStatusId] int  NOT NULL
);
GO

-- Creating table 'FormTemplatesSet'
CREATE TABLE [dbo].[FormTemplatesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [FormTypeId] int  NOT NULL
);
GO

-- Creating table 'FormTypeSet'
CREATE TABLE [dbo].[FormTypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FormTemplate_FilesSet'
CREATE TABLE [dbo].[FormTemplate_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Index] smallint  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [FormTemplatesId] int  NOT NULL
);
GO

-- Creating table 'QualityDocumentationSet'
CREATE TABLE [dbo].[QualityDocumentationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [QualityDocumentationTypeId] int  NOT NULL
);
GO

-- Creating table 'QualityDocumentationTypeSet'
CREATE TABLE [dbo].[QualityDocumentationTypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'QualityDocumentation_FilesSet'
CREATE TABLE [dbo].[QualityDocumentation_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Index] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [QualityDocumentationId] int  NOT NULL
);
GO

-- Creating table 'Fixture_Document_FileSet'
CREATE TABLE [dbo].[Fixture_Document_FileSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [Index] int  NOT NULL,
    [Fixture_Document_TypeId] int  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] bigint  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [FixtureId] int  NULL
);
GO

-- Creating table 'Fixture_Document_TypeSet'
CREATE TABLE [dbo].[Fixture_Document_TypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tool_ElementSet'
CREATE TABLE [dbo].[Tool_ElementSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [ContractorId] int  NOT NULL,
    [Tool_TypeId] int  NOT NULL,
    [Catalog_number] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'ToolSet'
CREATE TABLE [dbo].[ToolSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Tool_Number] nvarchar(max)  NOT NULL,
    [Tool_Assembly_TypeId] int  NOT NULL,
    [Tool_Holder_SystemId] int  NOT NULL
);
GO

-- Creating table 'Tool_Document_FileSet'
CREATE TABLE [dbo].[Tool_Document_FileSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Tool_Document_TypeId] int  NOT NULL,
    [ToolId] int  NULL,
    [Tool_ElementId] int  NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Tool_Document_TypeSet'
CREATE TABLE [dbo].[Tool_Document_TypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tool_TypeSet'
CREATE TABLE [dbo].[Tool_TypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TaskStatusSet'
CREATE TABLE [dbo].[TaskStatusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NotificationStatusSet'
CREATE TABLE [dbo].[NotificationStatusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NotificationTypeSet'
CREATE TABLE [dbo].[NotificationTypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DocumentInOutSet'
CREATE TABLE [dbo].[DocumentInOutSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date_out] nvarchar(max)  NOT NULL,
    [Date_in] nvarchar(max)  NULL,
    [UserId] int  NOT NULL,
    [UserId1] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Technology_Dwg_FilesSet'
CREATE TABLE [dbo].[Technology_Dwg_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Technology_Dwg_IndexId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Setup_Sheet_FilesSet'
CREATE TABLE [dbo].[Setup_Sheet_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Setup_Sheet_IndexId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Setup_SheetSet'
CREATE TABLE [dbo].[Setup_SheetSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Setup_Sheet_IndexSet'
CREATE TABLE [dbo].[Setup_Sheet_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] int  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Setup_SheetId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Date_approved] datetime  NOT NULL,
    [UserId_approved] int  NOT NULL
);
GO

-- Creating table 'CNC_Program_FilesSet'
CREATE TABLE [dbo].[CNC_Program_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [CNC_Program_IndexId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'CNC_Subprogram_FilesSet'
CREATE TABLE [dbo].[CNC_Subprogram_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [CNC_Subprogram_IndexId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'CNC_Machine_FilesSet'
CREATE TABLE [dbo].[CNC_Machine_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CNC_MachineId] int  NOT NULL
);
GO

-- Creating table 'CNC_Machine_TypeSet'
CREATE TABLE [dbo].[CNC_Machine_TypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Quality_Instruction_FilesSet'
CREATE TABLE [dbo].[Quality_Instruction_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Quality_Instruction_IndexId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Quality_ChartSet'
CREATE TABLE [dbo].[Quality_ChartSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Quality_Chart_IndexSet'
CREATE TABLE [dbo].[Quality_Chart_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] int  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Quality_ChartId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Date_approved] nvarchar(max)  NULL,
    [UserId] int  NOT NULL,
    [UserId_approved] int  NOT NULL
);
GO

-- Creating table 'Quality_Chart_FilesSet'
CREATE TABLE [dbo].[Quality_Chart_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Quality_Chart_IndexId] int  NOT NULL
);
GO

-- Creating table 'StandardSet'
CREATE TABLE [dbo].[StandardSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [OrganizationId] int  NOT NULL
);
GO

-- Creating table 'OrganizationSet'
CREATE TABLE [dbo].[OrganizationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Standard_FilesSet'
CREATE TABLE [dbo].[Standard_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index] nvarchar(max)  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Index_date] datetime  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Date_created_modified] datetime  NOT NULL,
    [StandardId] int  NOT NULL
);
GO

-- Creating table 'CNC_StatusSet'
CREATE TABLE [dbo].[CNC_StatusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CMM_ProgramSet'
CREATE TABLE [dbo].[CMM_ProgramSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [FixtureId] int  NULL,
    [CNC_MachineId] int  NOT NULL,
    [Setup_SheetId] int  NULL
);
GO

-- Creating table 'CMM_Program_IndexSet'
CREATE TABLE [dbo].[CMM_Program_IndexSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Index_number] int  NOT NULL,
    [Index_description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [Date_approved] datetime  NOT NULL,
    [CMM_ProgramId] int  NOT NULL,
    [CMM_StatusId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [UserId_approved] int  NOT NULL
);
GO

-- Creating table 'CMM_StatusSet'
CREATE TABLE [dbo].[CMM_StatusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CMM_Program_FilesSet'
CREATE TABLE [dbo].[CMM_Program_FilesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [File_title] nvarchar(max)  NOT NULL,
    [File_name_number] nvarchar(max)  NOT NULL,
    [filePath] nvarchar(max)  NULL,
    [File_extension] nvarchar(max)  NULL,
    [File_size] decimal(18,0)  NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [CMM_Program_IndexId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Article_typeSet'
CREATE TABLE [dbo].[Article_typeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Production_materialSet'
CREATE TABLE [dbo].[Production_materialSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL,
    [Date_created_modified] datetime  NOT NULL,
    [ContractorId] int  NOT NULL
);
GO

-- Creating table 'ToolCNC_ProgramSet'
CREATE TABLE [dbo].[ToolCNC_ProgramSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CNC_ProgramId] int  NOT NULL,
    [ToolId] int  NOT NULL
);
GO

-- Creating table 'Tool_Assembly_TypeSet'
CREATE TABLE [dbo].[Tool_Assembly_TypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tool_Holder_SystemSet'
CREATE TABLE [dbo].[Tool_Holder_SystemSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Order_StatusSet'
CREATE TABLE [dbo].[Order_StatusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Technology_StageTechnology_Instruction'
CREATE TABLE [dbo].[Technology_StageTechnology_Instruction] (
    [Technology_Stage_Id] int  NOT NULL,
    [Technology_Instruction_Id] int  NOT NULL
);
GO

-- Creating table 'Technology_StageTechnology_Dwg'
CREATE TABLE [dbo].[Technology_StageTechnology_Dwg] (
    [Technology_Stage_Id] int  NOT NULL,
    [Technology_Dwg_Id] int  NOT NULL
);
GO

-- Creating table 'Technology_StageSetup_Sheet'
CREATE TABLE [dbo].[Technology_StageSetup_Sheet] (
    [Technology_Stage_Id] int  NOT NULL,
    [Setup_Sheet_Id] int  NOT NULL
);
GO

-- Creating table 'Technology_StageCNC_Program'
CREATE TABLE [dbo].[Technology_StageCNC_Program] (
    [Technology_Stage_Id] int  NOT NULL,
    [CNC_Program_Id] int  NOT NULL
);
GO

-- Creating table 'Technology_StageQuality_Instruction'
CREATE TABLE [dbo].[Technology_StageQuality_Instruction] (
    [Technology_Stage_Id] int  NOT NULL,
    [Quality_Instruction_Id] int  NOT NULL
);
GO

-- Creating table 'Technology_StageQuality_Chart'
CREATE TABLE [dbo].[Technology_StageQuality_Chart] (
    [Technology_Stage_Id] int  NOT NULL,
    [Quality_Chart_Id] int  NOT NULL
);
GO

-- Creating table 'Technology_StageCMM_Program'
CREATE TABLE [dbo].[Technology_StageCMM_Program] (
    [Technology_Stage_Id] int  NOT NULL,
    [CMM_Program_Id] int  NOT NULL
);
GO

-- Creating table 'ToolTool_Element'
CREATE TABLE [dbo].[ToolTool_Element] (
    [Tool_Id] int  NOT NULL,
    [Tool_Element_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CustomerSet'
ALTER TABLE [dbo].[CustomerSet]
ADD CONSTRAINT [PK_CustomerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customer_ContactSet1'
ALTER TABLE [dbo].[Customer_ContactSet1]
ADD CONSTRAINT [PK_Customer_ContactSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customer_OrderSet1'
ALTER TABLE [dbo].[Customer_OrderSet1]
ADD CONSTRAINT [PK_Customer_OrderSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_IndexSet'
ALTER TABLE [dbo].[Technology_IndexSet]
ADD CONSTRAINT [PK_Technology_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_StageSet'
ALTER TABLE [dbo].[Technology_StageSet]
ADD CONSTRAINT [PK_Technology_StageSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_DwgSet'
ALTER TABLE [dbo].[Technology_DwgSet]
ADD CONSTRAINT [PK_Technology_DwgSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_Program_IndexSet'
ALTER TABLE [dbo].[CNC_Program_IndexSet]
ADD CONSTRAINT [PK_CNC_Program_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_MachineSet'
ALTER TABLE [dbo].[CNC_MachineSet]
ADD CONSTRAINT [PK_CNC_MachineSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FixtureSet'
ALTER TABLE [dbo].[FixtureSet]
ADD CONSTRAINT [PK_FixtureSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Production_OrderSet'
ALTER TABLE [dbo].[Production_OrderSet]
ADD CONSTRAINT [PK_Production_OrderSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customer_ProductSet'
ALTER TABLE [dbo].[Customer_ProductSet]
ADD CONSTRAINT [PK_Customer_ProductSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customer_PartSet'
ALTER TABLE [dbo].[Customer_PartSet]
ADD CONSTRAINT [PK_Customer_PartSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NotificationSet'
ALTER TABLE [dbo].[NotificationSet]
ADD CONSTRAINT [PK_NotificationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_Subprogram_IndexSet'
ALTER TABLE [dbo].[CNC_Subprogram_IndexSet]
ADD CONSTRAINT [PK_CNC_Subprogram_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Positions'
ALTER TABLE [dbo].[Positions]
ADD CONSTRAINT [PK_Positions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customer_Product_IndexSet'
ALTER TABLE [dbo].[Customer_Product_IndexSet]
ADD CONSTRAINT [PK_Customer_Product_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customer_Part_IndexSet'
ALTER TABLE [dbo].[Customer_Part_IndexSet]
ADD CONSTRAINT [PK_Customer_Part_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customer_FilesSet'
ALTER TABLE [dbo].[Customer_FilesSet]
ADD CONSTRAINT [PK_Customer_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Quality_InstructionSet'
ALTER TABLE [dbo].[Quality_InstructionSet]
ADD CONSTRAINT [PK_Quality_InstructionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ContractorSet'
ALTER TABLE [dbo].[ContractorSet]
ADD CONSTRAINT [PK_ContractorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contractor_ContactSet'
ALTER TABLE [dbo].[Contractor_ContactSet]
ADD CONSTRAINT [PK_Contractor_ContactSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contractor_OrderSet'
ALTER TABLE [dbo].[Contractor_OrderSet]
ADD CONSTRAINT [PK_Contractor_OrderSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ScoreSet'
ALTER TABLE [dbo].[ScoreSet]
ADD CONSTRAINT [PK_ScoreSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contractor_categorySet'
ALTER TABLE [dbo].[Contractor_categorySet]
ADD CONSTRAINT [PK_Contractor_categorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_ChangesSet'
ALTER TABLE [dbo].[Technology_ChangesSet]
ADD CONSTRAINT [PK_Technology_ChangesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [PK_CommentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_Dwg_IndexSet'
ALTER TABLE [dbo].[Technology_Dwg_IndexSet]
ADD CONSTRAINT [PK_Technology_Dwg_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Quality_Instruction_IndexSet'
ALTER TABLE [dbo].[Quality_Instruction_IndexSet]
ADD CONSTRAINT [PK_Quality_Instruction_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_FilesSet'
ALTER TABLE [dbo].[Technology_FilesSet]
ADD CONSTRAINT [PK_Technology_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_InstructionSet'
ALTER TABLE [dbo].[Technology_InstructionSet]
ADD CONSTRAINT [PK_Technology_InstructionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_Instruction_IndexSet'
ALTER TABLE [dbo].[Technology_Instruction_IndexSet]
ADD CONSTRAINT [PK_Technology_Instruction_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_ProgramSet'
ALTER TABLE [dbo].[CNC_ProgramSet]
ADD CONSTRAINT [PK_CNC_ProgramSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TechnologySet'
ALTER TABLE [dbo].[TechnologySet]
ADD CONSTRAINT [PK_TechnologySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_SubprogramSet'
ALTER TABLE [dbo].[CNC_SubprogramSet]
ADD CONSTRAINT [PK_CNC_SubprogramSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Change_RequestSet'
ALTER TABLE [dbo].[Change_RequestSet]
ADD CONSTRAINT [PK_Change_RequestSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TaskSet'
ALTER TABLE [dbo].[TaskSet]
ADD CONSTRAINT [PK_TaskSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FormTemplatesSet'
ALTER TABLE [dbo].[FormTemplatesSet]
ADD CONSTRAINT [PK_FormTemplatesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FormTypeSet'
ALTER TABLE [dbo].[FormTypeSet]
ADD CONSTRAINT [PK_FormTypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FormTemplate_FilesSet'
ALTER TABLE [dbo].[FormTemplate_FilesSet]
ADD CONSTRAINT [PK_FormTemplate_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QualityDocumentationSet'
ALTER TABLE [dbo].[QualityDocumentationSet]
ADD CONSTRAINT [PK_QualityDocumentationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QualityDocumentationTypeSet'
ALTER TABLE [dbo].[QualityDocumentationTypeSet]
ADD CONSTRAINT [PK_QualityDocumentationTypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QualityDocumentation_FilesSet'
ALTER TABLE [dbo].[QualityDocumentation_FilesSet]
ADD CONSTRAINT [PK_QualityDocumentation_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Fixture_Document_FileSet'
ALTER TABLE [dbo].[Fixture_Document_FileSet]
ADD CONSTRAINT [PK_Fixture_Document_FileSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Fixture_Document_TypeSet'
ALTER TABLE [dbo].[Fixture_Document_TypeSet]
ADD CONSTRAINT [PK_Fixture_Document_TypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tool_ElementSet'
ALTER TABLE [dbo].[Tool_ElementSet]
ADD CONSTRAINT [PK_Tool_ElementSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ToolSet'
ALTER TABLE [dbo].[ToolSet]
ADD CONSTRAINT [PK_ToolSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tool_Document_FileSet'
ALTER TABLE [dbo].[Tool_Document_FileSet]
ADD CONSTRAINT [PK_Tool_Document_FileSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tool_Document_TypeSet'
ALTER TABLE [dbo].[Tool_Document_TypeSet]
ADD CONSTRAINT [PK_Tool_Document_TypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tool_TypeSet'
ALTER TABLE [dbo].[Tool_TypeSet]
ADD CONSTRAINT [PK_Tool_TypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TaskStatusSet'
ALTER TABLE [dbo].[TaskStatusSet]
ADD CONSTRAINT [PK_TaskStatusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NotificationStatusSet'
ALTER TABLE [dbo].[NotificationStatusSet]
ADD CONSTRAINT [PK_NotificationStatusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NotificationTypeSet'
ALTER TABLE [dbo].[NotificationTypeSet]
ADD CONSTRAINT [PK_NotificationTypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DocumentInOutSet'
ALTER TABLE [dbo].[DocumentInOutSet]
ADD CONSTRAINT [PK_DocumentInOutSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Technology_Dwg_FilesSet'
ALTER TABLE [dbo].[Technology_Dwg_FilesSet]
ADD CONSTRAINT [PK_Technology_Dwg_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Setup_Sheet_FilesSet'
ALTER TABLE [dbo].[Setup_Sheet_FilesSet]
ADD CONSTRAINT [PK_Setup_Sheet_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Setup_SheetSet'
ALTER TABLE [dbo].[Setup_SheetSet]
ADD CONSTRAINT [PK_Setup_SheetSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Setup_Sheet_IndexSet'
ALTER TABLE [dbo].[Setup_Sheet_IndexSet]
ADD CONSTRAINT [PK_Setup_Sheet_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_Program_FilesSet'
ALTER TABLE [dbo].[CNC_Program_FilesSet]
ADD CONSTRAINT [PK_CNC_Program_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_Subprogram_FilesSet'
ALTER TABLE [dbo].[CNC_Subprogram_FilesSet]
ADD CONSTRAINT [PK_CNC_Subprogram_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_Machine_FilesSet'
ALTER TABLE [dbo].[CNC_Machine_FilesSet]
ADD CONSTRAINT [PK_CNC_Machine_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_Machine_TypeSet'
ALTER TABLE [dbo].[CNC_Machine_TypeSet]
ADD CONSTRAINT [PK_CNC_Machine_TypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Quality_Instruction_FilesSet'
ALTER TABLE [dbo].[Quality_Instruction_FilesSet]
ADD CONSTRAINT [PK_Quality_Instruction_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Quality_ChartSet'
ALTER TABLE [dbo].[Quality_ChartSet]
ADD CONSTRAINT [PK_Quality_ChartSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Quality_Chart_IndexSet'
ALTER TABLE [dbo].[Quality_Chart_IndexSet]
ADD CONSTRAINT [PK_Quality_Chart_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Quality_Chart_FilesSet'
ALTER TABLE [dbo].[Quality_Chart_FilesSet]
ADD CONSTRAINT [PK_Quality_Chart_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'StandardSet'
ALTER TABLE [dbo].[StandardSet]
ADD CONSTRAINT [PK_StandardSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OrganizationSet'
ALTER TABLE [dbo].[OrganizationSet]
ADD CONSTRAINT [PK_OrganizationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Standard_FilesSet'
ALTER TABLE [dbo].[Standard_FilesSet]
ADD CONSTRAINT [PK_Standard_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CNC_StatusSet'
ALTER TABLE [dbo].[CNC_StatusSet]
ADD CONSTRAINT [PK_CNC_StatusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CMM_ProgramSet'
ALTER TABLE [dbo].[CMM_ProgramSet]
ADD CONSTRAINT [PK_CMM_ProgramSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CMM_Program_IndexSet'
ALTER TABLE [dbo].[CMM_Program_IndexSet]
ADD CONSTRAINT [PK_CMM_Program_IndexSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CMM_StatusSet'
ALTER TABLE [dbo].[CMM_StatusSet]
ADD CONSTRAINT [PK_CMM_StatusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CMM_Program_FilesSet'
ALTER TABLE [dbo].[CMM_Program_FilesSet]
ADD CONSTRAINT [PK_CMM_Program_FilesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Article_typeSet'
ALTER TABLE [dbo].[Article_typeSet]
ADD CONSTRAINT [PK_Article_typeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Production_materialSet'
ALTER TABLE [dbo].[Production_materialSet]
ADD CONSTRAINT [PK_Production_materialSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ToolCNC_ProgramSet'
ALTER TABLE [dbo].[ToolCNC_ProgramSet]
ADD CONSTRAINT [PK_ToolCNC_ProgramSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tool_Assembly_TypeSet'
ALTER TABLE [dbo].[Tool_Assembly_TypeSet]
ADD CONSTRAINT [PK_Tool_Assembly_TypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tool_Holder_SystemSet'
ALTER TABLE [dbo].[Tool_Holder_SystemSet]
ADD CONSTRAINT [PK_Tool_Holder_SystemSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Order_StatusSet'
ALTER TABLE [dbo].[Order_StatusSet]
ADD CONSTRAINT [PK_Order_StatusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Technology_Stage_Id], [Technology_Instruction_Id] in table 'Technology_StageTechnology_Instruction'
ALTER TABLE [dbo].[Technology_StageTechnology_Instruction]
ADD CONSTRAINT [PK_Technology_StageTechnology_Instruction]
    PRIMARY KEY CLUSTERED ([Technology_Stage_Id], [Technology_Instruction_Id] ASC);
GO

-- Creating primary key on [Technology_Stage_Id], [Technology_Dwg_Id] in table 'Technology_StageTechnology_Dwg'
ALTER TABLE [dbo].[Technology_StageTechnology_Dwg]
ADD CONSTRAINT [PK_Technology_StageTechnology_Dwg]
    PRIMARY KEY CLUSTERED ([Technology_Stage_Id], [Technology_Dwg_Id] ASC);
GO

-- Creating primary key on [Technology_Stage_Id], [Setup_Sheet_Id] in table 'Technology_StageSetup_Sheet'
ALTER TABLE [dbo].[Technology_StageSetup_Sheet]
ADD CONSTRAINT [PK_Technology_StageSetup_Sheet]
    PRIMARY KEY CLUSTERED ([Technology_Stage_Id], [Setup_Sheet_Id] ASC);
GO

-- Creating primary key on [Technology_Stage_Id], [CNC_Program_Id] in table 'Technology_StageCNC_Program'
ALTER TABLE [dbo].[Technology_StageCNC_Program]
ADD CONSTRAINT [PK_Technology_StageCNC_Program]
    PRIMARY KEY CLUSTERED ([Technology_Stage_Id], [CNC_Program_Id] ASC);
GO

-- Creating primary key on [Technology_Stage_Id], [Quality_Instruction_Id] in table 'Technology_StageQuality_Instruction'
ALTER TABLE [dbo].[Technology_StageQuality_Instruction]
ADD CONSTRAINT [PK_Technology_StageQuality_Instruction]
    PRIMARY KEY CLUSTERED ([Technology_Stage_Id], [Quality_Instruction_Id] ASC);
GO

-- Creating primary key on [Technology_Stage_Id], [Quality_Chart_Id] in table 'Technology_StageQuality_Chart'
ALTER TABLE [dbo].[Technology_StageQuality_Chart]
ADD CONSTRAINT [PK_Technology_StageQuality_Chart]
    PRIMARY KEY CLUSTERED ([Technology_Stage_Id], [Quality_Chart_Id] ASC);
GO

-- Creating primary key on [Technology_Stage_Id], [CMM_Program_Id] in table 'Technology_StageCMM_Program'
ALTER TABLE [dbo].[Technology_StageCMM_Program]
ADD CONSTRAINT [PK_Technology_StageCMM_Program]
    PRIMARY KEY CLUSTERED ([Technology_Stage_Id], [CMM_Program_Id] ASC);
GO

-- Creating primary key on [Tool_Id], [Tool_Element_Id] in table 'ToolTool_Element'
ALTER TABLE [dbo].[ToolTool_Element]
ADD CONSTRAINT [PK_ToolTool_Element]
    PRIMARY KEY CLUSTERED ([Tool_Id], [Tool_Element_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CustomerId] in table 'Customer_ContactSet1'
ALTER TABLE [dbo].[Customer_ContactSet1]
ADD CONSTRAINT [FK_CustomerCustomer_Contact]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[CustomerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCustomer_Contact'
CREATE INDEX [IX_FK_CustomerCustomer_Contact]
ON [dbo].[Customer_ContactSet1]
    ([CustomerId]);
GO

-- Creating foreign key on [CustomerId] in table 'Customer_ProductSet'
ALTER TABLE [dbo].[Customer_ProductSet]
ADD CONSTRAINT [FK_CustomerCustomer_Product]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[CustomerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCustomer_Product'
CREATE INDEX [IX_FK_CustomerCustomer_Product]
ON [dbo].[Customer_ProductSet]
    ([CustomerId]);
GO

-- Creating foreign key on [CustomerId] in table 'Customer_PartSet'
ALTER TABLE [dbo].[Customer_PartSet]
ADD CONSTRAINT [FK_CustomerCustomer_Part]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[CustomerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCustomer_Part'
CREATE INDEX [IX_FK_CustomerCustomer_Part]
ON [dbo].[Customer_PartSet]
    ([CustomerId]);
GO

-- Creating foreign key on [CountryId] in table 'CustomerSet'
ALTER TABLE [dbo].[CustomerSet]
ADD CONSTRAINT [FK_CountryCustomer]
    FOREIGN KEY ([CountryId])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryCustomer'
CREATE INDEX [IX_FK_CountryCustomer]
ON [dbo].[CustomerSet]
    ([CountryId]);
GO

-- Creating foreign key on [Customer_OrderId] in table 'Production_OrderSet'
ALTER TABLE [dbo].[Production_OrderSet]
ADD CONSTRAINT [FK_Customer_OrderProduction_Order]
    FOREIGN KEY ([Customer_OrderId])
    REFERENCES [dbo].[Customer_OrderSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_OrderProduction_Order'
CREATE INDEX [IX_FK_Customer_OrderProduction_Order]
ON [dbo].[Production_OrderSet]
    ([Customer_OrderId]);
GO

-- Creating foreign key on [PositionId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserPosition]
    FOREIGN KEY ([PositionId])
    REFERENCES [dbo].[Positions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserPosition'
CREATE INDEX [IX_FK_UserPosition]
ON [dbo].[Users]
    ([PositionId]);
GO

-- Creating foreign key on [DepartmentId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_DepartmentUser]
    FOREIGN KEY ([DepartmentId])
    REFERENCES [dbo].[Departments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentUser'
CREATE INDEX [IX_FK_DepartmentUser]
ON [dbo].[Users]
    ([DepartmentId]);
GO

-- Creating foreign key on [UserId] in table 'NotificationSet'
ALTER TABLE [dbo].[NotificationSet]
ADD CONSTRAINT [FK_UserNotification]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserNotification'
CREATE INDEX [IX_FK_UserNotification]
ON [dbo].[NotificationSet]
    ([UserId]);
GO

-- Creating foreign key on [Customer_PartId] in table 'NotificationSet'
ALTER TABLE [dbo].[NotificationSet]
ADD CONSTRAINT [FK_Customer_PartNotification]
    FOREIGN KEY ([Customer_PartId])
    REFERENCES [dbo].[Customer_PartSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_PartNotification'
CREATE INDEX [IX_FK_Customer_PartNotification]
ON [dbo].[NotificationSet]
    ([Customer_PartId]);
GO

-- Creating foreign key on [Customer_ProductId] in table 'NotificationSet'
ALTER TABLE [dbo].[NotificationSet]
ADD CONSTRAINT [FK_Customer_ProductNotification]
    FOREIGN KEY ([Customer_ProductId])
    REFERENCES [dbo].[Customer_ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_ProductNotification'
CREATE INDEX [IX_FK_Customer_ProductNotification]
ON [dbo].[NotificationSet]
    ([Customer_ProductId]);
GO

-- Creating foreign key on [Customer_ProductId] in table 'Customer_Product_IndexSet'
ALTER TABLE [dbo].[Customer_Product_IndexSet]
ADD CONSTRAINT [FK_Customer_IndexCustomer_Product]
    FOREIGN KEY ([Customer_ProductId])
    REFERENCES [dbo].[Customer_ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_IndexCustomer_Product'
CREATE INDEX [IX_FK_Customer_IndexCustomer_Product]
ON [dbo].[Customer_Product_IndexSet]
    ([Customer_ProductId]);
GO

-- Creating foreign key on [Customer_PartId] in table 'Customer_Part_IndexSet'
ALTER TABLE [dbo].[Customer_Part_IndexSet]
ADD CONSTRAINT [FK_Customer_Part_IndexCustomer_Part]
    FOREIGN KEY ([Customer_PartId])
    REFERENCES [dbo].[Customer_PartSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Part_IndexCustomer_Part'
CREATE INDEX [IX_FK_Customer_Part_IndexCustomer_Part]
ON [dbo].[Customer_Part_IndexSet]
    ([Customer_PartId]);
GO

-- Creating foreign key on [Customer_Part_IndexId] in table 'Customer_FilesSet'
ALTER TABLE [dbo].[Customer_FilesSet]
ADD CONSTRAINT [FK_Customer_FilesCustomer_Part_Index]
    FOREIGN KEY ([Customer_Part_IndexId])
    REFERENCES [dbo].[Customer_Part_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_FilesCustomer_Part_Index'
CREATE INDEX [IX_FK_Customer_FilesCustomer_Part_Index]
ON [dbo].[Customer_FilesSet]
    ([Customer_Part_IndexId]);
GO

-- Creating foreign key on [Customer_Product_IndexId] in table 'Customer_FilesSet'
ALTER TABLE [dbo].[Customer_FilesSet]
ADD CONSTRAINT [FK_Customer_FilesCustomer_Product_Index]
    FOREIGN KEY ([Customer_Product_IndexId])
    REFERENCES [dbo].[Customer_Product_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_FilesCustomer_Product_Index'
CREATE INDEX [IX_FK_Customer_FilesCustomer_Product_Index]
ON [dbo].[Customer_FilesSet]
    ([Customer_Product_IndexId]);
GO

-- Creating foreign key on [Customer_OrderId] in table 'Customer_FilesSet'
ALTER TABLE [dbo].[Customer_FilesSet]
ADD CONSTRAINT [FK_Customer_FilesCustomer_Order]
    FOREIGN KEY ([Customer_OrderId])
    REFERENCES [dbo].[Customer_OrderSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_FilesCustomer_Order'
CREATE INDEX [IX_FK_Customer_FilesCustomer_Order]
ON [dbo].[Customer_FilesSet]
    ([Customer_OrderId]);
GO

-- Creating foreign key on [ContractorId] in table 'Contractor_ContactSet'
ALTER TABLE [dbo].[Contractor_ContactSet]
ADD CONSTRAINT [FK_ContractorContractor_Contact]
    FOREIGN KEY ([ContractorId])
    REFERENCES [dbo].[ContractorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractorContractor_Contact'
CREATE INDEX [IX_FK_ContractorContractor_Contact]
ON [dbo].[Contractor_ContactSet]
    ([ContractorId]);
GO

-- Creating foreign key on [ContractorId] in table 'Contractor_OrderSet'
ALTER TABLE [dbo].[Contractor_OrderSet]
ADD CONSTRAINT [FK_ContractorContractor_Order]
    FOREIGN KEY ([ContractorId])
    REFERENCES [dbo].[ContractorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractorContractor_Order'
CREATE INDEX [IX_FK_ContractorContractor_Order]
ON [dbo].[Contractor_OrderSet]
    ([ContractorId]);
GO

-- Creating foreign key on [Contractor_categoryId] in table 'ContractorSet'
ALTER TABLE [dbo].[ContractorSet]
ADD CONSTRAINT [FK_ContractorContractor_category]
    FOREIGN KEY ([Contractor_categoryId])
    REFERENCES [dbo].[Contractor_categorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractorContractor_category'
CREATE INDEX [IX_FK_ContractorContractor_category]
ON [dbo].[ContractorSet]
    ([Contractor_categoryId]);
GO

-- Creating foreign key on [CountryId] in table 'ContractorSet'
ALTER TABLE [dbo].[ContractorSet]
ADD CONSTRAINT [FK_ContractorCountry]
    FOREIGN KEY ([CountryId])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractorCountry'
CREATE INDEX [IX_FK_ContractorCountry]
ON [dbo].[ContractorSet]
    ([CountryId]);
GO

-- Creating foreign key on [UserId] in table 'CustomerSet'
ALTER TABLE [dbo].[CustomerSet]
ADD CONSTRAINT [FK_CustomerUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerUser'
CREATE INDEX [IX_FK_CustomerUser]
ON [dbo].[CustomerSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Customer_ContactSet1'
ALTER TABLE [dbo].[Customer_ContactSet1]
ADD CONSTRAINT [FK_Customer_ContactUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_ContactUser'
CREATE INDEX [IX_FK_Customer_ContactUser]
ON [dbo].[Customer_ContactSet1]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_CommentUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentUser'
CREATE INDEX [IX_FK_CommentUser]
ON [dbo].[CommentSet]
    ([UserId]);
GO

-- Creating foreign key on [CustomerId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_CommentCustomer]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[CustomerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentCustomer'
CREATE INDEX [IX_FK_CommentCustomer]
ON [dbo].[CommentSet]
    ([CustomerId]);
GO

-- Creating foreign key on [Customer_ContactId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_CommentCustomer_Contact]
    FOREIGN KEY ([Customer_ContactId])
    REFERENCES [dbo].[Customer_ContactSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentCustomer_Contact'
CREATE INDEX [IX_FK_CommentCustomer_Contact]
ON [dbo].[CommentSet]
    ([Customer_ContactId]);
GO

-- Creating foreign key on [ContractorId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_CommentContractor]
    FOREIGN KEY ([ContractorId])
    REFERENCES [dbo].[ContractorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentContractor'
CREATE INDEX [IX_FK_CommentContractor]
ON [dbo].[CommentSet]
    ([ContractorId]);
GO

-- Creating foreign key on [Contractor_ContactId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_CommentContractor_Contact]
    FOREIGN KEY ([Contractor_ContactId])
    REFERENCES [dbo].[Contractor_ContactSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentContractor_Contact'
CREATE INDEX [IX_FK_CommentContractor_Contact]
ON [dbo].[CommentSet]
    ([Contractor_ContactId]);
GO

-- Creating foreign key on [Contractor_OrderId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_CommentContractor_Order]
    FOREIGN KEY ([Contractor_OrderId])
    REFERENCES [dbo].[Contractor_OrderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentContractor_Order'
CREATE INDEX [IX_FK_CommentContractor_Order]
ON [dbo].[CommentSet]
    ([Contractor_OrderId]);
GO

-- Creating foreign key on [Customer_OrderId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_CommentCustomer_Order]
    FOREIGN KEY ([Customer_OrderId])
    REFERENCES [dbo].[Customer_OrderSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentCustomer_Order'
CREATE INDEX [IX_FK_CommentCustomer_Order]
ON [dbo].[CommentSet]
    ([Customer_OrderId]);
GO

-- Creating foreign key on [UserId] in table 'Contractor_OrderSet'
ALTER TABLE [dbo].[Contractor_OrderSet]
ADD CONSTRAINT [FK_Contractor_OrderUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Contractor_OrderUser'
CREATE INDEX [IX_FK_Contractor_OrderUser]
ON [dbo].[Contractor_OrderSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Contractor_ContactSet'
ALTER TABLE [dbo].[Contractor_ContactSet]
ADD CONSTRAINT [FK_Contractor_ContactUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Contractor_ContactUser'
CREATE INDEX [IX_FK_Contractor_ContactUser]
ON [dbo].[Contractor_ContactSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'ContractorSet'
ALTER TABLE [dbo].[ContractorSet]
ADD CONSTRAINT [FK_ContractorUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractorUser'
CREATE INDEX [IX_FK_ContractorUser]
ON [dbo].[ContractorSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'ScoreSet'
ALTER TABLE [dbo].[ScoreSet]
ADD CONSTRAINT [FK_ScoreUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ScoreUser'
CREATE INDEX [IX_FK_ScoreUser]
ON [dbo].[ScoreSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Customer_ProductSet'
ALTER TABLE [dbo].[Customer_ProductSet]
ADD CONSTRAINT [FK_Customer_ProductUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_ProductUser'
CREATE INDEX [IX_FK_Customer_ProductUser]
ON [dbo].[Customer_ProductSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Customer_PartSet'
ALTER TABLE [dbo].[Customer_PartSet]
ADD CONSTRAINT [FK_Customer_PartUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_PartUser'
CREATE INDEX [IX_FK_Customer_PartUser]
ON [dbo].[Customer_PartSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Customer_Part_IndexSet'
ALTER TABLE [dbo].[Customer_Part_IndexSet]
ADD CONSTRAINT [FK_Customer_Part_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Part_IndexUser'
CREATE INDEX [IX_FK_Customer_Part_IndexUser]
ON [dbo].[Customer_Part_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Customer_Product_IndexSet'
ALTER TABLE [dbo].[Customer_Product_IndexSet]
ADD CONSTRAINT [FK_Customer_Product_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Product_IndexUser'
CREATE INDEX [IX_FK_Customer_Product_IndexUser]
ON [dbo].[Customer_Product_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Customer_FilesSet'
ALTER TABLE [dbo].[Customer_FilesSet]
ADD CONSTRAINT [FK_Customer_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_FilesUser'
CREATE INDEX [IX_FK_Customer_FilesUser]
ON [dbo].[Customer_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [Customer_Contact_sales_Id] in table 'Customer_PartSet'
ALTER TABLE [dbo].[Customer_PartSet]
ADD CONSTRAINT [FK_Customer_PartCustomer_Contact]
    FOREIGN KEY ([Customer_Contact_sales_Id])
    REFERENCES [dbo].[Customer_ContactSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_PartCustomer_Contact'
CREATE INDEX [IX_FK_Customer_PartCustomer_Contact]
ON [dbo].[Customer_PartSet]
    ([Customer_Contact_sales_Id]);
GO

-- Creating foreign key on [Customer_Contact_technology_Id] in table 'Customer_PartSet'
ALTER TABLE [dbo].[Customer_PartSet]
ADD CONSTRAINT [FK_Customer_PartCustomer_Contact1]
    FOREIGN KEY ([Customer_Contact_technology_Id])
    REFERENCES [dbo].[Customer_ContactSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_PartCustomer_Contact1'
CREATE INDEX [IX_FK_Customer_PartCustomer_Contact1]
ON [dbo].[Customer_PartSet]
    ([Customer_Contact_technology_Id]);
GO

-- Creating foreign key on [Customer_Contact_quality_Id] in table 'Customer_PartSet'
ALTER TABLE [dbo].[Customer_PartSet]
ADD CONSTRAINT [FK_Customer_PartCustomer_Contact2]
    FOREIGN KEY ([Customer_Contact_quality_Id])
    REFERENCES [dbo].[Customer_ContactSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_PartCustomer_Contact2'
CREATE INDEX [IX_FK_Customer_PartCustomer_Contact2]
ON [dbo].[Customer_PartSet]
    ([Customer_Contact_quality_Id]);
GO

-- Creating foreign key on [Customer_Contact_sales_Id] in table 'Customer_ProductSet'
ALTER TABLE [dbo].[Customer_ProductSet]
ADD CONSTRAINT [FK_Customer_ProductCustomer_Contact]
    FOREIGN KEY ([Customer_Contact_sales_Id])
    REFERENCES [dbo].[Customer_ContactSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_ProductCustomer_Contact'
CREATE INDEX [IX_FK_Customer_ProductCustomer_Contact]
ON [dbo].[Customer_ProductSet]
    ([Customer_Contact_sales_Id]);
GO

-- Creating foreign key on [Customer_Contact_technology_Id] in table 'Customer_ProductSet'
ALTER TABLE [dbo].[Customer_ProductSet]
ADD CONSTRAINT [FK_Customer_ProductCustomer_Contact1]
    FOREIGN KEY ([Customer_Contact_technology_Id])
    REFERENCES [dbo].[Customer_ContactSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_ProductCustomer_Contact1'
CREATE INDEX [IX_FK_Customer_ProductCustomer_Contact1]
ON [dbo].[Customer_ProductSet]
    ([Customer_Contact_technology_Id]);
GO

-- Creating foreign key on [Customer_Contact_quality_Id] in table 'Customer_ProductSet'
ALTER TABLE [dbo].[Customer_ProductSet]
ADD CONSTRAINT [FK_Customer_ProductCustomer_Contact2]
    FOREIGN KEY ([Customer_Contact_quality_Id])
    REFERENCES [dbo].[Customer_ContactSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_ProductCustomer_Contact2'
CREATE INDEX [IX_FK_Customer_ProductCustomer_Contact2]
ON [dbo].[Customer_ProductSet]
    ([Customer_Contact_quality_Id]);
GO

-- Creating foreign key on [Customer_ProductId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_Customer_ProductComment]
    FOREIGN KEY ([Customer_ProductId])
    REFERENCES [dbo].[Customer_ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_ProductComment'
CREATE INDEX [IX_FK_Customer_ProductComment]
ON [dbo].[CommentSet]
    ([Customer_ProductId]);
GO

-- Creating foreign key on [Customer_PartId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_Customer_PartComment]
    FOREIGN KEY ([Customer_PartId])
    REFERENCES [dbo].[Customer_PartSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_PartComment'
CREATE INDEX [IX_FK_Customer_PartComment]
ON [dbo].[CommentSet]
    ([Customer_PartId]);
GO

-- Creating foreign key on [Customer_Part_IndexId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_Customer_Part_IndexComment]
    FOREIGN KEY ([Customer_Part_IndexId])
    REFERENCES [dbo].[Customer_Part_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Part_IndexComment'
CREATE INDEX [IX_FK_Customer_Part_IndexComment]
ON [dbo].[CommentSet]
    ([Customer_Part_IndexId]);
GO

-- Creating foreign key on [Customer_Product_IndexId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_Customer_Product_IndexComment]
    FOREIGN KEY ([Customer_Product_IndexId])
    REFERENCES [dbo].[Customer_Product_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Product_IndexComment'
CREATE INDEX [IX_FK_Customer_Product_IndexComment]
ON [dbo].[CommentSet]
    ([Customer_Product_IndexId]);
GO

-- Creating foreign key on [Customer_FilesId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_Customer_FilesComment]
    FOREIGN KEY ([Customer_FilesId])
    REFERENCES [dbo].[Customer_FilesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_FilesComment'
CREATE INDEX [IX_FK_Customer_FilesComment]
ON [dbo].[CommentSet]
    ([Customer_FilesId]);
GO

-- Creating foreign key on [Customer_Product_IndexId] in table 'Customer_Part_IndexSet'
ALTER TABLE [dbo].[Customer_Part_IndexSet]
ADD CONSTRAINT [FK_Customer_Part_IndexCustomer_Product_Index]
    FOREIGN KEY ([Customer_Product_IndexId])
    REFERENCES [dbo].[Customer_Product_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Part_IndexCustomer_Product_Index'
CREATE INDEX [IX_FK_Customer_Part_IndexCustomer_Product_Index]
ON [dbo].[Customer_Part_IndexSet]
    ([Customer_Product_IndexId]);
GO

-- Creating foreign key on [UserId_created] in table 'Technology_IndexSet'
ALTER TABLE [dbo].[Technology_IndexSet]
ADD CONSTRAINT [FK_TechnologyUser]
    FOREIGN KEY ([UserId_created])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TechnologyUser'
CREATE INDEX [IX_FK_TechnologyUser]
ON [dbo].[Technology_IndexSet]
    ([UserId_created]);
GO

-- Creating foreign key on [UserId_approced] in table 'Technology_IndexSet'
ALTER TABLE [dbo].[Technology_IndexSet]
ADD CONSTRAINT [FK_TechnologyUser1]
    FOREIGN KEY ([UserId_approced])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TechnologyUser1'
CREATE INDEX [IX_FK_TechnologyUser1]
ON [dbo].[Technology_IndexSet]
    ([UserId_approced]);
GO

-- Creating foreign key on [UserId] in table 'Technology_StageSet'
ALTER TABLE [dbo].[Technology_StageSet]
ADD CONSTRAINT [FK_Technology_StageUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageUser'
CREATE INDEX [IX_FK_Technology_StageUser]
ON [dbo].[Technology_StageSet]
    ([UserId]);
GO

-- Creating foreign key on [Technology_DwgId] in table 'Technology_Dwg_IndexSet'
ALTER TABLE [dbo].[Technology_Dwg_IndexSet]
ADD CONSTRAINT [FK_Technology_DwgTechnology_Dwg_Index]
    FOREIGN KEY ([Technology_DwgId])
    REFERENCES [dbo].[Technology_DwgSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_DwgTechnology_Dwg_Index'
CREATE INDEX [IX_FK_Technology_DwgTechnology_Dwg_Index]
ON [dbo].[Technology_Dwg_IndexSet]
    ([Technology_DwgId]);
GO

-- Creating foreign key on [UserId] in table 'Technology_DwgSet'
ALTER TABLE [dbo].[Technology_DwgSet]
ADD CONSTRAINT [FK_Technology_DwgUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_DwgUser'
CREATE INDEX [IX_FK_Technology_DwgUser]
ON [dbo].[Technology_DwgSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Quality_InstructionSet'
ALTER TABLE [dbo].[Quality_InstructionSet]
ADD CONSTRAINT [FK_Quality_InstructionUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_InstructionUser'
CREATE INDEX [IX_FK_Quality_InstructionUser]
ON [dbo].[Quality_InstructionSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Quality_Instruction_IndexSet'
ALTER TABLE [dbo].[Quality_Instruction_IndexSet]
ADD CONSTRAINT [FK_Quality_Instruction_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_Instruction_IndexUser'
CREATE INDEX [IX_FK_Quality_Instruction_IndexUser]
ON [dbo].[Quality_Instruction_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Technology_Dwg_IndexSet'
ALTER TABLE [dbo].[Technology_Dwg_IndexSet]
ADD CONSTRAINT [FK_Technology_Dwg_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_Dwg_IndexUser'
CREATE INDEX [IX_FK_Technology_Dwg_IndexUser]
ON [dbo].[Technology_Dwg_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId_approved] in table 'Technology_Dwg_IndexSet'
ALTER TABLE [dbo].[Technology_Dwg_IndexSet]
ADD CONSTRAINT [FK_Technology_Dwg_IndexUser1]
    FOREIGN KEY ([UserId_approved])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_Dwg_IndexUser1'
CREATE INDEX [IX_FK_Technology_Dwg_IndexUser1]
ON [dbo].[Technology_Dwg_IndexSet]
    ([UserId_approved]);
GO

-- Creating foreign key on [UserId_approved] in table 'Quality_Instruction_IndexSet'
ALTER TABLE [dbo].[Quality_Instruction_IndexSet]
ADD CONSTRAINT [FK_Quality_Instruction_IndexUser1]
    FOREIGN KEY ([UserId_approved])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_Instruction_IndexUser1'
CREATE INDEX [IX_FK_Quality_Instruction_IndexUser1]
ON [dbo].[Quality_Instruction_IndexSet]
    ([UserId_approved]);
GO

-- Creating foreign key on [UserId] in table 'CNC_Program_IndexSet'
ALTER TABLE [dbo].[CNC_Program_IndexSet]
ADD CONSTRAINT [FK_CNC_ProgramUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_ProgramUser'
CREATE INDEX [IX_FK_CNC_ProgramUser]
ON [dbo].[CNC_Program_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Technology_FilesSet'
ALTER TABLE [dbo].[Technology_FilesSet]
ADD CONSTRAINT [FK_Technology_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_FilesUser'
CREATE INDEX [IX_FK_Technology_FilesUser]
ON [dbo].[Technology_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [Technology_InstructionId] in table 'Technology_Instruction_IndexSet'
ALTER TABLE [dbo].[Technology_Instruction_IndexSet]
ADD CONSTRAINT [FK_Technology_Instruction_IndexTechnology_Instruction]
    FOREIGN KEY ([Technology_InstructionId])
    REFERENCES [dbo].[Technology_InstructionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_Instruction_IndexTechnology_Instruction'
CREATE INDEX [IX_FK_Technology_Instruction_IndexTechnology_Instruction]
ON [dbo].[Technology_Instruction_IndexSet]
    ([Technology_InstructionId]);
GO

-- Creating foreign key on [UserId] in table 'Technology_Instruction_IndexSet'
ALTER TABLE [dbo].[Technology_Instruction_IndexSet]
ADD CONSTRAINT [FK_Technology_Instruction_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_Instruction_IndexUser'
CREATE INDEX [IX_FK_Technology_Instruction_IndexUser]
ON [dbo].[Technology_Instruction_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId_approved] in table 'Technology_Instruction_IndexSet'
ALTER TABLE [dbo].[Technology_Instruction_IndexSet]
ADD CONSTRAINT [FK_Technology_Instruction_IndexUser1]
    FOREIGN KEY ([UserId_approved])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_Instruction_IndexUser1'
CREATE INDEX [IX_FK_Technology_Instruction_IndexUser1]
ON [dbo].[Technology_Instruction_IndexSet]
    ([UserId_approved]);
GO

-- Creating foreign key on [Technology_Instruction_IndexId] in table 'Technology_FilesSet'
ALTER TABLE [dbo].[Technology_FilesSet]
ADD CONSTRAINT [FK_Technology_Instruction_IndexTechnology_Files]
    FOREIGN KEY ([Technology_Instruction_IndexId])
    REFERENCES [dbo].[Technology_Instruction_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_Instruction_IndexTechnology_Files'
CREATE INDEX [IX_FK_Technology_Instruction_IndexTechnology_Files]
ON [dbo].[Technology_FilesSet]
    ([Technology_Instruction_IndexId]);
GO

-- Creating foreign key on [UserId] in table 'Technology_InstructionSet'
ALTER TABLE [dbo].[Technology_InstructionSet]
ADD CONSTRAINT [FK_Technology_InstructionUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_InstructionUser'
CREATE INDEX [IX_FK_Technology_InstructionUser]
ON [dbo].[Technology_InstructionSet]
    ([UserId]);
GO

-- Creating foreign key on [Quality_InstructionId] in table 'Quality_Instruction_IndexSet'
ALTER TABLE [dbo].[Quality_Instruction_IndexSet]
ADD CONSTRAINT [FK_Quality_InstructionQuality_Instruction_Index]
    FOREIGN KEY ([Quality_InstructionId])
    REFERENCES [dbo].[Quality_InstructionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_InstructionQuality_Instruction_Index'
CREATE INDEX [IX_FK_Quality_InstructionQuality_Instruction_Index]
ON [dbo].[Quality_Instruction_IndexSet]
    ([Quality_InstructionId]);
GO

-- Creating foreign key on [CNC_ProgramId] in table 'CNC_Program_IndexSet'
ALTER TABLE [dbo].[CNC_Program_IndexSet]
ADD CONSTRAINT [FK_CNC_ProgramCNC_Program_Index]
    FOREIGN KEY ([CNC_ProgramId])
    REFERENCES [dbo].[CNC_ProgramSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_ProgramCNC_Program_Index'
CREATE INDEX [IX_FK_CNC_ProgramCNC_Program_Index]
ON [dbo].[CNC_Program_IndexSet]
    ([CNC_ProgramId]);
GO

-- Creating foreign key on [UserId] in table 'CNC_ProgramSet'
ALTER TABLE [dbo].[CNC_ProgramSet]
ADD CONSTRAINT [FK_CNC_ProgramUser2]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_ProgramUser2'
CREATE INDEX [IX_FK_CNC_ProgramUser2]
ON [dbo].[CNC_ProgramSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'TechnologySet'
ALTER TABLE [dbo].[TechnologySet]
ADD CONSTRAINT [FK_TechnologyUser2]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TechnologyUser2'
CREATE INDEX [IX_FK_TechnologyUser2]
ON [dbo].[TechnologySet]
    ([UserId]);
GO

-- Creating foreign key on [TechnologyId] in table 'Technology_IndexSet'
ALTER TABLE [dbo].[Technology_IndexSet]
ADD CONSTRAINT [FK_TechnologyTechnology_Index]
    FOREIGN KEY ([TechnologyId])
    REFERENCES [dbo].[TechnologySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TechnologyTechnology_Index'
CREATE INDEX [IX_FK_TechnologyTechnology_Index]
ON [dbo].[Technology_IndexSet]
    ([TechnologyId]);
GO

-- Creating foreign key on [UserId] in table 'FixtureSet'
ALTER TABLE [dbo].[FixtureSet]
ADD CONSTRAINT [FK_FixtureUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FixtureUser'
CREATE INDEX [IX_FK_FixtureUser]
ON [dbo].[FixtureSet]
    ([UserId]);
GO

-- Creating foreign key on [CNC_SubprogramId] in table 'CNC_Subprogram_IndexSet'
ALTER TABLE [dbo].[CNC_Subprogram_IndexSet]
ADD CONSTRAINT [FK_CNC_SubrogramCNC_Subprogram_Index]
    FOREIGN KEY ([CNC_SubprogramId])
    REFERENCES [dbo].[CNC_SubprogramSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_SubrogramCNC_Subprogram_Index'
CREATE INDEX [IX_FK_CNC_SubrogramCNC_Subprogram_Index]
ON [dbo].[CNC_Subprogram_IndexSet]
    ([CNC_SubprogramId]);
GO

-- Creating foreign key on [UserId] in table 'CNC_Subprogram_IndexSet'
ALTER TABLE [dbo].[CNC_Subprogram_IndexSet]
ADD CONSTRAINT [FK_CNC_Subprogram_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Subprogram_IndexUser'
CREATE INDEX [IX_FK_CNC_Subprogram_IndexUser]
ON [dbo].[CNC_Subprogram_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'CNC_SubprogramSet'
ALTER TABLE [dbo].[CNC_SubprogramSet]
ADD CONSTRAINT [FK_CNC_SubrogramUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_SubrogramUser'
CREATE INDEX [IX_FK_CNC_SubrogramUser]
ON [dbo].[CNC_SubprogramSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Change_RequestSet'
ALTER TABLE [dbo].[Change_RequestSet]
ADD CONSTRAINT [FK_Change_RequestUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Change_RequestUser'
CREATE INDEX [IX_FK_Change_RequestUser]
ON [dbo].[Change_RequestSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'TaskSet'
ALTER TABLE [dbo].[TaskSet]
ADD CONSTRAINT [FK_TaskUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskUser'
CREATE INDEX [IX_FK_TaskUser]
ON [dbo].[TaskSet]
    ([UserId]);
GO

-- Creating foreign key on [UserIdTask] in table 'TaskSet'
ALTER TABLE [dbo].[TaskSet]
ADD CONSTRAINT [FK_TaskUser1]
    FOREIGN KEY ([UserIdTask])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskUser1'
CREATE INDEX [IX_FK_TaskUser1]
ON [dbo].[TaskSet]
    ([UserIdTask]);
GO

-- Creating foreign key on [NotificationId] in table 'TaskSet'
ALTER TABLE [dbo].[TaskSet]
ADD CONSTRAINT [FK_TaskNotification]
    FOREIGN KEY ([NotificationId])
    REFERENCES [dbo].[NotificationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskNotification'
CREATE INDEX [IX_FK_TaskNotification]
ON [dbo].[TaskSet]
    ([NotificationId]);
GO

-- Creating foreign key on [FormTypeId] in table 'FormTemplatesSet'
ALTER TABLE [dbo].[FormTemplatesSet]
ADD CONSTRAINT [FK_FormTypeFormTemplates]
    FOREIGN KEY ([FormTypeId])
    REFERENCES [dbo].[FormTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormTypeFormTemplates'
CREATE INDEX [IX_FK_FormTypeFormTemplates]
ON [dbo].[FormTemplatesSet]
    ([FormTypeId]);
GO

-- Creating foreign key on [FormTemplatesId] in table 'FormTemplate_FilesSet'
ALTER TABLE [dbo].[FormTemplate_FilesSet]
ADD CONSTRAINT [FK_FormTemplate_FilesFormTemplates]
    FOREIGN KEY ([FormTemplatesId])
    REFERENCES [dbo].[FormTemplatesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormTemplate_FilesFormTemplates'
CREATE INDEX [IX_FK_FormTemplate_FilesFormTemplates]
ON [dbo].[FormTemplate_FilesSet]
    ([FormTemplatesId]);
GO

-- Creating foreign key on [QualityDocumentationTypeId] in table 'QualityDocumentationSet'
ALTER TABLE [dbo].[QualityDocumentationSet]
ADD CONSTRAINT [FK_QualityDocumentationQualityDocumentationType]
    FOREIGN KEY ([QualityDocumentationTypeId])
    REFERENCES [dbo].[QualityDocumentationTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QualityDocumentationQualityDocumentationType'
CREATE INDEX [IX_FK_QualityDocumentationQualityDocumentationType]
ON [dbo].[QualityDocumentationSet]
    ([QualityDocumentationTypeId]);
GO

-- Creating foreign key on [QualityDocumentationId] in table 'QualityDocumentation_FilesSet'
ALTER TABLE [dbo].[QualityDocumentation_FilesSet]
ADD CONSTRAINT [FK_QualityDocumentationQualityDocumentation_Files]
    FOREIGN KEY ([QualityDocumentationId])
    REFERENCES [dbo].[QualityDocumentationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QualityDocumentationQualityDocumentation_Files'
CREATE INDEX [IX_FK_QualityDocumentationQualityDocumentation_Files]
ON [dbo].[QualityDocumentation_FilesSet]
    ([QualityDocumentationId]);
GO

-- Creating foreign key on [Fixture_Document_TypeId] in table 'Fixture_Document_FileSet'
ALTER TABLE [dbo].[Fixture_Document_FileSet]
ADD CONSTRAINT [FK_Fixture_Document_FileFixture_Document_Type]
    FOREIGN KEY ([Fixture_Document_TypeId])
    REFERENCES [dbo].[Fixture_Document_TypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Fixture_Document_FileFixture_Document_Type'
CREATE INDEX [IX_FK_Fixture_Document_FileFixture_Document_Type]
ON [dbo].[Fixture_Document_FileSet]
    ([Fixture_Document_TypeId]);
GO

-- Creating foreign key on [Contractor_OrderId] in table 'FixtureSet'
ALTER TABLE [dbo].[FixtureSet]
ADD CONSTRAINT [FK_FixtureContractor_Order]
    FOREIGN KEY ([Contractor_OrderId])
    REFERENCES [dbo].[Contractor_OrderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FixtureContractor_Order'
CREATE INDEX [IX_FK_FixtureContractor_Order]
ON [dbo].[FixtureSet]
    ([Contractor_OrderId]);
GO

-- Creating foreign key on [ContractorId] in table 'FixtureSet'
ALTER TABLE [dbo].[FixtureSet]
ADD CONSTRAINT [FK_FixtureContractor]
    FOREIGN KEY ([ContractorId])
    REFERENCES [dbo].[ContractorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FixtureContractor'
CREATE INDEX [IX_FK_FixtureContractor]
ON [dbo].[FixtureSet]
    ([ContractorId]);
GO

-- Creating foreign key on [Tool_Document_TypeId] in table 'Tool_Document_FileSet'
ALTER TABLE [dbo].[Tool_Document_FileSet]
ADD CONSTRAINT [FK_Tool_Document_TypeTool_Document_File]
    FOREIGN KEY ([Tool_Document_TypeId])
    REFERENCES [dbo].[Tool_Document_TypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_Document_TypeTool_Document_File'
CREATE INDEX [IX_FK_Tool_Document_TypeTool_Document_File]
ON [dbo].[Tool_Document_FileSet]
    ([Tool_Document_TypeId]);
GO

-- Creating foreign key on [ToolId] in table 'Tool_Document_FileSet'
ALTER TABLE [dbo].[Tool_Document_FileSet]
ADD CONSTRAINT [FK_Tool_Document_FileTool]
    FOREIGN KEY ([ToolId])
    REFERENCES [dbo].[ToolSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_Document_FileTool'
CREATE INDEX [IX_FK_Tool_Document_FileTool]
ON [dbo].[Tool_Document_FileSet]
    ([ToolId]);
GO

-- Creating foreign key on [FixtureId] in table 'Fixture_Document_FileSet'
ALTER TABLE [dbo].[Fixture_Document_FileSet]
ADD CONSTRAINT [FK_FixtureFixture_Document_File]
    FOREIGN KEY ([FixtureId])
    REFERENCES [dbo].[FixtureSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FixtureFixture_Document_File'
CREATE INDEX [IX_FK_FixtureFixture_Document_File]
ON [dbo].[Fixture_Document_FileSet]
    ([FixtureId]);
GO

-- Creating foreign key on [Tool_ElementId] in table 'Tool_Document_FileSet'
ALTER TABLE [dbo].[Tool_Document_FileSet]
ADD CONSTRAINT [FK_Tool_ElementTool_Document_File]
    FOREIGN KEY ([Tool_ElementId])
    REFERENCES [dbo].[Tool_ElementSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_ElementTool_Document_File'
CREATE INDEX [IX_FK_Tool_ElementTool_Document_File]
ON [dbo].[Tool_Document_FileSet]
    ([Tool_ElementId]);
GO

-- Creating foreign key on [ContractorId] in table 'Tool_ElementSet'
ALTER TABLE [dbo].[Tool_ElementSet]
ADD CONSTRAINT [FK_Tool_ElementContractor]
    FOREIGN KEY ([ContractorId])
    REFERENCES [dbo].[ContractorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_ElementContractor'
CREATE INDEX [IX_FK_Tool_ElementContractor]
ON [dbo].[Tool_ElementSet]
    ([ContractorId]);
GO

-- Creating foreign key on [Tool_TypeId] in table 'Tool_ElementSet'
ALTER TABLE [dbo].[Tool_ElementSet]
ADD CONSTRAINT [FK_Tool_TypeTool_Element]
    FOREIGN KEY ([Tool_TypeId])
    REFERENCES [dbo].[Tool_TypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_TypeTool_Element'
CREATE INDEX [IX_FK_Tool_TypeTool_Element]
ON [dbo].[Tool_ElementSet]
    ([Tool_TypeId]);
GO

-- Creating foreign key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUser'
CREATE INDEX [IX_FK_UserUser]
ON [dbo].[Users]
    ([UserId]);
GO

-- Creating foreign key on [TaskId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_TaskComment]
    FOREIGN KEY ([TaskId])
    REFERENCES [dbo].[TaskSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskComment'
CREATE INDEX [IX_FK_TaskComment]
ON [dbo].[CommentSet]
    ([TaskId]);
GO

-- Creating foreign key on [NotificationId] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_NotificationComment]
    FOREIGN KEY ([NotificationId])
    REFERENCES [dbo].[NotificationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NotificationComment'
CREATE INDEX [IX_FK_NotificationComment]
ON [dbo].[CommentSet]
    ([NotificationId]);
GO

-- Creating foreign key on [TaskStatusId] in table 'TaskSet'
ALTER TABLE [dbo].[TaskSet]
ADD CONSTRAINT [FK_TaskTaskStatus]
    FOREIGN KEY ([TaskStatusId])
    REFERENCES [dbo].[TaskStatusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskTaskStatus'
CREATE INDEX [IX_FK_TaskTaskStatus]
ON [dbo].[TaskSet]
    ([TaskStatusId]);
GO

-- Creating foreign key on [NotificationStatusId] in table 'NotificationSet'
ALTER TABLE [dbo].[NotificationSet]
ADD CONSTRAINT [FK_NotificationNotificationStatus]
    FOREIGN KEY ([NotificationStatusId])
    REFERENCES [dbo].[NotificationStatusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NotificationNotificationStatus'
CREATE INDEX [IX_FK_NotificationNotificationStatus]
ON [dbo].[NotificationSet]
    ([NotificationStatusId]);
GO

-- Creating foreign key on [NotyficationTypeId] in table 'NotificationSet'
ALTER TABLE [dbo].[NotificationSet]
ADD CONSTRAINT [FK_NotyficationTypeNotification]
    FOREIGN KEY ([NotyficationTypeId])
    REFERENCES [dbo].[NotificationTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NotyficationTypeNotification'
CREATE INDEX [IX_FK_NotyficationTypeNotification]
ON [dbo].[NotificationSet]
    ([NotyficationTypeId]);
GO

-- Creating foreign key on [UserId] in table 'DocumentInOutSet'
ALTER TABLE [dbo].[DocumentInOutSet]
ADD CONSTRAINT [FK_DocumentInOutUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentInOutUser'
CREATE INDEX [IX_FK_DocumentInOutUser]
ON [dbo].[DocumentInOutSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId1] in table 'DocumentInOutSet'
ALTER TABLE [dbo].[DocumentInOutSet]
ADD CONSTRAINT [FK_DocumentInOutUser1]
    FOREIGN KEY ([UserId1])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentInOutUser1'
CREATE INDEX [IX_FK_DocumentInOutUser1]
ON [dbo].[DocumentInOutSet]
    ([UserId1]);
GO

-- Creating foreign key on [Technology_Dwg_IndexId] in table 'Technology_Dwg_FilesSet'
ALTER TABLE [dbo].[Technology_Dwg_FilesSet]
ADD CONSTRAINT [FK_Technology_Dwg_FilesTechnology_Dwg_Index]
    FOREIGN KEY ([Technology_Dwg_IndexId])
    REFERENCES [dbo].[Technology_Dwg_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_Dwg_FilesTechnology_Dwg_Index'
CREATE INDEX [IX_FK_Technology_Dwg_FilesTechnology_Dwg_Index]
ON [dbo].[Technology_Dwg_FilesSet]
    ([Technology_Dwg_IndexId]);
GO

-- Creating foreign key on [UserId] in table 'Technology_Dwg_FilesSet'
ALTER TABLE [dbo].[Technology_Dwg_FilesSet]
ADD CONSTRAINT [FK_Technology_Dwg_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_Dwg_FilesUser'
CREATE INDEX [IX_FK_Technology_Dwg_FilesUser]
ON [dbo].[Technology_Dwg_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [Setup_Sheet_IndexId] in table 'Setup_Sheet_FilesSet'
ALTER TABLE [dbo].[Setup_Sheet_FilesSet]
ADD CONSTRAINT [FK_Setup_Sheet_FilesSetup_Sheet_Index]
    FOREIGN KEY ([Setup_Sheet_IndexId])
    REFERENCES [dbo].[Setup_Sheet_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Setup_Sheet_FilesSetup_Sheet_Index'
CREATE INDEX [IX_FK_Setup_Sheet_FilesSetup_Sheet_Index]
ON [dbo].[Setup_Sheet_FilesSet]
    ([Setup_Sheet_IndexId]);
GO

-- Creating foreign key on [UserId] in table 'Setup_Sheet_FilesSet'
ALTER TABLE [dbo].[Setup_Sheet_FilesSet]
ADD CONSTRAINT [FK_Setup_Sheet_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Setup_Sheet_FilesUser'
CREATE INDEX [IX_FK_Setup_Sheet_FilesUser]
ON [dbo].[Setup_Sheet_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [Setup_SheetId] in table 'Setup_Sheet_IndexSet'
ALTER TABLE [dbo].[Setup_Sheet_IndexSet]
ADD CONSTRAINT [FK_Setup_SheetSetup_Sheet_Index]
    FOREIGN KEY ([Setup_SheetId])
    REFERENCES [dbo].[Setup_SheetSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Setup_SheetSetup_Sheet_Index'
CREATE INDEX [IX_FK_Setup_SheetSetup_Sheet_Index]
ON [dbo].[Setup_Sheet_IndexSet]
    ([Setup_SheetId]);
GO

-- Creating foreign key on [UserId] in table 'Setup_Sheet_IndexSet'
ALTER TABLE [dbo].[Setup_Sheet_IndexSet]
ADD CONSTRAINT [FK_Setup_Sheet_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Setup_Sheet_IndexUser'
CREATE INDEX [IX_FK_Setup_Sheet_IndexUser]
ON [dbo].[Setup_Sheet_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId_approved] in table 'Setup_Sheet_IndexSet'
ALTER TABLE [dbo].[Setup_Sheet_IndexSet]
ADD CONSTRAINT [FK_Setup_Sheet_IndexUser1]
    FOREIGN KEY ([UserId_approved])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Setup_Sheet_IndexUser1'
CREATE INDEX [IX_FK_Setup_Sheet_IndexUser1]
ON [dbo].[Setup_Sheet_IndexSet]
    ([UserId_approved]);
GO

-- Creating foreign key on [UserId] in table 'Setup_SheetSet'
ALTER TABLE [dbo].[Setup_SheetSet]
ADD CONSTRAINT [FK_Setup_SheetUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Setup_SheetUser'
CREATE INDEX [IX_FK_Setup_SheetUser]
ON [dbo].[Setup_SheetSet]
    ([UserId]);
GO

-- Creating foreign key on [CNC_MachineId] in table 'CNC_ProgramSet'
ALTER TABLE [dbo].[CNC_ProgramSet]
ADD CONSTRAINT [FK_CNC_ProgramCNC_Machine]
    FOREIGN KEY ([CNC_MachineId])
    REFERENCES [dbo].[CNC_MachineSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_ProgramCNC_Machine'
CREATE INDEX [IX_FK_CNC_ProgramCNC_Machine]
ON [dbo].[CNC_ProgramSet]
    ([CNC_MachineId]);
GO

-- Creating foreign key on [CNC_ProgramId] in table 'CNC_SubprogramSet'
ALTER TABLE [dbo].[CNC_SubprogramSet]
ADD CONSTRAINT [FK_CNC_SubrogramCNC_Program]
    FOREIGN KEY ([CNC_ProgramId])
    REFERENCES [dbo].[CNC_ProgramSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_SubrogramCNC_Program'
CREATE INDEX [IX_FK_CNC_SubrogramCNC_Program]
ON [dbo].[CNC_SubprogramSet]
    ([CNC_ProgramId]);
GO

-- Creating foreign key on [CNC_Program_IndexId] in table 'CNC_Program_FilesSet'
ALTER TABLE [dbo].[CNC_Program_FilesSet]
ADD CONSTRAINT [FK_CNC_Program_FilesCNC_Program_Index]
    FOREIGN KEY ([CNC_Program_IndexId])
    REFERENCES [dbo].[CNC_Program_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Program_FilesCNC_Program_Index'
CREATE INDEX [IX_FK_CNC_Program_FilesCNC_Program_Index]
ON [dbo].[CNC_Program_FilesSet]
    ([CNC_Program_IndexId]);
GO

-- Creating foreign key on [CNC_Subprogram_IndexId] in table 'CNC_Subprogram_FilesSet'
ALTER TABLE [dbo].[CNC_Subprogram_FilesSet]
ADD CONSTRAINT [FK_CNC_Subprogram_FilesCNC_Subprogram_Index]
    FOREIGN KEY ([CNC_Subprogram_IndexId])
    REFERENCES [dbo].[CNC_Subprogram_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Subprogram_FilesCNC_Subprogram_Index'
CREATE INDEX [IX_FK_CNC_Subprogram_FilesCNC_Subprogram_Index]
ON [dbo].[CNC_Subprogram_FilesSet]
    ([CNC_Subprogram_IndexId]);
GO

-- Creating foreign key on [CNC_MachineId] in table 'CNC_Machine_FilesSet'
ALTER TABLE [dbo].[CNC_Machine_FilesSet]
ADD CONSTRAINT [FK_CNC_Machine_FilesCNC_Machine]
    FOREIGN KEY ([CNC_MachineId])
    REFERENCES [dbo].[CNC_MachineSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Machine_FilesCNC_Machine'
CREATE INDEX [IX_FK_CNC_Machine_FilesCNC_Machine]
ON [dbo].[CNC_Machine_FilesSet]
    ([CNC_MachineId]);
GO

-- Creating foreign key on [CNC_Machine_TypeId] in table 'CNC_MachineSet'
ALTER TABLE [dbo].[CNC_MachineSet]
ADD CONSTRAINT [FK_CNC_MachineCNC_Machine_Type]
    FOREIGN KEY ([CNC_Machine_TypeId])
    REFERENCES [dbo].[CNC_Machine_TypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_MachineCNC_Machine_Type'
CREATE INDEX [IX_FK_CNC_MachineCNC_Machine_Type]
ON [dbo].[CNC_MachineSet]
    ([CNC_Machine_TypeId]);
GO

-- Creating foreign key on [Quality_Instruction_IndexId] in table 'Quality_Instruction_FilesSet'
ALTER TABLE [dbo].[Quality_Instruction_FilesSet]
ADD CONSTRAINT [FK_Quality_Instruction_FilesQuality_Instruction_Index]
    FOREIGN KEY ([Quality_Instruction_IndexId])
    REFERENCES [dbo].[Quality_Instruction_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_Instruction_FilesQuality_Instruction_Index'
CREATE INDEX [IX_FK_Quality_Instruction_FilesQuality_Instruction_Index]
ON [dbo].[Quality_Instruction_FilesSet]
    ([Quality_Instruction_IndexId]);
GO

-- Creating foreign key on [UserId] in table 'Quality_Instruction_FilesSet'
ALTER TABLE [dbo].[Quality_Instruction_FilesSet]
ADD CONSTRAINT [FK_Quality_Instruction_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_Instruction_FilesUser'
CREATE INDEX [IX_FK_Quality_Instruction_FilesUser]
ON [dbo].[Quality_Instruction_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [Quality_ChartId] in table 'Quality_Chart_IndexSet'
ALTER TABLE [dbo].[Quality_Chart_IndexSet]
ADD CONSTRAINT [FK_Quality_InstructionQuality_Instruction_Index1]
    FOREIGN KEY ([Quality_ChartId])
    REFERENCES [dbo].[Quality_ChartSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_InstructionQuality_Instruction_Index1'
CREATE INDEX [IX_FK_Quality_InstructionQuality_Instruction_Index1]
ON [dbo].[Quality_Chart_IndexSet]
    ([Quality_ChartId]);
GO

-- Creating foreign key on [UserId] in table 'Quality_ChartSet'
ALTER TABLE [dbo].[Quality_ChartSet]
ADD CONSTRAINT [FK_Quality_ChartUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_ChartUser'
CREATE INDEX [IX_FK_Quality_ChartUser]
ON [dbo].[Quality_ChartSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Quality_Chart_IndexSet'
ALTER TABLE [dbo].[Quality_Chart_IndexSet]
ADD CONSTRAINT [FK_Quality_Chart_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_Chart_IndexUser'
CREATE INDEX [IX_FK_Quality_Chart_IndexUser]
ON [dbo].[Quality_Chart_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId_approved] in table 'Quality_Chart_IndexSet'
ALTER TABLE [dbo].[Quality_Chart_IndexSet]
ADD CONSTRAINT [FK_Quality_Chart_IndexUser1]
    FOREIGN KEY ([UserId_approved])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_Chart_IndexUser1'
CREATE INDEX [IX_FK_Quality_Chart_IndexUser1]
ON [dbo].[Quality_Chart_IndexSet]
    ([UserId_approved]);
GO

-- Creating foreign key on [UserId] in table 'Quality_Chart_FilesSet'
ALTER TABLE [dbo].[Quality_Chart_FilesSet]
ADD CONSTRAINT [FK_Quality_Chart_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_Chart_FilesUser'
CREATE INDEX [IX_FK_Quality_Chart_FilesUser]
ON [dbo].[Quality_Chart_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [Quality_Chart_IndexId] in table 'Quality_Chart_FilesSet'
ALTER TABLE [dbo].[Quality_Chart_FilesSet]
ADD CONSTRAINT [FK_Quality_Chart_FilesQuality_Chart_Index]
    FOREIGN KEY ([Quality_Chart_IndexId])
    REFERENCES [dbo].[Quality_Chart_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Quality_Chart_FilesQuality_Chart_Index'
CREATE INDEX [IX_FK_Quality_Chart_FilesQuality_Chart_Index]
ON [dbo].[Quality_Chart_FilesSet]
    ([Quality_Chart_IndexId]);
GO

-- Creating foreign key on [OrganizationId] in table 'StandardSet'
ALTER TABLE [dbo].[StandardSet]
ADD CONSTRAINT [FK_FormTypeFormTemplates1]
    FOREIGN KEY ([OrganizationId])
    REFERENCES [dbo].[OrganizationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormTypeFormTemplates1'
CREATE INDEX [IX_FK_FormTypeFormTemplates1]
ON [dbo].[StandardSet]
    ([OrganizationId]);
GO

-- Creating foreign key on [StandardId] in table 'Standard_FilesSet'
ALTER TABLE [dbo].[Standard_FilesSet]
ADD CONSTRAINT [FK_Standard_FilesStandard]
    FOREIGN KEY ([StandardId])
    REFERENCES [dbo].[StandardSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Standard_FilesStandard'
CREATE INDEX [IX_FK_Standard_FilesStandard]
ON [dbo].[Standard_FilesSet]
    ([StandardId]);
GO

-- Creating foreign key on [FixtureId] in table 'CNC_ProgramSet'
ALTER TABLE [dbo].[CNC_ProgramSet]
ADD CONSTRAINT [FK_CNC_ProgramFixture]
    FOREIGN KEY ([FixtureId])
    REFERENCES [dbo].[FixtureSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_ProgramFixture'
CREATE INDEX [IX_FK_CNC_ProgramFixture]
ON [dbo].[CNC_ProgramSet]
    ([FixtureId]);
GO

-- Creating foreign key on [UserId] in table 'ToolSet'
ALTER TABLE [dbo].[ToolSet]
ADD CONSTRAINT [FK_ToolUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToolUser'
CREATE INDEX [IX_FK_ToolUser]
ON [dbo].[ToolSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Tool_ElementSet'
ALTER TABLE [dbo].[Tool_ElementSet]
ADD CONSTRAINT [FK_Tool_ElementUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_ElementUser'
CREATE INDEX [IX_FK_Tool_ElementUser]
ON [dbo].[Tool_ElementSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Tool_Document_FileSet'
ALTER TABLE [dbo].[Tool_Document_FileSet]
ADD CONSTRAINT [FK_Tool_Document_FileUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_Document_FileUser'
CREATE INDEX [IX_FK_Tool_Document_FileUser]
ON [dbo].[Tool_Document_FileSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId_approved] in table 'CNC_Program_IndexSet'
ALTER TABLE [dbo].[CNC_Program_IndexSet]
ADD CONSTRAINT [FK_CNC_Program_IndexUser]
    FOREIGN KEY ([UserId_approved])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Program_IndexUser'
CREATE INDEX [IX_FK_CNC_Program_IndexUser]
ON [dbo].[CNC_Program_IndexSet]
    ([UserId_approved]);
GO

-- Creating foreign key on [CNC_StatusId] in table 'CNC_Program_IndexSet'
ALTER TABLE [dbo].[CNC_Program_IndexSet]
ADD CONSTRAINT [FK_CNC_StatusCNC_Program_Index]
    FOREIGN KEY ([CNC_StatusId])
    REFERENCES [dbo].[CNC_StatusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_StatusCNC_Program_Index'
CREATE INDEX [IX_FK_CNC_StatusCNC_Program_Index]
ON [dbo].[CNC_Program_IndexSet]
    ([CNC_StatusId]);
GO

-- Creating foreign key on [CNC_StatusId] in table 'CNC_Subprogram_IndexSet'
ALTER TABLE [dbo].[CNC_Subprogram_IndexSet]
ADD CONSTRAINT [FK_CNC_Subprogram_IndexCNC_Status]
    FOREIGN KEY ([CNC_StatusId])
    REFERENCES [dbo].[CNC_StatusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Subprogram_IndexCNC_Status'
CREATE INDEX [IX_FK_CNC_Subprogram_IndexCNC_Status]
ON [dbo].[CNC_Subprogram_IndexSet]
    ([CNC_StatusId]);
GO

-- Creating foreign key on [UserId_approved] in table 'CNC_Subprogram_IndexSet'
ALTER TABLE [dbo].[CNC_Subprogram_IndexSet]
ADD CONSTRAINT [FK_CNC_Subprogram_IndexUser1]
    FOREIGN KEY ([UserId_approved])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Subprogram_IndexUser1'
CREATE INDEX [IX_FK_CNC_Subprogram_IndexUser1]
ON [dbo].[CNC_Subprogram_IndexSet]
    ([UserId_approved]);
GO

-- Creating foreign key on [UserId] in table 'CNC_Program_FilesSet'
ALTER TABLE [dbo].[CNC_Program_FilesSet]
ADD CONSTRAINT [FK_CNC_Program_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Program_FilesUser'
CREATE INDEX [IX_FK_CNC_Program_FilesUser]
ON [dbo].[CNC_Program_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'CNC_Subprogram_FilesSet'
ALTER TABLE [dbo].[CNC_Subprogram_FilesSet]
ADD CONSTRAINT [FK_CNC_Subprogram_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CNC_Subprogram_FilesUser'
CREATE INDEX [IX_FK_CNC_Subprogram_FilesUser]
ON [dbo].[CNC_Subprogram_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [CMM_ProgramId] in table 'CMM_Program_IndexSet'
ALTER TABLE [dbo].[CMM_Program_IndexSet]
ADD CONSTRAINT [FK_CMM_Program_IndexCMM_Program]
    FOREIGN KEY ([CMM_ProgramId])
    REFERENCES [dbo].[CMM_ProgramSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_Program_IndexCMM_Program'
CREATE INDEX [IX_FK_CMM_Program_IndexCMM_Program]
ON [dbo].[CMM_Program_IndexSet]
    ([CMM_ProgramId]);
GO

-- Creating foreign key on [CMM_StatusId] in table 'CMM_Program_IndexSet'
ALTER TABLE [dbo].[CMM_Program_IndexSet]
ADD CONSTRAINT [FK_CMM_Program_IndexCMM_Status]
    FOREIGN KEY ([CMM_StatusId])
    REFERENCES [dbo].[CMM_StatusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_Program_IndexCMM_Status'
CREATE INDEX [IX_FK_CMM_Program_IndexCMM_Status]
ON [dbo].[CMM_Program_IndexSet]
    ([CMM_StatusId]);
GO

-- Creating foreign key on [CMM_Program_IndexId] in table 'CMM_Program_FilesSet'
ALTER TABLE [dbo].[CMM_Program_FilesSet]
ADD CONSTRAINT [FK_CMM_Program_FilesCMM_Program_Index]
    FOREIGN KEY ([CMM_Program_IndexId])
    REFERENCES [dbo].[CMM_Program_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_Program_FilesCMM_Program_Index'
CREATE INDEX [IX_FK_CMM_Program_FilesCMM_Program_Index]
ON [dbo].[CMM_Program_FilesSet]
    ([CMM_Program_IndexId]);
GO

-- Creating foreign key on [UserId] in table 'CMM_ProgramSet'
ALTER TABLE [dbo].[CMM_ProgramSet]
ADD CONSTRAINT [FK_CMM_ProgramUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_ProgramUser'
CREATE INDEX [IX_FK_CMM_ProgramUser]
ON [dbo].[CMM_ProgramSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'CMM_Program_IndexSet'
ALTER TABLE [dbo].[CMM_Program_IndexSet]
ADD CONSTRAINT [FK_CMM_Program_IndexUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_Program_IndexUser'
CREATE INDEX [IX_FK_CMM_Program_IndexUser]
ON [dbo].[CMM_Program_IndexSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId_approved] in table 'CMM_Program_IndexSet'
ALTER TABLE [dbo].[CMM_Program_IndexSet]
ADD CONSTRAINT [FK_CMM_Program_IndexUser1]
    FOREIGN KEY ([UserId_approved])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_Program_IndexUser1'
CREATE INDEX [IX_FK_CMM_Program_IndexUser1]
ON [dbo].[CMM_Program_IndexSet]
    ([UserId_approved]);
GO

-- Creating foreign key on [UserId] in table 'CMM_Program_FilesSet'
ALTER TABLE [dbo].[CMM_Program_FilesSet]
ADD CONSTRAINT [FK_CMM_Program_FilesUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_Program_FilesUser'
CREATE INDEX [IX_FK_CMM_Program_FilesUser]
ON [dbo].[CMM_Program_FilesSet]
    ([UserId]);
GO

-- Creating foreign key on [FixtureId] in table 'CMM_ProgramSet'
ALTER TABLE [dbo].[CMM_ProgramSet]
ADD CONSTRAINT [FK_CMM_ProgramFixture]
    FOREIGN KEY ([FixtureId])
    REFERENCES [dbo].[FixtureSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_ProgramFixture'
CREATE INDEX [IX_FK_CMM_ProgramFixture]
ON [dbo].[CMM_ProgramSet]
    ([FixtureId]);
GO

-- Creating foreign key on [CNC_MachineId] in table 'CMM_ProgramSet'
ALTER TABLE [dbo].[CMM_ProgramSet]
ADD CONSTRAINT [FK_CMM_ProgramCNC_Machine]
    FOREIGN KEY ([CNC_MachineId])
    REFERENCES [dbo].[CNC_MachineSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CMM_ProgramCNC_Machine'
CREATE INDEX [IX_FK_CMM_ProgramCNC_Machine]
ON [dbo].[CMM_ProgramSet]
    ([CNC_MachineId]);
GO

-- Creating foreign key on [Article_typeId] in table 'Contractor_OrderSet'
ALTER TABLE [dbo].[Contractor_OrderSet]
ADD CONSTRAINT [FK_Contractor_OrderArticle_type]
    FOREIGN KEY ([Article_typeId])
    REFERENCES [dbo].[Article_typeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Contractor_OrderArticle_type'
CREATE INDEX [IX_FK_Contractor_OrderArticle_type]
ON [dbo].[Contractor_OrderSet]
    ([Article_typeId]);
GO

-- Creating foreign key on [Contractor_OrderId] in table 'ScoreSet'
ALTER TABLE [dbo].[ScoreSet]
ADD CONSTRAINT [FK_ScoreContractor_Order]
    FOREIGN KEY ([Contractor_OrderId])
    REFERENCES [dbo].[Contractor_OrderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ScoreContractor_Order'
CREATE INDEX [IX_FK_ScoreContractor_Order]
ON [dbo].[ScoreSet]
    ([Contractor_OrderId]);
GO

-- Creating foreign key on [Customer_Part_IndexId] in table 'TechnologySet'
ALTER TABLE [dbo].[TechnologySet]
ADD CONSTRAINT [FK_TechnologyCustomer_Part_Index]
    FOREIGN KEY ([Customer_Part_IndexId])
    REFERENCES [dbo].[Customer_Part_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TechnologyCustomer_Part_Index'
CREATE INDEX [IX_FK_TechnologyCustomer_Part_Index]
ON [dbo].[TechnologySet]
    ([Customer_Part_IndexId]);
GO

-- Creating foreign key on [Production_materialId] in table 'TechnologySet'
ALTER TABLE [dbo].[TechnologySet]
ADD CONSTRAINT [FK_TechnologyProduction_material]
    FOREIGN KEY ([Production_materialId])
    REFERENCES [dbo].[Production_materialSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TechnologyProduction_material'
CREATE INDEX [IX_FK_TechnologyProduction_material]
ON [dbo].[TechnologySet]
    ([Production_materialId]);
GO

-- Creating foreign key on [UserId] in table 'Production_materialSet'
ALTER TABLE [dbo].[Production_materialSet]
ADD CONSTRAINT [FK_Production_materialUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Production_materialUser'
CREATE INDEX [IX_FK_Production_materialUser]
ON [dbo].[Production_materialSet]
    ([UserId]);
GO

-- Creating foreign key on [ContractorId] in table 'Production_materialSet'
ALTER TABLE [dbo].[Production_materialSet]
ADD CONSTRAINT [FK_Production_materialContractor]
    FOREIGN KEY ([ContractorId])
    REFERENCES [dbo].[ContractorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Production_materialContractor'
CREATE INDEX [IX_FK_Production_materialContractor]
ON [dbo].[Production_materialSet]
    ([ContractorId]);
GO

-- Creating foreign key on [Technology_IndexId] in table 'Technology_StageSet'
ALTER TABLE [dbo].[Technology_StageSet]
ADD CONSTRAINT [FK_Technology_StageTechnology_Index]
    FOREIGN KEY ([Technology_IndexId])
    REFERENCES [dbo].[Technology_IndexSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageTechnology_Index'
CREATE INDEX [IX_FK_Technology_StageTechnology_Index]
ON [dbo].[Technology_StageSet]
    ([Technology_IndexId]);
GO

-- Creating foreign key on [Technology_Stage_Id] in table 'Technology_StageTechnology_Instruction'
ALTER TABLE [dbo].[Technology_StageTechnology_Instruction]
ADD CONSTRAINT [FK_Technology_StageTechnology_Instruction_Technology_Stage]
    FOREIGN KEY ([Technology_Stage_Id])
    REFERENCES [dbo].[Technology_StageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Technology_Instruction_Id] in table 'Technology_StageTechnology_Instruction'
ALTER TABLE [dbo].[Technology_StageTechnology_Instruction]
ADD CONSTRAINT [FK_Technology_StageTechnology_Instruction_Technology_Instruction]
    FOREIGN KEY ([Technology_Instruction_Id])
    REFERENCES [dbo].[Technology_InstructionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageTechnology_Instruction_Technology_Instruction'
CREATE INDEX [IX_FK_Technology_StageTechnology_Instruction_Technology_Instruction]
ON [dbo].[Technology_StageTechnology_Instruction]
    ([Technology_Instruction_Id]);
GO

-- Creating foreign key on [Technology_Stage_Id] in table 'Technology_StageTechnology_Dwg'
ALTER TABLE [dbo].[Technology_StageTechnology_Dwg]
ADD CONSTRAINT [FK_Technology_StageTechnology_Dwg_Technology_Stage]
    FOREIGN KEY ([Technology_Stage_Id])
    REFERENCES [dbo].[Technology_StageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Technology_Dwg_Id] in table 'Technology_StageTechnology_Dwg'
ALTER TABLE [dbo].[Technology_StageTechnology_Dwg]
ADD CONSTRAINT [FK_Technology_StageTechnology_Dwg_Technology_Dwg]
    FOREIGN KEY ([Technology_Dwg_Id])
    REFERENCES [dbo].[Technology_DwgSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageTechnology_Dwg_Technology_Dwg'
CREATE INDEX [IX_FK_Technology_StageTechnology_Dwg_Technology_Dwg]
ON [dbo].[Technology_StageTechnology_Dwg]
    ([Technology_Dwg_Id]);
GO

-- Creating foreign key on [Technology_Stage_Id] in table 'Technology_StageSetup_Sheet'
ALTER TABLE [dbo].[Technology_StageSetup_Sheet]
ADD CONSTRAINT [FK_Technology_StageSetup_Sheet_Technology_Stage]
    FOREIGN KEY ([Technology_Stage_Id])
    REFERENCES [dbo].[Technology_StageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Setup_Sheet_Id] in table 'Technology_StageSetup_Sheet'
ALTER TABLE [dbo].[Technology_StageSetup_Sheet]
ADD CONSTRAINT [FK_Technology_StageSetup_Sheet_Setup_Sheet]
    FOREIGN KEY ([Setup_Sheet_Id])
    REFERENCES [dbo].[Setup_SheetSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageSetup_Sheet_Setup_Sheet'
CREATE INDEX [IX_FK_Technology_StageSetup_Sheet_Setup_Sheet]
ON [dbo].[Technology_StageSetup_Sheet]
    ([Setup_Sheet_Id]);
GO

-- Creating foreign key on [Technology_Stage_Id] in table 'Technology_StageCNC_Program'
ALTER TABLE [dbo].[Technology_StageCNC_Program]
ADD CONSTRAINT [FK_Technology_StageCNC_Program_Technology_Stage]
    FOREIGN KEY ([Technology_Stage_Id])
    REFERENCES [dbo].[Technology_StageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CNC_Program_Id] in table 'Technology_StageCNC_Program'
ALTER TABLE [dbo].[Technology_StageCNC_Program]
ADD CONSTRAINT [FK_Technology_StageCNC_Program_CNC_Program]
    FOREIGN KEY ([CNC_Program_Id])
    REFERENCES [dbo].[CNC_ProgramSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageCNC_Program_CNC_Program'
CREATE INDEX [IX_FK_Technology_StageCNC_Program_CNC_Program]
ON [dbo].[Technology_StageCNC_Program]
    ([CNC_Program_Id]);
GO

-- Creating foreign key on [Technology_Stage_Id] in table 'Technology_StageQuality_Instruction'
ALTER TABLE [dbo].[Technology_StageQuality_Instruction]
ADD CONSTRAINT [FK_Technology_StageQuality_Instruction_Technology_Stage]
    FOREIGN KEY ([Technology_Stage_Id])
    REFERENCES [dbo].[Technology_StageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Quality_Instruction_Id] in table 'Technology_StageQuality_Instruction'
ALTER TABLE [dbo].[Technology_StageQuality_Instruction]
ADD CONSTRAINT [FK_Technology_StageQuality_Instruction_Quality_Instruction]
    FOREIGN KEY ([Quality_Instruction_Id])
    REFERENCES [dbo].[Quality_InstructionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageQuality_Instruction_Quality_Instruction'
CREATE INDEX [IX_FK_Technology_StageQuality_Instruction_Quality_Instruction]
ON [dbo].[Technology_StageQuality_Instruction]
    ([Quality_Instruction_Id]);
GO

-- Creating foreign key on [Technology_Stage_Id] in table 'Technology_StageQuality_Chart'
ALTER TABLE [dbo].[Technology_StageQuality_Chart]
ADD CONSTRAINT [FK_Technology_StageQuality_Chart_Technology_Stage]
    FOREIGN KEY ([Technology_Stage_Id])
    REFERENCES [dbo].[Technology_StageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Quality_Chart_Id] in table 'Technology_StageQuality_Chart'
ALTER TABLE [dbo].[Technology_StageQuality_Chart]
ADD CONSTRAINT [FK_Technology_StageQuality_Chart_Quality_Chart]
    FOREIGN KEY ([Quality_Chart_Id])
    REFERENCES [dbo].[Quality_ChartSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageQuality_Chart_Quality_Chart'
CREATE INDEX [IX_FK_Technology_StageQuality_Chart_Quality_Chart]
ON [dbo].[Technology_StageQuality_Chart]
    ([Quality_Chart_Id]);
GO

-- Creating foreign key on [Technology_Stage_Id] in table 'Technology_StageCMM_Program'
ALTER TABLE [dbo].[Technology_StageCMM_Program]
ADD CONSTRAINT [FK_Technology_StageCMM_Program_Technology_Stage]
    FOREIGN KEY ([Technology_Stage_Id])
    REFERENCES [dbo].[Technology_StageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CMM_Program_Id] in table 'Technology_StageCMM_Program'
ALTER TABLE [dbo].[Technology_StageCMM_Program]
ADD CONSTRAINT [FK_Technology_StageCMM_Program_CMM_Program]
    FOREIGN KEY ([CMM_Program_Id])
    REFERENCES [dbo].[CMM_ProgramSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Technology_StageCMM_Program_CMM_Program'
CREATE INDEX [IX_FK_Technology_StageCMM_Program_CMM_Program]
ON [dbo].[Technology_StageCMM_Program]
    ([CMM_Program_Id]);
GO

-- Creating foreign key on [Tool_Id] in table 'ToolTool_Element'
ALTER TABLE [dbo].[ToolTool_Element]
ADD CONSTRAINT [FK_ToolTool_Element_Tool]
    FOREIGN KEY ([Tool_Id])
    REFERENCES [dbo].[ToolSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tool_Element_Id] in table 'ToolTool_Element'
ALTER TABLE [dbo].[ToolTool_Element]
ADD CONSTRAINT [FK_ToolTool_Element_Tool_Element]
    FOREIGN KEY ([Tool_Element_Id])
    REFERENCES [dbo].[Tool_ElementSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToolTool_Element_Tool_Element'
CREATE INDEX [IX_FK_ToolTool_Element_Tool_Element]
ON [dbo].[ToolTool_Element]
    ([Tool_Element_Id]);
GO

-- Creating foreign key on [CNC_ProgramId] in table 'ToolCNC_ProgramSet'
ALTER TABLE [dbo].[ToolCNC_ProgramSet]
ADD CONSTRAINT [FK_ToolCNC_ProgramCNC_Program]
    FOREIGN KEY ([CNC_ProgramId])
    REFERENCES [dbo].[CNC_ProgramSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToolCNC_ProgramCNC_Program'
CREATE INDEX [IX_FK_ToolCNC_ProgramCNC_Program]
ON [dbo].[ToolCNC_ProgramSet]
    ([CNC_ProgramId]);
GO

-- Creating foreign key on [ToolId] in table 'ToolCNC_ProgramSet'
ALTER TABLE [dbo].[ToolCNC_ProgramSet]
ADD CONSTRAINT [FK_ToolCNC_ProgramTool]
    FOREIGN KEY ([ToolId])
    REFERENCES [dbo].[ToolSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToolCNC_ProgramTool'
CREATE INDEX [IX_FK_ToolCNC_ProgramTool]
ON [dbo].[ToolCNC_ProgramSet]
    ([ToolId]);
GO

-- Creating foreign key on [Tool_Assembly_TypeId] in table 'ToolSet'
ALTER TABLE [dbo].[ToolSet]
ADD CONSTRAINT [FK_Tool_Assembly_TypeTool]
    FOREIGN KEY ([Tool_Assembly_TypeId])
    REFERENCES [dbo].[Tool_Assembly_TypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_Assembly_TypeTool'
CREATE INDEX [IX_FK_Tool_Assembly_TypeTool]
ON [dbo].[ToolSet]
    ([Tool_Assembly_TypeId]);
GO

-- Creating foreign key on [Tool_Holder_SystemId] in table 'CNC_MachineSet'
ALTER TABLE [dbo].[CNC_MachineSet]
ADD CONSTRAINT [FK_Tool_Holder_SystemCNC_Machine]
    FOREIGN KEY ([Tool_Holder_SystemId])
    REFERENCES [dbo].[Tool_Holder_SystemSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_Holder_SystemCNC_Machine'
CREATE INDEX [IX_FK_Tool_Holder_SystemCNC_Machine]
ON [dbo].[CNC_MachineSet]
    ([Tool_Holder_SystemId]);
GO

-- Creating foreign key on [Tool_Holder_SystemId] in table 'ToolSet'
ALTER TABLE [dbo].[ToolSet]
ADD CONSTRAINT [FK_Tool_Holder_SystemTool]
    FOREIGN KEY ([Tool_Holder_SystemId])
    REFERENCES [dbo].[Tool_Holder_SystemSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tool_Holder_SystemTool'
CREATE INDEX [IX_FK_Tool_Holder_SystemTool]
ON [dbo].[ToolSet]
    ([Tool_Holder_SystemId]);
GO

-- Creating foreign key on [Setup_SheetId] in table 'CNC_ProgramSet'
ALTER TABLE [dbo].[CNC_ProgramSet]
ADD CONSTRAINT [FK_Setup_SheetCNC_Program]
    FOREIGN KEY ([Setup_SheetId])
    REFERENCES [dbo].[Setup_SheetSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Setup_SheetCNC_Program'
CREATE INDEX [IX_FK_Setup_SheetCNC_Program]
ON [dbo].[CNC_ProgramSet]
    ([Setup_SheetId]);
GO

-- Creating foreign key on [Setup_SheetId] in table 'CMM_ProgramSet'
ALTER TABLE [dbo].[CMM_ProgramSet]
ADD CONSTRAINT [FK_Setup_SheetCMM_Program]
    FOREIGN KEY ([Setup_SheetId])
    REFERENCES [dbo].[Setup_SheetSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Setup_SheetCMM_Program'
CREATE INDEX [IX_FK_Setup_SheetCMM_Program]
ON [dbo].[CMM_ProgramSet]
    ([Setup_SheetId]);
GO

-- Creating foreign key on [Order_StatusId] in table 'Contractor_OrderSet'
ALTER TABLE [dbo].[Contractor_OrderSet]
ADD CONSTRAINT [FK_Order_StatusContractor_Order]
    FOREIGN KEY ([Order_StatusId])
    REFERENCES [dbo].[Order_StatusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_StatusContractor_Order'
CREATE INDEX [IX_FK_Order_StatusContractor_Order]
ON [dbo].[Contractor_OrderSet]
    ([Order_StatusId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------