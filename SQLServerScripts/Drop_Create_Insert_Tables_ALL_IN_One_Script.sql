USE [ProjectDB]
GO

/****** Object:  Table [dbo].[CompanyCertificate] ******/
DROP TABLE [dbo].[CompanyCertificate]
GO

/****** Object:  Table [dbo].[Certificate] ******/
DROP TABLE [dbo].[Certificate]
GO

/****** Object:  Table [dbo].[Company] ******/
DROP TABLE [dbo].[Company]
GO

/****** Object:  Table [dbo].[Address] ******/
DROP TABLE [dbo].[Address]
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

/* Populate Address */

INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Komarovskoye ring ', N'Minsk', 220040, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Tsnyanskaya Street ', N'Minsk', 220013, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Aleksandrovskaya ul', N'Minsk', 220053, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Angarskaya ul 34', N'Minsk', 220047, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Asanalieva lane', N'Minsk', 220024, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Asanalieva lane 2', N'Minsk', 220021, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Asanalieva lane 4', N'Minsk', 220021, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Asanalieva lane 5', N'Minsk', 220211, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES ('Asanalieva lane 5', N'Minsk', 220211, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 5', N'Minsk', 220211, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 5', N'Minsk', 220211, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 5', N'Minsk', 220211, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 6', N'Minsk', 220201, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 6', N'Minsk', 220501, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 6', N'Minsk', 220501, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 6', N'Minsk', 220501, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 6', N'Minsk', 220501, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 6', N'Minsk', 220501, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 16', N'Minsk', 220401, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 16', N'Minsk', 220403, N'Belarus')
GO
INSERT [dbo].[Address] ([Street], [City], [ZipCode], [Country]) VALUES (N'Asanalieva lane 16', N'Minsk', 220403, N'Belarus')

/* Populate Companies */

INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'A1 Belarus', N'A1.by', N'Unitary enterprise A1 (Belarusian: Унiтарнае прадпрыемства «А1», A1) is the largest private telecom, ICT & content service provider in Belarus.', CAST(N'1998-08-10T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'Aliasworlds Entertainment', N'aliasworlds.com', N'Aliasworlds Entertainment is a casual game developer based in Minsk, Belarus.', CAST(N'2001-05-05T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'Belavia', N'belavia.by', N'Belavia Belarusian Airlines, legally Joint Stock Company "Belavia", is the flag carrier and national airline of Belarus, headquartered in Minsk.', CAST(N'1996-06-05T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'Luch ', N'luch.by', N'Luch (Belarusian: Луч, ray, beam) is a watch brand produced by the OJSC Minsk Watch Plant, the only watch plant in Belarus.', CAST(N'1953-01-01T00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'Minsk Automobile Plant', N'maz.by', N'Minsk Automobile Plant (MAZ), (Open JSC Minski Autamabilny Zavod) is a state-run automotive manufacturer association in Belarus, one of the largest in Eastern Europe.', CAST(N'1944-07-16T00:00:00.000' AS DateTime), 5)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'MZKT', N'mzkt.by', N'MZKT is a manufacturer of heavy off-road vehicles, especially military trucks, based in Minsk, in Belarus', CAST(N'1954-01-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'Belaruskali', N'kali.by', N'Belaruskali is one of the world’s biggest producers and exporters of potash fertilizers.', CAST(N'1963-06-16T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ', N'Belaz.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ2', N'Belaz.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 6)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ3', N'Belaz3.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ4', N'Belaz4.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 8)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ4', N'Belaz4.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 9)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ4', N'Belaz4.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 10)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ4', N'Belaz4.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 11)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ4', N'Belaz4.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 12)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ12', N'Belaz12.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 15)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ13', N'Belaz13.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 16)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ13', N'Belaz13.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 17)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ13', N'Belaz13.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 18)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ13', N'Belaz13.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 19)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ13', N'Belaz13.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1948-06-17T00:00:00.000' AS DateTime), 20)
GO
INSERT [dbo].[Company] ([Name], [Website], [Description], [CreateDate], [Address]) VALUES (N'BelAZ15', N'Belaz15.by', N'One in three dump trucks produced globally is manufactured by Belarusian Autoworks (BelAZ trademark).', CAST(N'1947-06-17T00:00:00.000' AS DateTime), 21)
GO

/* Populate Certificates */

INSERT [dbo].[Certificate] ([Name], [Number], [ExpirationDate]) VALUES (N'The ISO 9000 Certification is probably ISO’s most widely known family of standards. ISO 9000 is a generic name given to a family of standards developed to provide a framework around which quality management system can effectively be implemented.', 9001, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Certificate] ([Name], [Number], [ExpirationDate]) VALUES (N'ISO 13485: 2003 is what is known as a “sector-specific” quality standard, similar to ISO/TC 16949: 2002 for the automotive industry or AS9100 for the aerospace industry.', 13485, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Certificate] ([Name], [Number], [ExpirationDate]) VALUES (N'An Environmental Management System (EMS) is a systematic approach to dealing with the environmental aspects of an organization. It is a “tool” that enables an organization of any size or type to control the impact of its activities, products or services on the natural environment.', 14001, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Certificate] ([Name], [Number], [ExpirationDate]) VALUES (N'In April 1999, the British Standards Institute released Occupational Health and Safety Assessment Series (OHSAS) 18001. The specification is a blueprint for a worldwide, universal occupational health and safety management system. ', 18001, CAST(N'2020-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Certificate] ([Name], [Number], [ExpirationDate]) VALUES (N'The AS9100 standard is only a few years old but is growing quickly. The AS9100 family of standards represents the first international effort to formulate a quality management system standard for the aerospace industry.', 9100, CAST(N'2023-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Certificate] ([Name], [Number], [ExpirationDate]) VALUES (N'The International Traffic in Arms Regulations (ITAR) and the Export Administration Regulations (EAR) are two important United States export control laws that affect the manufacturing, sales and distribution of technology. ', 9862, CAST(N'2020-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Certificate] ([Name], [Number], [ExpirationDate]) VALUES (N'The core idea is to maximize customer value while minimizing waste. Simply, lean manufacturing means creating more value for customers with fewer resources.', 6723, CAST(N'2020-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Certificate] ([Name], [Number], [ExpirationDate]) VALUES (N'The R2 Practices establish requirements that an organization must meet in order to handle electronic waste responsibly.', 3333, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO

/* Populate CompanyCertificate */

INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (1, 1)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (1, 2)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (1, 3)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (1, 6)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (1, 7)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (1, 8)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (3, 1)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (5, 1)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (5, 2)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (5, 3)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (7, 7)
GO
INSERT [dbo].[CompanyCertificate] ([CompanyId], [CertificateId]) VALUES (7, 8)
GO