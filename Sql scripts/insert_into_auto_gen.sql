USE [WebAppDb]
GO
/****** Object:  Table [dbo].[Bonus]    Script Date: 26.2.2023 14:00:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bonus](
	[IdBonus] [int] IDENTITY(1,1) NOT NULL,
	[RadnikId] [int] NOT NULL,
	[IznosBonusa] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Bonus] PRIMARY KEY CLUSTERED 
(
	[IdBonus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GodisnjiOdmors]    Script Date: 26.2.2023 14:00:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GodisnjiOdmors](
	[IdGodisnjiOdmor] [int] IDENTITY(1,1) NOT NULL,
	[RadnikId] [int] NOT NULL,
	[BrojDana] [int] NOT NULL,
 CONSTRAINT [PK_dbo.GodisnjiOdmors] PRIMARY KEY CLUSTERED 
(
	[IdGodisnjiOdmor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nadredjens]    Script Date: 26.2.2023 14:00:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nadredjens](
	[IdNadredjen] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](max) NULL,
	[Prezime] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Nadredjens] PRIMARY KEY CLUSTERED 
(
	[IdNadredjen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odbitaks]    Script Date: 26.2.2023 14:00:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odbitaks](
	[IdOdbitak] [int] IDENTITY(1,1) NOT NULL,
	[RadnikId] [int] NOT NULL,
	[IznosOdbitka] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Odbitaks] PRIMARY KEY CLUSTERED 
(
	[IdOdbitak] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platas]    Script Date: 26.2.2023 14:00:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platas](
	[IdPlata] [int] IDENTITY(1,1) NOT NULL,
	[RadnikId] [int] NOT NULL,
	[PozicijaId] [int] NOT NULL,
	[IznosPlate] [int] NOT NULL,
	[DatumPromene] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Platas] PRIMARY KEY CLUSTERED 
(
	[IdPlata] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pozicijas]    Script Date: 26.2.2023 14:00:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pozicijas](
	[IdPozicija] [int] IDENTITY(1,1) NOT NULL,
	[NazivPozicije] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Pozicijas] PRIMARY KEY CLUSTERED 
(
	[IdPozicija] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Radniks]    Script Date: 26.2.2023 14:00:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radniks](
	[IdRadnik] [int] IDENTITY(1,1) NOT NULL,
	[NadredjenId] [int] NOT NULL,
	[PozicijaId] [int] NOT NULL,
	[Ime] [nvarchar](max) NULL,
	[Prezime] [nvarchar](max) NULL,
	[PreiodRaspodele] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Radniks] PRIMARY KEY CLUSTERED 
(
	[IdRadnik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bonus] ON 

INSERT [dbo].[Bonus] ([IdBonus], [RadnikId], [IznosBonusa]) VALUES (1, 1, 1200)
INSERT [dbo].[Bonus] ([IdBonus], [RadnikId], [IznosBonusa]) VALUES (2, 5, 1000)
INSERT [dbo].[Bonus] ([IdBonus], [RadnikId], [IznosBonusa]) VALUES (3, 5, 500)
INSERT [dbo].[Bonus] ([IdBonus], [RadnikId], [IznosBonusa]) VALUES (4, 6, 800)
INSERT [dbo].[Bonus] ([IdBonus], [RadnikId], [IznosBonusa]) VALUES (5, 8, 400)
INSERT [dbo].[Bonus] ([IdBonus], [RadnikId], [IznosBonusa]) VALUES (6, 11, 300)
INSERT [dbo].[Bonus] ([IdBonus], [RadnikId], [IznosBonusa]) VALUES (7, 12, 300)
SET IDENTITY_INSERT [dbo].[Bonus] OFF
SET IDENTITY_INSERT [dbo].[GodisnjiOdmors] ON 

INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (1, 1, 22)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (2, 2, 21)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (4, 4, 22)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (5, 5, 22)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (6, 6, 15)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (7, 7, 20)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (8, 8, 20)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (9, 9, 10)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (10, 10, 22)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (11, 11, 12)
INSERT [dbo].[GodisnjiOdmors] ([IdGodisnjiOdmor], [RadnikId], [BrojDana]) VALUES (12, 12, 17)
SET IDENTITY_INSERT [dbo].[GodisnjiOdmors] OFF
SET IDENTITY_INSERT [dbo].[Nadredjens] ON 

INSERT [dbo].[Nadredjens] ([IdNadredjen], [Ime], [Prezime]) VALUES (1, N'Nikola', N'Jevtic')
INSERT [dbo].[Nadredjens] ([IdNadredjen], [Ime], [Prezime]) VALUES (2, N'Katarina', N'Cvetkov')
INSERT [dbo].[Nadredjens] ([IdNadredjen], [Ime], [Prezime]) VALUES (3, N'Nemanja', N'Radojicic')
INSERT [dbo].[Nadredjens] ([IdNadredjen], [Ime], [Prezime]) VALUES (4, N'Marko', N'Skuletic')
INSERT [dbo].[Nadredjens] ([IdNadredjen], [Ime], [Prezime]) VALUES (5, N'Ana', N'Lazarevic')
SET IDENTITY_INSERT [dbo].[Nadredjens] OFF
SET IDENTITY_INSERT [dbo].[Odbitaks] ON 

INSERT [dbo].[Odbitaks] ([IdOdbitak], [RadnikId], [IznosOdbitka]) VALUES (1, 2, 100)
INSERT [dbo].[Odbitaks] ([IdOdbitak], [RadnikId], [IznosOdbitka]) VALUES (2, 4, 200)
INSERT [dbo].[Odbitaks] ([IdOdbitak], [RadnikId], [IznosOdbitka]) VALUES (3, 7, 100)
INSERT [dbo].[Odbitaks] ([IdOdbitak], [RadnikId], [IznosOdbitka]) VALUES (4, 12, 100)
SET IDENTITY_INSERT [dbo].[Odbitaks] OFF
SET IDENTITY_INSERT [dbo].[Platas] ON 

INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (1, 1, 5, 1500, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (2, 2, 6, 1000, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (3, 4, 8, 1200, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (4, 5, 2, 1600, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (5, 6, 1, 1400, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (6, 7, 3, 1000, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (7, 8, 3, 900, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (8, 9, 4, 900, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (9, 10, 10, 1100, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (10, 11, 11, 1000, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (11, 12, 12, 800, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Platas] ([IdPlata], [RadnikId], [PozicijaId], [IznosPlate], [DatumPromene]) VALUES (12, 13, 7, 700, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Platas] OFF
SET IDENTITY_INSERT [dbo].[Pozicijas] ON 

INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (1, N'RUKOVODILAC POSLOVA TELEKOMUNIKACIONIH SISTEMA')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (2, N'RUKOVODILAC POSLOVA INFORMACIONIH SISTEMA I TEHNOLOGIJA')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (3, N'PROJEKTANT INFORMACIONIH SISTEMA I PROGRAMA')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (4, N'PROJEKTANT INFORMATICKE INFRASTRUKTURE')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (5, N'SOFTVER INŽENJER')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (6, N'PROGRAMER - INŽENJER')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (7, N'INŽENJER ZA RACUNARSKE MREŽE')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (8, N'SAVETNIK ZA INFORMACIONU BEZBEDNOST')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (9, N'INTERNI IT REVIZOR')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (10, N'ADMINISTRATOR TELEKOMUNIKACIONIH SISTEMA')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (11, N'ADMINISTRATOR INFORMACIONIH SISTEMA I TEHNOLOGIJA')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (12, N'ADMINISTRATOR BAZE PODATAKA')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (13, N'ADMINISTRATOR PODRŠKE KORISNICIMA INFORMACIONIH SISTEMA I TEHNOLOGIJA')
INSERT [dbo].[Pozicijas] ([IdPozicija], [NazivPozicije]) VALUES (14, N'TEHNICAR ODRŽAVANJA INFORMACIONIH SISTEMA I TEHNOLOGIJA')
SET IDENTITY_INSERT [dbo].[Pozicijas] OFF
SET IDENTITY_INSERT [dbo].[Radniks] ON 

INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (1, 1, 5, N'Isidora', N'Cvetkov', CAST(N'2022-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (2, 1, 6, N'Vukan', N'Kopric', CAST(N'2022-01-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (4, 2, 8, N'Dusan', N'Dukic', CAST(N'2021-08-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (5, 1, 2, N'Nikola', N'Jevtic', CAST(N'2021-01-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (6, 2, 1, N'Katarina', N'Cvetkov', CAST(N'2021-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (7, 3, 3, N'Nemanja', N'Radojicic', CAST(N'2021-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (8, 4, 3, N'Marko', N'Skuletic', CAST(N'2021-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (9, 5, 4, N'Ana', N'Lazarevic', CAST(N'2021-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (10, 3, 10, N'Nikola', N'Jovanovic', CAST(N'2021-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (11, 4, 11, N'Andrija', N'Jagodic', CAST(N'2021-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (12, 5, 12, N'Jovana', N'Jovic', CAST(N'2021-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Radniks] ([IdRadnik], [NadredjenId], [PozicijaId], [Ime], [Prezime], [PreiodRaspodele]) VALUES (13, 2, 7, N'Milica', N'Krstic', CAST(N'2022-01-10T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Radniks] OFF
ALTER TABLE [dbo].[Bonus]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bonus_dbo.Radniks_RadnikId] FOREIGN KEY([RadnikId])
REFERENCES [dbo].[Radniks] ([IdRadnik])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bonus] CHECK CONSTRAINT [FK_dbo.Bonus_dbo.Radniks_RadnikId]
GO
ALTER TABLE [dbo].[GodisnjiOdmors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GodisnjiOdmors_dbo.Radniks_RadnikId] FOREIGN KEY([RadnikId])
REFERENCES [dbo].[Radniks] ([IdRadnik])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GodisnjiOdmors] CHECK CONSTRAINT [FK_dbo.GodisnjiOdmors_dbo.Radniks_RadnikId]
GO
ALTER TABLE [dbo].[Odbitaks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Odbitaks_dbo.Radniks_RadnikId] FOREIGN KEY([RadnikId])
REFERENCES [dbo].[Radniks] ([IdRadnik])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Odbitaks] CHECK CONSTRAINT [FK_dbo.Odbitaks_dbo.Radniks_RadnikId]
GO
ALTER TABLE [dbo].[Platas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Platas_dbo.Pozicijas_PozicijaId] FOREIGN KEY([PozicijaId])
REFERENCES [dbo].[Pozicijas] ([IdPozicija])
GO
ALTER TABLE [dbo].[Platas] CHECK CONSTRAINT [FK_dbo.Platas_dbo.Pozicijas_PozicijaId]
GO
ALTER TABLE [dbo].[Platas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Platas_dbo.Radniks_RadnikId] FOREIGN KEY([RadnikId])
REFERENCES [dbo].[Radniks] ([IdRadnik])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Platas] CHECK CONSTRAINT [FK_dbo.Platas_dbo.Radniks_RadnikId]
GO
ALTER TABLE [dbo].[Radniks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Radniks_dbo.Nadredjens_NadredjenId] FOREIGN KEY([NadredjenId])
REFERENCES [dbo].[Nadredjens] ([IdNadredjen])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Radniks] CHECK CONSTRAINT [FK_dbo.Radniks_dbo.Nadredjens_NadredjenId]
GO
ALTER TABLE [dbo].[Radniks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Radniks_dbo.Pozicijas_PozicijaId] FOREIGN KEY([PozicijaId])
REFERENCES [dbo].[Pozicijas] ([IdPozicija])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Radniks] CHECK CONSTRAINT [FK_dbo.Radniks_dbo.Pozicijas_PozicijaId]
GO
