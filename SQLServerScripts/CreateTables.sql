USE [TestScript]
GO

/****** Object:  Table [dbo].[Address] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[ZipCode] [int] NULL,
	[Country] [nvarchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Company] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Website] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[Address] [int] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Address] FOREIGN KEY([Address])
REFERENCES [dbo].[Address] ([Id])
GO

ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Address]
GO

/****** Object:  Table [dbo].[Certificate] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Certificate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Number] [int] NOT NULL,
	[ExpirationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Certificate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CompanyCertificate] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CompanyCertificate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[CertificateId] [int] NOT NULL,
 CONSTRAINT [PK_CompanyCertificate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CompanyCertificate]  WITH CHECK ADD  CONSTRAINT [FK_CompanyCertificate_Certificate] FOREIGN KEY([CertificateId])
REFERENCES [dbo].[Certificate] ([Id])
GO

ALTER TABLE [dbo].[CompanyCertificate] CHECK CONSTRAINT [FK_CompanyCertificate_Certificate]
GO

ALTER TABLE [dbo].[CompanyCertificate]  WITH CHECK ADD  CONSTRAINT [FK_CompanyCertificate_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO

ALTER TABLE [dbo].[CompanyCertificate] CHECK CONSTRAINT [FK_CompanyCertificate_Company]
GO