USE [WebAppDb]
GO
/****** Object:  Table [dbo].[Bonus]    Script Date: 26.2.2023 13:57:00 ******/
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
/****** Object:  Table [dbo].[GodisnjiOdmors]    Script Date: 26.2.2023 13:57:00 ******/
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
/****** Object:  Table [dbo].[Nadredjens]    Script Date: 26.2.2023 13:57:00 ******/
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
/****** Object:  Table [dbo].[Odbitaks]    Script Date: 26.2.2023 13:57:00 ******/
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
/****** Object:  Table [dbo].[Platas]    Script Date: 26.2.2023 13:57:00 ******/
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
/****** Object:  Table [dbo].[Pozicijas]    Script Date: 26.2.2023 13:57:00 ******/
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
/****** Object:  Table [dbo].[Radniks]    Script Date: 26.2.2023 13:57:00 ******/
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