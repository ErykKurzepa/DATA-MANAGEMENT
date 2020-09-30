USE [YASA_PL];
GO

-- --------------------------------------------------
-- MASZYNY
-- --------------------------------------------------

INSERT INTO [dbo].[CNC_MachineSet]
           ([Name]
           ,[Manufacturer]
           ,[Serial_number]
           ,[Model]
           ,[Moc]
           ,[Control]
           ,[Axis]
           ,[Date_purchased]
           ,[Max_spindle]
           ,[CNC_Machine_TypeId]
           ,[Description]
		   ,[Tool_Holder_SystemId])
     VALUES
           ('GROB G550'
           ,'GROB-WERKE GmbH & Co. KG'
           ,'G550-123'
           ,'G550'
           ,300
           ,'Siemens Sinumeric D840'
           ,5
           ,convert(datetime,'18-11-13 10:34:09 PM',5)
           ,16000
           ,1
           ,'GROB-WERKE GmbH & Co. KG
Industriestraße 4
87719 Mindelheim, Germany

Phone: +49 (8261) 996-0
Fax: +49 (8261) 996-268
E-Mail: info@de.grobgroup.com'
,1)
GO

INSERT INTO [dbo].[CNC_MachineSet]
           ([Name]
           ,[Manufacturer]
           ,[Serial_number]
           ,[Model]
           ,[Moc]
           ,[Control]
           ,[Axis]
           ,[Date_purchased]
           ,[Max_spindle]
           ,[CNC_Machine_TypeId]
           ,[Description]
		   ,[Tool_Holder_SystemId])
     VALUES
           ('OKUMA HB500'
           ,'Okuma Japan'
           ,'OK110'
           ,'G550'
           ,300
           ,'Fanuc'
           ,5
           ,convert(datetime,'18-11-13 10:34:09 PM',5)
           ,16000
           ,1
           ,'GROB-WERKE GmbH & Co. KG
Industriestraße 4
87719 Mindelheim, Germany

Phone: +49 (8261) 996-0
Fax: +49 (8261) 996-268
E-Mail: info@de.grobgroup.com'
,1)
GO

INSERT INTO [dbo].[CNC_MachineSet]
           ([Name]
           ,[Manufacturer]
           ,[Serial_number]
           ,[Model]
           ,[Moc]
           ,[Control]
           ,[Axis]
           ,[Date_purchased]
           ,[Max_spindle]
           ,[CNC_Machine_TypeId]
           ,[Description]
		    ,[Tool_Holder_SystemId])
     VALUES
           ('Heller MCi16'
           ,'Heller'
           ,'234sdf'
           ,'G550'
           ,300
           ,'Siemens Sinumeric D840'
           ,5
           ,convert(datetime,'18-11-13 10:34:09 PM',5)
           ,16000
           ,1
           ,'GROB-WERKE GmbH & Co. KG
Industriestraße 4
87719 Mindelheim, Germany

Phone: +49 (8261) 996-0
Fax: +49 (8261) 996-268
E-Mail: info@de.grobgroup.com'
,1)
GO


-- --------------------------------------------------
-- ARKUSZE USTAWCZE
-- --------------------------------------------------

INSERT INTO [dbo].[Setup_SheetSet]
           ([Name]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId] )

     VALUES
           ('Arkusz ustawczy Frezowanie Feel Comp 162710-001'
           ,'Arkusz sutawczy dla kompletna obróbka frezarska detalu Feel Computer 162710-001. Pełna obróbka w 3 zamocowaniach. Program wykorzystuje 3 zmienne do wyboru zamocowania które ma być obrabiane: FIXTURE_1_SELECT=0'
			,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO


-- --------------------------------------------------
-- PROGRAMY CNC
-- --------------------------------------------------

INSERT INTO [dbo].[CNC_ProgramSet]
           ([Name]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId]
           ,[CNC_MachineId]
		   ,Setup_SheetId )

     VALUES
           ('Frezowanie Feel Comp 162710-001'
           ,'Kompletna obróbka frezarska detalu Feel Computer 162710-001. Pełna obróbka w 3 zamocowaniach. Program wykorzystuje 3 zmienne do wyboru zamocowania które ma być obrabiane: FIXTURE_1_SELECT=0'
			,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
		   ,1
		   ,1
)
GO

-- --------------------------------------------------
-- Dostawcy
-- --------------------------------------------------

INSERT INTO [dbo].[ContractorSet]
           ([Name]
           ,[Address]
           ,[City]
           ,[Postal_Code]
           ,[Phone]
           ,[Email]
           ,[Www]
           ,[Description]
           ,[Contractor_categoryId]
           ,[CountryId]
           ,[Date_created_modified]
           ,[UserId])
     VALUES
           ('ISCAR Poland Sp. z o.o.'
           ,'ul. Gospodarcza 14'
           ,'Katowice'
           ,'40-432'
           ,'+48 32 7357700'
           ,'iscar@iscar.pl'
           ,'www.iscar.pl'
           ,'Izraelski producent unikalnych i innowacyjnych narzędzi skrawających do obróbki metalu (narzędzia do toczenia, narzędzia do rowkowania, narzędzia do frezowania, narzędzia do wiercenia, narzędzia do pogłębiania, narzędzia do gwintowania), firma Iscar, założona została w 1952 roku i na przestrzeni lat stała się globalnym przedsiębiorstwem z przedstawicielstwami w ponad 50 krajach. Celem Iscar jest tworzenie efektywnych, praktycznych i ekonomicznych rozwiązań w zakresie obróbki skrawaniem dla klientów na całym świecie.
Na polskim rynku narzędziowym firma Iscar działa od ponad 20 lat. Iscar Poland to firma oferująca kompleksowe rozwiązania procesów technologicznych w zakresie obróbka skrawaniem.
Odbiorcami narzędzi skrawających Iscar są firmy z segmentu samochodowego, lotniczego, energetycznego, maszynowego, stoczniowego, form i matryc, czyli głównych gałęzi przemysłu. Centralny magazyn narzędzi Iscar na Europę znajduje się w Belgii, skąd przesyłki docierają do klienta w czasie ok. 48 h.'
           ,1
           ,138
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO

INSERT INTO [dbo].[ContractorSet]
           ([Name]
           ,[Address]
           ,[City]
           ,[Postal_Code]
           ,[Phone]
           ,[Email]
           ,[Www]
           ,[Description]
           ,[Contractor_categoryId]
           ,[CountryId]
           ,[Date_created_modified]
           ,[UserId])
     VALUES
           ('Abplanalp Consulting Sp. Zo.o.'
           ,'ul. Kostrzyńska 36'
           ,'Warszawa'
           ,'02-979'
           ,'+48 223794400'
           ,'narzedzia@abplanalp.pl'
           ,'www.haimer.com'
           ,'Oprawki Haimer'
           ,1
           ,138
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO

INSERT INTO [dbo].[ContractorSet]
           ([Name]
           ,[Address]
           ,[City]
           ,[Postal_Code]
           ,[Phone]
           ,[Email]
           ,[Www]
           ,[Description]
           ,[Contractor_categoryId]
           ,[CountryId]
           ,[Date_created_modified]
           ,[UserId])
     VALUES
           ('JG SERVICE'
           ,'ul. KuŸnicza 4'
           ,'świdnik'
           ,'21-040'
           ,'+48 81 468 00 30'
           ,'info@jgservice.pl'
           ,'www.jgservice.pl'
           ,'Marka J.G. SPECIAL TOOLS jest własnością firmy J.G. Service Grzegorz Reszka. Powstała w 2011 roku jako kolejny etap rozwoju firmy.
Specjalizuje się w produkcji narzędzi składanych na płytki ISO oraz na płytki wlutowane, a także w opracowywaniu zaawansowanych technologii inżynierskich.'
           ,2
           ,138
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO

-- --------------------------------------------------
-- Klienci
-- --------------------------------------------------

INSERT INTO [dbo].[CustomerSet]
           ([Name]
           ,[Address]
           ,[City]
           ,[Postal_Code]
           ,[Phone]
           ,[Email]
           ,[Www]
           ,[CountryId]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId])
     VALUES
           ('MOOG Controls Corporation'
           ,'Jamison Road East Aurora'
           ,'New York'
           ,'14052'
           ,'+1 716 652 2000'
           ,' '
           ,'www.moog.com'
           ,138
           ,'Moog Inc. is a worldwide designer, manufacturer, and integrator of precision motion control products and systems. Moog’s high-performance systems control military and commercial aircraft, satellites and space vehicles, launch vehicles, missiles, industrial machinery, wind energy, marine applications, and medical equipment.'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO


-- --------------------------------------------------
-- Klienci - pracownicy
-- --------------------------------------------------

INSERT INTO [dbo].[Customer_ContactSet1]
           ([F_Name]
           ,[L_Name]
           ,[Position]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Email]
           ,[Department]
           ,[CustomerId]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId])
     VALUES
           ('Danny'
           ,'Taylor'
           ,'Supply Chain Manufacturing Engineer'
           ,'+44 1902 396462'
           ,'+44 7736 380939'
           ,'dtaylor5@moog.com'
           ,'Aircraft Group - Wolverhampton Operations'
           ,1
           ,''
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO

INSERT INTO [dbo].[Customer_ContactSet1]
           ([F_Name]
           ,[L_Name]
           ,[Position]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Email]
           ,[Department]
           ,[CustomerId]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId])
     VALUES
           ('Edward'
           ,'Lay'
           ,'-'
           ,'0065-6513-7883'
           ,'0060-16-211-8788'
           ,'elay@moog.com'
           ,'Supplier Performance'
           ,1
           ,''
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO

INSERT INTO [dbo].[Customer_ContactSet1]
           ([F_Name]
           ,[L_Name]
           ,[Position]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Email]
           ,[Department]
           ,[CustomerId]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId])
     VALUES
           ('Richard'
           ,'Laroya'
           ,'MANUFACTURING MANAGER'
           ,'0063 74 447-3355'
           ,'0063 917 8088 173'
           ,'rlaroya@moog.com'
           ,''
           ,1
           ,'MOOG Controls Corporation – Philippines Branch'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO

INSERT INTO [dbo].[Customer_ContactSet1]
           ([F_Name]
           ,[L_Name]
           ,[Position]
           ,[W_Phone_No]
           ,[M_Phone_No]
           ,[Email]
           ,[Department]
           ,[CustomerId]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId])
     VALUES
           ('Craig'
           ,'Munro'
           ,'Global Business Manager - Prismatic & Centerline Team'
           ,'-'
           ,'0063 (0) 9178088073'
           ,'cmunro@moog.com'
           ,''
           ,1
           ,'Moog Controls Corporation
Loakan Road, Baguio City
Philippines 2600'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO

-- --------------------------------------------------
-- Elementy narzędzi
-- --------------------------------------------------

INSERT INTO [dbo].[Tool_ElementSet]
           ([Name]
           ,[Date_created_modified]
           ,[Description]
           ,[ContractorId]
           ,[Tool_TypeId]
           ,[Catalog_number]
           ,[UserId])
     VALUES
           ('ISCAR ECA-H3 12-18/36C12CF-R20'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,'D12 AP18 H36mm 3 flute solid carbide endmills w ith 39-41° different helix'
           ,1
           ,4
           ,'5622829'
           ,1)
GO

INSERT INTO [dbo].[Tool_ElementSet]
           ([Name]
           ,[Date_created_modified]
           ,[Description]
           ,[ContractorId]
           ,[Tool_TypeId]
           ,[Catalog_number]
           ,[UserId])
     VALUES
           ('ISCAR ECA-H3 16-24/48C16CF-R08'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,'D16 AP24 H48mm 3 flute solid carbide endmills w ith 39-41° different helix'
           ,1
           ,4
           ,'5622812'
           ,1)
GO

INSERT INTO [dbo].[Tool_ElementSet]
           ([Name]
           ,[Date_created_modified]
           ,[Description]
           ,[ContractorId]
           ,[Tool_TypeId]
           ,[Catalog_number]
           ,[UserId])
     VALUES
           ('HAIMER HSK-A63.140.16'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,'Oprawka D16 termokurczliwa krótka (95mm)'
           ,3
           ,1
           ,'A63.140.16'
           ,1)
GO

INSERT INTO [dbo].[Tool_ElementSet]
           ([Name]
           ,[Date_created_modified]
           ,[Description]
           ,[ContractorId]
           ,[Tool_TypeId]
           ,[Catalog_number]
           ,[UserId])
     VALUES
           ('HAIMER HSK-A63.140.12'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,'Oprawka D12 termokurczliwa krótka (90mm)'
           ,3
           ,1
           ,'A63.140.12'
           ,1)
GO

-- --------------------------------------------------
-- Narzędzia
-- --------------------------------------------------

INSERT INTO [dbo].[ToolSet]
           ([Name]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId]
           ,[Tool_Number]
		   ,[Tool_Assembly_TypeId]
		   ,[Tool_Holder_SystemId])
     VALUES
           ('Frez D10 do obróbki zgrubnej'
           ,'Należy zachować bardzo krótki wysięg narzędzia, innaczej narzędzie drży podczas obróbki'
           ,'2014-03-12'
           ,1
           ,'T194'
		   ,1
		   ,1)
GO

INSERT INTO [dbo].[ToolSet]
           ([Name]
           ,[Description]
           ,[Date_created_modified]
           ,[UserId]
           ,[Tool_Number]
		   ,[Tool_Assembly_TypeId]
		    ,[Tool_Holder_SystemId])
     VALUES
           ('Frez D16 - wykańczający'
           ,'Narzędzie 6 piórowe, wcześniejsze testy z narzędziami 4 piórowymi nie przyniosły pozytywnych rezultatów'
           ,'2014-03-12'
           ,1
           ,'T184'
		   ,2
		   ,2)
GO

-- --------------------------------------------------
-- Rodzaje artykułów do rejestru zamówień
-- --------------------------------------------------

INSERT INTO [dbo].[Article_typeSet]
           ([Name])
     VALUES
           ('Artykuły biurowe')
GO
INSERT INTO [dbo].[Article_typeSet]
           ([Name])
     VALUES
           ('Narzędzia skrawające')
GO

INSERT INTO [dbo].[Article_typeSet]
           ([Name])
     VALUES
           ('Usługi zewnętrzne')
GO

INSERT INTO [dbo].[Article_typeSet]
           ([Name])
     VALUES
           ('Sprzęt komputerowy')
GO

-- --------------------------------------------------
-- Detale klientow
-- --------------------------------------------------

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Assembly 737 Elevator Feel Computer L.H.'
           ,'162710-001'
           ,'737 Feel Computer.
		   Elevator Feel System: The elevator feel system supplies feel forces to the control system.
		    The feel forces developed will vary depending upon airspeed and stabilizer trim. The feel system contains two basic units: 
			1. The feel and centering mechanism. 
			2. The feel computer. 
			The feel and centering unit consists of a cam, spring-loaded follower, two hydraulic actuators and related linkage.'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Assembly 737 Elevator Feel Computer R.H.'
           ,'162710-002'
           ,'737 Feel Computer.
		   Elevator Feel System: The elevator feel system supplies feel forces to the control system.
		    The feel forces developed will vary depending upon airspeed and stabilizer trim. The feel system contains two basic units: 
			1. The feel and centering mechanism. 
			2. The feel computer. 
			The feel and centering unit consists of a cam, spring-loaded follower, two hydraulic actuators and related linkage.'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Assy Autopilot Module'
           ,'158010'
           ,'B737 Auto Pilot'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Inboard Promary'
           ,'C32215-001'
           ,'A340 Prim Inboard Manifold'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Inboard Secondary'
           ,'C32216-001'
           ,'A340 Inboard Sec Manifold'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Outboard Primary'
           ,'C32217-001'
           ,'A340 Prim Outboard Manifold'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Outboard Secondary'
           ,'C32218-001'
           ,'A340 Outboard Sec Manifold'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Assembly Mechanical Control Spoiler'
           ,'B94035-002'
           ,'B777 Spoiler Manifold'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Assembly Outboard'
           ,'C10228-002'
           ,'B777 Outboard Manifold'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold Assembly Inboard'
           ,'C10663-002'
           ,'B777 Inboard Manifold'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

INSERT INTO [dbo].[Customer_PartSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[CustomerId]
           ,[Date_created_modified]
           ,[UserId]
)
     VALUES
           ('Manifold 767 Assembly Elevator Feel Computer R.H.'
           ,'162010-009'
           ,'767 Feel Computer
		   Elevator Feel System: The elevator feel system supplies feel forces to the control system.
		    The feel forces developed will vary depending upon airspeed and stabilizer trim. The feel system contains two basic units: 
			1. The feel and centering mechanism. 
			2. The feel computer. 
			The feel and centering unit consists of a cam, spring-loaded follower, two hydraulic actuators and related linkage.'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
)
GO

-- --------------------------------------------------
-- Detale klientow - rewizje
-- --------------------------------------------------

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('C'
           ,' '
           ,'K. Anderson'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('C'
           ,' '
           ,'K. Anderson'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,2
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('N'
           ,' '
           ,'Pardike'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,3
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('L'
           ,'Cechy krytyczne: Long Cavities Section A-A and B-B with tight tolerances for length & Key Features lee plug dias'
           ,'R.S.Nicieja'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,4
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('G'
           ,'Cechy krytyczne: Three angle holes in Cavity view AG   Section N-N angle hole & Squareness of thread lee plug dias'
           ,'R.S.Nicieja'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,5
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('H'
           ,'Cechy krytyczne: Long Cavities Section A-A and B-B with tight tolerances for length & Key Features lee plug dias'
           ,'J. Fenton'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,6
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('H'
           ,'Cechy krytyczne: Three angle holes in Cavity view AG   Section N-N angle hole & Squareness of thread lee plug dias'
           ,'R.S. Nicieja'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,7
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('D'
           ,'Cechy krytyczne: .250 dia + 0.0005, .9263 dia  held to +/- 0.0003 parallel to .001 -- C'
           ,'J.Gangloff'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,8
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('A'
           ,'Cechy krytyczne: .250 dia + 0.0005, .9263 dia  held to +/- 0.0003 parallel to .001 -- C'
           ,'R.Turansky'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,9
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

INSERT INTO [dbo].[Customer_Part_IndexSet]
           ([Index_number]
           ,[Index_description]
           ,[Index_designer]
           ,[Index_date]
           ,[Customer_PartId]
           ,[Date_created_modified]
           ,[UserId]
           ,[Date_received])
     VALUES
           ('B'
           ,'Cechy krytyczne: Cavity per section G-G (long Reach for tools) .485 dia Section M-M has  .001" tolerance lee plug dias'
           ,'L. Hall'
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,10
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5))
GO

-- --------------------------------------------------
-- Materiały produkcyjne
-- --------------------------------------------------

INSERT INTO [dbo].[Production_materialSet]
           ([Name]
           ,[Number]
           ,[Description]
           ,[UserId]
           ,[Date_created_modified]
           ,[ContractorId])
     VALUES
           ('Forging Housing Computer Assembly Elevator Feel Computer'
           ,'162012 rev. H'
           ,'Odkuwka do produkcji Feel Comp 1'
           ,1
           ,convert(datetime,'18-06-12 10:34:09 PM',5)
           ,1)
GO

-- --------------------------------------------------
-- Powiadomienia o zmianach
-- --------------------------------------------------

INSERT INTO [dbo].[NotificationSet]
      ([Name]
      ,[Description]
      ,[Customer_PartId]
      ,[RequiredEndDate]
      ,[UserId]
      ,[Date_created_modified]
      ,[NotificationStatusId]
      ,[NotyficationTypeId])
  VALUES
           ('Wdrożenie produkcji Feel Computer'
           ,'Wprowadzenie obróbki skrawaniem Manifold Assembly 737 Elevator Feel Computer L.H.'
           ,1
           ,convert(datetime,'18-06-16 10:34:09 PM',5)
		   ,1
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,3
		   ,1)
GO


INSERT INTO [dbo].[NotificationSet]
      ([Name]
      ,[Description]
      ,[Customer_PartId]
      ,[RequiredEndDate]
      ,[UserId]
      ,[Date_created_modified]
      ,[NotificationStatusId]
      ,[NotyficationTypeId])
  VALUES
           ('Wdrożenie produkcji Auto Pilot'
           ,'Wprowadzenie kompletnej produckcji B737 Auto Pilot'
           ,3
           ,convert(datetime,'18-06-16 10:34:09 PM',5)
		   ,1
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,3
		   ,1)
GO


INSERT INTO [dbo].[NotificationSet]
      ([Name]
      ,[Description]
      ,[Customer_PartId]
      ,[RequiredEndDate]
      ,[UserId]
      ,[Date_created_modified]
      ,[NotificationStatusId]
      ,[NotyficationTypeId])
  VALUES
           ('Nowa rewizja Auto Pilot'
           ,'Aktualizacja procesu obróbki szlifierskiej dla B737 Auto Pilot'
           ,3
           ,convert(datetime,'18-06-16 10:34:09 PM',5)
		   ,4
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,1
		   ,2)
GO


INSERT INTO [dbo].[NotificationSet]
      ([Name]
      ,[Description]
      ,[Customer_PartId]
      ,[RequiredEndDate]
      ,[UserId]
      ,[Date_created_modified]
      ,[NotificationStatusId]
      ,[NotyficationTypeId])
  VALUES
           ('Nowa rewizja Auto Pilot'
           ,'Aktualizacja procesu obróbki szlifierskiej dla B737 Auto Pilot'
           ,3
           ,convert(datetime,'18-06-16 10:34:09 PM',5)
		   ,2
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,1
		   ,2)
GO



INSERT INTO [dbo].[NotificationSet]
      ([Name]
      ,[Description]
      ,[Customer_PartId]
      ,[RequiredEndDate]
      ,[UserId]
      ,[Date_created_modified]
      ,[NotificationStatusId]
      ,[NotyficationTypeId])
  VALUES
           ('Nowa rewizja Feel Computer'
           ,'Aktualizacja procesu obróbki skrawaniem Manifold Assembly 737 Elevator Feel Computer L.H.'
           ,1
           ,convert(datetime,'18-06-16 10:34:09 PM',5)
		   ,2
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,1
		   ,1)
GO




INSERT INTO [dbo].[TaskSet]
      ([Title]
      ,[Description]
      ,[EndDate]
      ,[UserIdTask]
      ,[UserId]
      ,[Date_created_modified]
      ,[NotificationId]
      ,[StartDate]
      ,[RequiredEndDate]
      ,[Priorytet]
      ,[TaskStatusId])
VALUES
           ('Przygotowanie programów CNC dla obróbki skrawaniem'
           ,'Proszę przygotować programy CNC dla obróbki detalu Feel Computer na maszynie Okuma MU-400'
           ,convert(datetime,'18-06-16 10:34:09 PM',5)
		   ,4
		   ,3
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,1
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,convert(datetime,'06-04-16 10:34:09 PM',5)
		   ,1
		   ,1)
GO




INSERT INTO [dbo].[TaskSet]
      ([Title]
      ,[Description]
      ,[EndDate]
      ,[UserIdTask]
      ,[UserId]
      ,[Date_created_modified]
      ,[NotificationId]
      ,[StartDate]
      ,[RequiredEndDate]
      ,[Priorytet]
      ,[TaskStatusId])
VALUES
           ('Aktualizacja procesu obróbki skrawaniem'
           ,'Proszę o aktualizację procesu obróbki skrawaniem dla detalu Feel computer zgodnie z najnowszą rewizją'
           ,convert(datetime,'12-05-16 10:34:09 PM',5)
		   ,4
		   ,5
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,2
		   ,convert(datetime,'06-02-16 10:34:09 PM',5)
		   ,convert(datetime,'06-04-16 10:34:09 PM',5)
		   ,2
		   ,2)
GO