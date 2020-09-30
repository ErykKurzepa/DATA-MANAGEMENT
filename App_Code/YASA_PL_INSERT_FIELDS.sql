USE [YASA_PL];
GO

-- --------------------------------------------------
-- Stanowiska (uzytkownicy)
-- --------------------------------------------------

INSERT INTO [dbo].[Positions]
           ([Name])
     VALUES
           ('programista CNC')
GO


INSERT INTO [dbo].[Positions]
           ([Name])
     VALUES
           ('programista CMM')
GO

INSERT INTO [dbo].[Positions]
           ([Name])
     VALUES
           ('technolog')
GO


INSERT INTO [dbo].[Positions]
           ([Name])
     VALUES
           ('kontroler jakości')
GO

INSERT INTO [dbo].[Positions]
           ([Name])
     VALUES
           ('handlowiec')
GO

INSERT INTO [dbo].[Positions]
           ([Name])
     VALUES
           ('mechanik')
GO

INSERT INTO [dbo].[Positions]
           ([Name])
     VALUES
           ('specjalist ds. księgowości')
GO

INSERT INTO [dbo].[Positions]
           ([Name])
     VALUES
           ('specjalista ds. kadr')
GO

-- --------------------------------------------------
-- działy (uzytkownicy)
-- --------------------------------------------------


INSERT INTO [dbo].[Departments]
           ([Name])
     VALUES
           ('kontrola jakości')
GO

INSERT INTO [dbo].[Departments]
           ([Name])
     VALUES
           ('technologiczny')
GO

INSERT INTO [dbo].[Departments]
           ([Name])
     VALUES
           ('utrzymacnie ruchu')
GO

INSERT INTO [dbo].[Departments]
           ([Name])
     VALUES
           ('produkcja')
GO


-- --------------------------------------------------
-- User - administrator
-- --------------------------------------------------

INSERT INTO [dbo].[Users]
           ([F_Name]
           ,[L_Name]
           ,[PositionId]
           ,[DepartmentId]
           ,[Email]
           ,[Password]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId]
		   ,[Admin]
		   ,[Customer_List],[Customer_Insert],[Customer_Edit],[Customer_Delete]
		   ,[Customer_Part_List],[Customer_Part_Insert],[Customer_Part_Edit],[Customer_Part_Delete]
		   ,[Customer_Order_List],[Customer_Order_Insert],[Customer_Order_Edit],[Customer_Order_Delete]
		   ,[Contractor_List],[Contractor_Insert],[Contractor_Edit],[Contractor_Delete]
		   ,[Contractor_Order_List],[Contractor_Order_Insert],[Contractor_Order_Edit],[Contractor_Order_Delete]
		   ,[Notification_List],[Notification_Insert],[Notification_Edit],[Notification_Delete]
		   ,[Task_List],[Task_Insert],[Task_Edit],[Task_Delete]
		   ,[Technology_List],[Technology_Insert],[Technology_Edit],[Technology_Delete]
		   ,[CNC_Program_List],[CNC_Program_Insert],[CNC_Program_Edit],[CNC_Program_Delete]
		   ,[Tool_List],[Tool_Insert],[Tool_Edit],[Tool_Delete]
		   ,[Fixture_List],[Fixture_Insert],[Fixture_Edit],[Fixture_Delete]
		   ,[Quality_List],[Quality_Insert],[Quality_Edit],[Quality_Delete]
		   ,[CMM_Program_List],[CMM_Program_Insert],[CMM_Program_Edit],[CMM_Program_Delete]
		   ,[Users_List],[Users_Insert],[Users_Edit],[Users_Delete]
		   ,[FormTemplates_List],[FormTemplates_Insert],[FormTemplates_Edit],[FormTemplates_Delete] )
     VALUES
           ('Test'
           ,'User'
           ,1
           ,1
           ,'test.user@test.user'
           ,'test.user'
           ,'0502340604'
           ,'017345823'
           ,'Użytkownik testowy'
           ,'11.11.2014'
           ,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
		   ,1,1,1,1
	)
GO

-- --------------------------------------------------
-- User - no access
-- --------------------------------------------------

INSERT INTO [dbo].[Users]
           ([F_Name]
           ,[L_Name]
           ,[PositionId]
           ,[DepartmentId]
           ,[Email]
           ,[Password]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId]
		   ,[Admin]
		   ,[Customer_List],[Customer_Insert],[Customer_Edit],[Customer_Delete]
		   ,[Customer_Part_List],[Customer_Part_Insert],[Customer_Part_Edit],[Customer_Part_Delete]
		   ,[Customer_Order_List],[Customer_Order_Insert],[Customer_Order_Edit],[Customer_Order_Delete]
		   ,[Contractor_List],[Contractor_Insert],[Contractor_Edit],[Contractor_Delete]
		   ,[Contractor_Order_List],[Contractor_Order_Insert],[Contractor_Order_Edit],[Contractor_Order_Delete]
		   ,[Notification_List],[Notification_Insert],[Notification_Edit],[Notification_Delete]
		   ,[Task_List],[Task_Insert],[Task_Edit],[Task_Delete]
		   ,[Technology_List],[Technology_Insert],[Technology_Edit],[Technology_Delete]
		   ,[CNC_Program_List],[CNC_Program_Insert],[CNC_Program_Edit],[CNC_Program_Delete]
		   ,[Tool_List],[Tool_Insert],[Tool_Edit],[Tool_Delete]
		   ,[Fixture_List],[Fixture_Insert],[Fixture_Edit],[Fixture_Delete]
		   ,[Quality_List],[Quality_Insert],[Quality_Edit],[Quality_Delete]
		   ,[CMM_Program_List],[CMM_Program_Insert],[CMM_Program_Edit],[CMM_Program_Delete]
		   ,[Users_List],[Users_Insert],[Users_Edit],[Users_Delete]
		   ,[FormTemplates_List],[FormTemplates_Insert],[FormTemplates_Edit],[FormTemplates_Delete] )
     VALUES
           ('Dawid'
           ,'Stępień'
           ,2
           ,2
           ,'dawid.stępień@leopek.com'
           ,'tigger13'
           ,'502340608'
           ,'017345825'
           ,'opis'
           ,'11.11.2014'
           ,2,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
		   ,0,0,0,0
	)
GO

-- --------------------------------------------------
-- User - view only access
-- --------------------------------------------------

INSERT INTO [dbo].[Users]
           ([F_Name]
           ,[L_Name]
           ,[PositionId]
           ,[DepartmentId]
           ,[Email]
           ,[Password]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId]
		   ,[Admin]
		   ,[Customer_List],[Customer_Insert],[Customer_Edit],[Customer_Delete]
		   ,[Customer_Part_List],[Customer_Part_Insert],[Customer_Part_Edit],[Customer_Part_Delete]
		   ,[Customer_Order_List],[Customer_Order_Insert],[Customer_Order_Edit],[Customer_Order_Delete]
		   ,[Contractor_List],[Contractor_Insert],[Contractor_Edit],[Contractor_Delete]
		   ,[Contractor_Order_List],[Contractor_Order_Insert],[Contractor_Order_Edit],[Contractor_Order_Delete]
		   ,[Notification_List],[Notification_Insert],[Notification_Edit],[Notification_Delete]
		   ,[Task_List],[Task_Insert],[Task_Edit],[Task_Delete]
		   ,[Technology_List],[Technology_Insert],[Technology_Edit],[Technology_Delete]
		   ,[CNC_Program_List],[CNC_Program_Insert],[CNC_Program_Edit],[CNC_Program_Delete]
		   ,[Tool_List],[Tool_Insert],[Tool_Edit],[Tool_Delete]
		   ,[Fixture_List],[Fixture_Insert],[Fixture_Edit],[Fixture_Delete]
		   ,[Quality_List],[Quality_Insert],[Quality_Edit],[Quality_Delete]
		   ,[CMM_Program_List],[CMM_Program_Insert],[CMM_Program_Edit],[CMM_Program_Delete]
		   ,[Users_List],[Users_Insert],[Users_Edit],[Users_Delete]
		   ,[FormTemplates_List],[FormTemplates_Insert],[FormTemplates_Edit],[FormTemplates_Delete] )
     VALUES
           ('Emil'
           ,'Masłowski'
           ,1
           ,1
           ,'emil.maslowski@leopek.com'
           ,'tigger13'
           ,'502340602'
           ,'017345821'
           ,'opis'
           ,'11.11.2014'
           ,3,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
		   ,1,0,0,0
	)
GO


-- --------------------------------------------------
-- User - view and insert access
-- --------------------------------------------------

INSERT INTO [dbo].[Users]
           ([F_Name]
           ,[L_Name]
           ,[PositionId]
           ,[DepartmentId]
           ,[Email]
           ,[Password]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId]
		   ,[Admin]
		   ,[Customer_List],[Customer_Insert],[Customer_Edit],[Customer_Delete]
		   ,[Customer_Part_List],[Customer_Part_Insert],[Customer_Part_Edit],[Customer_Part_Delete]
		   ,[Customer_Order_List],[Customer_Order_Insert],[Customer_Order_Edit],[Customer_Order_Delete]
		   ,[Contractor_List],[Contractor_Insert],[Contractor_Edit],[Contractor_Delete]
		   ,[Contractor_Order_List],[Contractor_Order_Insert],[Contractor_Order_Edit],[Contractor_Order_Delete]
		   ,[Notification_List],[Notification_Insert],[Notification_Edit],[Notification_Delete]
		   ,[Task_List],[Task_Insert],[Task_Edit],[Task_Delete]
		   ,[Technology_List],[Technology_Insert],[Technology_Edit],[Technology_Delete]
		   ,[CNC_Program_List],[CNC_Program_Insert],[CNC_Program_Edit],[CNC_Program_Delete]
		   ,[Tool_List],[Tool_Insert],[Tool_Edit],[Tool_Delete]
		   ,[Fixture_List],[Fixture_Insert],[Fixture_Edit],[Fixture_Delete]
		   ,[Quality_List],[Quality_Insert],[Quality_Edit],[Quality_Delete]
		   ,[CMM_Program_List],[CMM_Program_Insert],[CMM_Program_Edit],[CMM_Program_Delete]
		   ,[Users_List],[Users_Insert],[Users_Edit],[Users_Delete]
		   ,[FormTemplates_List],[FormTemplates_Insert],[FormTemplates_Edit],[FormTemplates_Delete] )
     VALUES
           ('Karol'
           ,'Bednarski'
           ,3
           ,3
           ,'karol.bednarski@leopek.com'
           ,'tigger13'
           ,'502340609'
           ,'017345826'
           ,'opis'
           ,'11.11.2014'
           ,3,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
		   ,1,1,0,0
	)
GO

-- --------------------------------------------------
-- User - view, insert and deit access
-- --------------------------------------------------

INSERT INTO [dbo].[Users]
           ([F_Name]
           ,[L_Name]
           ,[PositionId]
           ,[DepartmentId]
           ,[Email]
           ,[Password]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId]
		   ,[Admin]
		   ,[Customer_List],[Customer_Insert],[Customer_Edit],[Customer_Delete]
		   ,[Customer_Part_List],[Customer_Part_Insert],[Customer_Part_Edit],[Customer_Part_Delete]
		   ,[Customer_Order_List],[Customer_Order_Insert],[Customer_Order_Edit],[Customer_Order_Delete]
		   ,[Contractor_List],[Contractor_Insert],[Contractor_Edit],[Contractor_Delete]
		   ,[Contractor_Order_List],[Contractor_Order_Insert],[Contractor_Order_Edit],[Contractor_Order_Delete]
		   ,[Notification_List],[Notification_Insert],[Notification_Edit],[Notification_Delete]
		   ,[Task_List],[Task_Insert],[Task_Edit],[Task_Delete]
		   ,[Technology_List],[Technology_Insert],[Technology_Edit],[Technology_Delete]
		   ,[CNC_Program_List],[CNC_Program_Insert],[CNC_Program_Edit],[CNC_Program_Delete]
		   ,[Tool_List],[Tool_Insert],[Tool_Edit],[Tool_Delete]
		   ,[Fixture_List],[Fixture_Insert],[Fixture_Edit],[Fixture_Delete]
		   ,[Quality_List],[Quality_Insert],[Quality_Edit],[Quality_Delete]
		   ,[CMM_Program_List],[CMM_Program_Insert],[CMM_Program_Edit],[CMM_Program_Delete]
		   ,[Users_List],[Users_Insert],[Users_Edit],[Users_Delete]
		   ,[FormTemplates_List],[FormTemplates_Insert],[FormTemplates_Edit],[FormTemplates_Delete] )
     VALUES
           ('Zofia'
           ,'Marszałek'
           ,1
           ,1
           ,'zofia.marszalek@leopek.com'
           ,'tigger13'
           ,'502340611'
           ,'017345832'
           ,'opis'
           ,'11.11.2014'
           ,3,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
		   ,1,1,1,0
	)
GO

-- --------------------------------------------------
-- Typy formularzy
-- --------------------------------------------------

INSERT INTO [dbo].[FormTypeSet]
           ([Name])
     VALUES
           ('technologiczny')
GO

INSERT INTO [dbo].[FormTypeSet]
           ([Name])
     VALUES
           ('jakościowy')
GO

INSERT INTO [dbo].[FormTypeSet]
           ([Name])
     VALUES
           ('kadrowy')
GO


INSERT INTO [dbo].[FormTypeSet]
           ([Name])
     VALUES
           ('handlowy')
GO

INSERT INTO [dbo].[FormTypeSet]
           ([Name])
     VALUES
           ('magazynowy')
GO

-- --------------------------------------------------
-- Księga jakości
-- --------------------------------------------------

INSERT INTO [dbo].[QualityDocumentationTypeSet]
           ([Name])
     VALUES
           ('Księga jakości')
GO
INSERT INTO [dbo].[QualityDocumentationTypeSet]
           ([Name])
     VALUES
           ('Procedury systemowe')
GO
INSERT INTO [dbo].[QualityDocumentationTypeSet]
           ([Name])
     VALUES
           ('Procesy')
GO

-- --------------------------------------------------
-- Typy plików w narzedziach
-- --------------------------------------------------

INSERT INTO [dbo].[Tool_Document_TypeSet]
           ([Name])
     VALUES
           ('Rysunek 2D')
GO

INSERT INTO [dbo].[Tool_Document_TypeSet]
           ([Name])
     VALUES
           ('Rysunek ustawczy')
GO

INSERT INTO [dbo].[Tool_Document_TypeSet]
           ([Name])
     VALUES
           ('Model 3D')
GO

INSERT INTO [dbo].[Tool_Document_TypeSet]
           ([Name])
     VALUES
           ('Karta Katalogowa')
GO

-- --------------------------------------------------
-- Typy plików w przyrządach
-- --------------------------------------------------

INSERT INTO [dbo].[Fixture_Document_TypeSet]
           ([Name])
     VALUES
           ('Rysunek 2D')
GO
INSERT INTO [dbo].[Fixture_Document_TypeSet]
           ([Name])
     VALUES
           ('Model 3D')
GO


-- --------------------------------------------------
-- Status zadania
-- --------------------------------------------------

INSERT INTO [dbo].[TaskStatusSet]
           ([Name])
     VALUES
           ('Nie Zakończone')
GO

INSERT INTO [dbo].[TaskStatusSet]
           ([Name])
     VALUES
           ('Anulowane')
GO

INSERT INTO [dbo].[TaskStatusSet]
           ([Name])
     VALUES
           ('Zakończone')
GO


-- --------------------------------------------------
-- Status zamowienia u dostawcow
-- --------------------------------------------------

INSERT INTO [dbo].[Order_StatusSet]
           ([Name])
     VALUES
           ('Nie Zakończone')
GO

INSERT INTO [dbo].[Order_StatusSet]
           ([Name])
     VALUES
           ('Zakończone')
GO


-- --------------------------------------------------
-- Typ Powiadomienia
-- --------------------------------------------------

INSERT INTO [dbo].[NotificationTypeSet]
           ([Name])
     VALUES
           ('wdrożenie')
GO

INSERT INTO [dbo].[NotificationTypeSet]
           ([Name])
     VALUES
           ('rewizja')
GO

INSERT INTO [dbo].[NotificationTypeSet]
           ([Name])
     VALUES
           ('reklamacja')
GO




-- --------------------------------------------------
-- Status Powiadomienia
-- --------------------------------------------------

INSERT INTO [dbo].[NotificationStatusSet]
           ([Name])
     VALUES
           ('Nie Zakończone')
GO

INSERT INTO [dbo].[NotificationStatusSet]
           ([Name])
     VALUES
           ('Anulowane')
GO

INSERT INTO [dbo].[NotificationStatusSet]
           ([Name])
     VALUES
           ('Zakończone')
GO


-- --------------------------------------------------
-- Rodzaje maszyn cnc
-- --------------------------------------------------


INSERT INTO [dbo].[CNC_Machine_TypeSet]
           ([Name])
     VALUES
           ('frezarka')
GO

INSERT INTO [dbo].[CNC_Machine_TypeSet]
           ([Name])
     VALUES
           ('tokarka')
GO

INSERT INTO [dbo].[CNC_Machine_TypeSet]
           ([Name])
     VALUES
           ('elektrodrążarka')
GO

INSERT INTO [dbo].[CNC_Machine_TypeSet]
           ([Name])
     VALUES
           ('szlifierka')
GO

INSERT INTO [dbo].[CNC_Machine_TypeSet]
           ([Name])
     VALUES
           ('wiertarka')
GO

INSERT INTO [dbo].[CNC_Machine_TypeSet]
           ([Name])
     VALUES
           ('honownica')
GO

INSERT INTO [dbo].[CNC_Machine_TypeSet]
           ([Name])
     VALUES
           ('myjka')
GO

INSERT INTO [dbo].[CNC_Machine_TypeSet]
           ([Name])
     VALUES
           ('piaskarka')
GO

-- --------------------------------------------------
-- Rodzaje narzędzi
-- --------------------------------------------------


INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Oprawka')
GO

INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Przedłużka')
GO

INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Głowica frezarska')
GO

INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Frez')
GO

INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Fazownik')
GO

INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Nawiertak')
GO

INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Wiertło')
GO


INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Pogłębiacz')
GO

INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Rozwiertak')
GO

INSERT INTO [dbo].[Tool_TypeSet]
           ([Name])
     VALUES
           ('Wytaczadło')
GO

-- --------------------------------------------------
-- kategorie dostawców
-- --------------------------------------------------


INSERT INTO [dbo].[Contractor_categorySet]
           ([Nazwa])
     VALUES
           ('narzędzia frezarskie i tokarskie')
GO

INSERT INTO [dbo].[Contractor_categorySet]
           ([Nazwa])
     VALUES
           ('narzędzia specjalne')
GO

INSERT INTO [dbo].[Contractor_categorySet]
           ([Nazwa])
     VALUES
           ('przyrządy i mocowania')
GO

INSERT INTO [dbo].[Contractor_categorySet]
           ([Nazwa])
     VALUES
           ('oprawki frezarskie i tokarskie')
GO

INSERT INTO [dbo].[Contractor_categorySet]
           ([Nazwa])
     VALUES
           ('narzędzia szlifierskie')
GO

INSERT INTO [dbo].[Contractor_categorySet]
           ([Nazwa])
     VALUES
           ('oleje')
GO



-- --------------------------------------------------
-- Państwa
-- --------------------------------------------------

INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Abchazja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Afganistan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Albania') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Algieria') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Andora') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Angola') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Antigua i Barbuda') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Arabia Saudyjska') 
GO 
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Argentyna') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Armenia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Australia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Austria') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Azerbejdżan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Bahamy') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Bahrajn') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Bangladesz') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Barbados') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Belgia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Belize') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Benin') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Bhutan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Białoruś') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Birma') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Boliwia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Bośnia i Hercegowina') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Botswana') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Brazylia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Brunei') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Bułgaria') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Burkina Faso') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Burundi') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Chile') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Chiny') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Chorwacja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Cypr') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Cypr Północny') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Czad') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Czarnogóra') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Czechy') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Dania') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Demokratyczna Republika Konga') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Dominika') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Dominikana') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Dżibuti') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Egipt') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Ekwador') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Erytrea') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Estonia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Etiopia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Fidżi') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Filipiny') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Finlandia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Francja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Gabon') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Gambia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Ghana') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Górski Karabach') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Grecja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Grenada') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Gruzja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Gujana') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Gwatemala') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Gwinea') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Gwinea Bissau') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Gwinea Równikowa') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Haiti') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Hiszpania') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Holandia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Honduras') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Indie') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Indonezja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Irak') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Iran') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Irlandia')
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Islandia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Izrael') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Jamajka') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Japonia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Jemen') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Jordania') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kambodża') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kamerun') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kanada') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Katar') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kazachstan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kenia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kirgistan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kiribati') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kolumbia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Komory') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kongo') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Korea Południowa') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Korea Północna') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kosowo') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kostaryka') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kuba') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Kuwejt') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Laos') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Lesotho') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Liban') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Liberia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Libia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Liechtenstein') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Litwa') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Luksemburg') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('£otwa') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Macedonia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Madagaskar') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Malawi') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Malezja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Mali') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Malta') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Maroko') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Mauretania') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Mauritius') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Meksyk') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Mikronezja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Monako') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Mongolia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Mozambik') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Naddniestrze') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Namibia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Nauru') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Nepal') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Niemcy') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Niger') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Nigeria') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Nikaragua') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Norwegia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Nowa Zelandia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Oman') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Osetia Południowa') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Pakistan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Panama') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Papua - Nowa Gwinea') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Paragwaj') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Peru') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Polska') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Portugalia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Republika Południowej Afryki') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Republika środkowoafrykańska') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Republika Zielonego Przylądka') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Rosja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Rumunia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Rwanda') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Sahara Zachodnia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Saint Kitts i Nevis') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Saint Lucia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Saint Vincent i Grenadyny') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Salwador') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Samoa') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('San Marino') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Senegal') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Serbia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Seszele') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Sierra Leone') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Singapur') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Słowacja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Słowenia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Somalia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Somaliland') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Sri Lanka') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Stany Zjednoczone') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Suazi') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Sudan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Sudan Południowy') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Surinam') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Syria') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Szwajcaria') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Szwecja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Tadżykistan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Tajlandia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Tajwan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Tanzania') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Timor Wschodni') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Togo') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Tonga') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Trynidad i Tobago') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Tunezja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Turcja') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Turkmenistan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Tuvalu') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Uganda') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Ukraina') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Urugwaj') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Uzbekistan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Vanuatu') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Watykan') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Wenezuela') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Węgry') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Wielka Brytania') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Wietnam') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Włochy') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Wybrzeże Kości Słoniowej') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Wyspy Salomona') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Wyspy świętego Tomasza i Książęca') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Zambia') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Zimbabwe') 
GO
INSERT INTO [dbo].[Countries] ([Name]) VALUES ('Zjednoczone Emiraty Arabskie') 

GO

-- --------------------------------------------------
-- Status programu CNC
-- --------------------------------------------------

INSERT INTO [dbo].[CNC_StatusSet]
           ([Name])
     VALUES
           ('Zatwierdzony')
GO

INSERT INTO [dbo].[CNC_StatusSet]
           ([Name])
     VALUES
           ('W trakcie testów')
GO

INSERT INTO [dbo].[CNC_StatusSet]
           ([Name])
     VALUES
           ('Wycofany')
GO


-- --------------------------------------------------
-- Status programu CMM
-- --------------------------------------------------

INSERT INTO [dbo].[CMM_StatusSet]
           ([Name])
     VALUES
           ('Zatwierdzony')
GO

INSERT INTO [dbo].[CMM_StatusSet]
           ([Name])
     VALUES
           ('W trakcie testów')
GO

INSERT INTO [dbo].[CMM_StatusSet]
           ([Name])
     VALUES
           ('Wycofany')
GO

-- --------------------------------------------------
-- Rodzaje Tool Assemblies 
-- --------------------------------------------------

INSERT INTO [dbo].[Tool_Assembly_TypeSet]
           ([Name])
     VALUES
           ('Toczenie')
GO

INSERT INTO [dbo].[Tool_Assembly_TypeSet]
           ([Name])
     VALUES
           ('Frezowanie')
GO

INSERT INTO [dbo].[Tool_Assembly_TypeSet]
           ([Name])
     VALUES
           ('Wiercenie')
GO

INSERT INTO [dbo].[Tool_Assembly_TypeSet]
           ([Name])
     VALUES
           ('Gwintowanie')
GO


-- --------------------------------------------------
-- Rodzaje mocowan narzedzi do maszyn
-- --------------------------------------------------


INSERT INTO [dbo].[Tool_Holder_SystemSet]
           ([Name])
     VALUES
           ('HSK-A63 · DIN 69893-1')
GO

INSERT INTO [dbo].[Tool_Holder_SystemSet]
           ([Name])
     VALUES
            ('HSK-A80 · DIN 69893-1')
GO

INSERT INTO [dbo].[Tool_Holder_SystemSet]
           ([Name])
     VALUES
           ('HSK-A100 · DIN 69893-1')
GO

INSERT INTO [dbo].[Tool_Holder_SystemSet]
           ([Name])
     VALUES
           ('CAPTO C6 · ISO 26623')
GO

INSERT INTO [dbo].[Tool_Holder_SystemSet]
           ([Name])
     VALUES
           ('BT50 · JIS B 6339')
GO

-- --------------------------------------------------
-- Form templates
-- --------------------------------------------------


INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Instrukcja kontroli'
           ,'Firmowy wzór instrukcji kontroli wykorzystywany przy
		    sporządzaniu instrukcji niezbędnych w procesach kontroli jakości'
           ,'11.11.2014'
           ,2)
GO


INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Karta kontroli'
           ,'Firmowy wzór karty kontroli wykorzystywany przy
		    sporządzaniu instrukcji niezbędnych w procesach kontroli jakości'
           ,'11.11.2014'
           ,2)
GO

INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Zlecenie wydania z magazynu'
           ,'Formularz służący do zlecenia wydania towaru z magazynu wewnętrznego'
           ,'11.11.2014'
           ,5)
GO

INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Standardowy dokument firmowy'
           ,'Pusty dokument z nagłówkiem i stopką firmową'
           ,'11.11.2014'
           ,4)
GO

INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Formularz zamówienia'
           ,'Pusty formularz zamówienia z nagłówkiem i stopką firmową'
           ,'11.11.2014'
           ,4)
GO

INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Wniosek urlopowy'
           ,'Dokument służacy do składania podania o urlop wpoczynkowy / zdrowotny / macierzyński itp.'
           ,'11.11.2014'
           ,3)
GO

INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Karta narzędzia'
           ,'Firmowy wzorzec karty narzdzędza wykorzystywanej dokumentacji narzędzi produkcyjnych'
           ,'11.11.2014'
           ,1)
GO

INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Instrukcja pracy'
           ,'Firmowy wzór instrukcji pracy wykorzystywany przy sporządzaniu instrukcji niezbędnych w dokumentacji procesów produkcyjnych'
           ,'11.11.2014'
           ,1)
GO

INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Arkusz ustawczy'
           ,'Firmowy wzorzec arkusza ustawczego wykorzystywanego przy dokumentowaniu przygotowania maszyny do produkcji'
           ,'11.11.2014'
           ,1)
GO

INSERT INTO [dbo].[FormTemplatesSet]
           ([Title]
           ,[Description]
           ,[Date_created_modified]
           ,[FormTypeId])
     VALUES
           ('Program CNC'
           ,'Formatka nagłówka dla programów CNC'
           ,'11.11.2014'
           ,1)
GO


INSERT INTO [dbo].[FormTemplate_FilesSet]
           ([Title]
		   ,[Index]
		   ,[filePath]
		   ,[File_extension]
		   ,[File_size]
		   ,[Date_created_modified]
           ,[FormTemplatesId])
     VALUES
           ('Arkusz ustawczy - pierwsza edycja'
           ,1
           ,'SAMPLE_FILE_1.pdf'
           ,'pdf'
		   ,1
		   ,'2016-02-06'
		   ,7)
GO


INSERT INTO [dbo].[FormTemplate_FilesSet]
           ([Title]
		   ,[Index]
		   ,[filePath]
		   ,[File_extension]
		   ,[File_size]
		   ,[Date_created_modified]
           ,[FormTemplatesId])
     VALUES
           ('Dodano pole z informacją o rewizji i dacie rewizji'
           ,2
           ,'SAMPLE_FILE_2.pdf'
           ,'pdf'
		   ,1
		   ,'2016-02-08'
		   ,7)
GO

INSERT INTO [dbo].[FormTemplate_FilesSet]
           ([Title]
		   ,[Index]
		   ,[filePath]
		   ,[File_extension]
		   ,[File_size]
		   ,[Date_created_modified]
           ,[FormTemplatesId])
     VALUES
           ('Dodano pole z informacją o autorze arkusza'
           ,3
           ,'SAMPLE_FILE_3.pdf'
           ,'pdf'
		   ,1
		   ,'2016-03-28'
		   ,7)
GO