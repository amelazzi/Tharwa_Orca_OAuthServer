USE [THARWA]
GO
/****** Object:  Table [dbo].[AccessTokens]    Script Date: 04/03/2018 18:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessTokens](
	[tokenId] [varchar](255) NOT NULL,
	[userId] [varchar](255) NOT NULL,
	[applicationId] [varchar](255) NOT NULL,
	[expires] [datetime] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_AccessToken] PRIMARY KEY CLUSTERED 
(
	[tokenId] ASC,
	[userId] ASC,
	[applicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 04/03/2018 18:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[applicationId] [varchar](255) NOT NULL,
	[description] [varchar](256) NULL,
	[secret] [varchar](255) NULL,
	[grantTypes] [varchar](60) NULL,
	[createdAt] [datetime] NULL,
	[updateAt] [datetime] NULL,
 CONSTRAINT [PK__Applicat__C93A4C996B476EAC] PRIMARY KEY CLUSTERED 
(
	[applicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banque]    Script Date: 04/03/2018 18:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banque](
	[Code] [varchar](3) NOT NULL,
	[RaisonSocial] [varchar](max) NULL,
	[Adresse] [varchar](max) NULL,
	[Mail] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Banque] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 04/03/2018 18:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[IdUser] [varchar](50) NOT NULL,
	[Nom] [varchar](20) NOT NULL,
	[Prenom] [varchar](20) NOT NULL,
	[Adresse] [varchar](90) NULL,
	[NumTel] [varchar](20) NOT NULL,
	[Fonction] [varchar](20) NULL,
	[Photo] [varchar](max) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Employeur] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commission]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commission](
	[Id] [int] NOT NULL,
	[CodeCommission] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Montant] [decimal](19, 4) NOT NULL,
	[NumCompte] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Commission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compte]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compte](
	[Num] [varchar](50) NOT NULL,
	[Balance] [decimal](19, 4) NOT NULL,
	[DateCreation] [datetime] NOT NULL,
	[CodeMonnaie] [varchar](10) NOT NULL,
	[IdUser] [varchar](50) NOT NULL,
	[Etat] [int] NOT NULL,
	[TypeCompte] [int] NOT NULL,
 CONSTRAINT [PK_Compte] PRIMARY KEY CLUSTERED 
(
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monnaie]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monnaie](
	[Code] [varchar](10) NOT NULL,
	[nom] [varchar](20) NULL,
 CONSTRAINT [PK_Monnaie] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdreVirement]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdreVirement](
	[Num] [int] NOT NULL,
	[Etat] [int] NOT NULL,
	[Statut] [int] NOT NULL,
	[IdUser] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OrdreVirement] PRIMARY KEY CLUSTERED 
(
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RefreshTokens]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefreshTokens](
	[tokenId] [varchar](255) NOT NULL,
	[userId] [varchar](255) NOT NULL,
	[applicationId] [varchar](255) NOT NULL,
	[expires] [datetime] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_RefreshToken] PRIMARY KEY CLUSTERED 
(
	[tokenId] ASC,
	[userId] ASC,
	[applicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TarifCommission]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarifCommission](
	[Code] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[montant] [decimal](19, 4) NULL,
	[Pourcentage] [decimal](19, 4) NULL,
 CONSTRAINT [PK_TarifCommission] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [varchar](50) NOT NULL,
	[type] [int] NOT NULL,
	[password] [varchar](max) NOT NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Virement]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Virement](
	[Code] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Motif] [varchar](max) NOT NULL,
	[Statut] [varchar](20) NOT NULL,
	[Montant] [decimal](19, 4) NOT NULL,
	[Justificatif] [varchar](max) NULL,
	[NumOrdreVirement] [int] NULL,
	[NomEmetteur] [varchar](20) NOT NULL,
	[CompteEmmetteur] [varchar](50) NOT NULL,
	[BanqueEmmeteur] [varchar](3) NOT NULL,
	[NomDestinataire] [varchar](20) NOT NULL,
	[CompteDestinataire] [varchar](50) NOT NULL,
	[BanqueDestinataire] [varchar](3) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Virement] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AccessTokens] ([tokenId], [userId], [applicationId], [expires], [createdAt], [updatedAt]) VALUES (N'olY6ToZhqoaAlELzuVO6zqlPOdeahvnA5Kp8NquZuA7w27n16PNVk5lZLMXBN12bZVogiXKdqVW4VyNRuwtl29Vui7KCgCA3kHS2jVJvNWaivRHSruyYqN7oSXp9hKNOJbJXLSYUFXAE8PtfcElWInguCpZzf97AWASaZSQF8QLwHOrmpfOVyE0RCuAEheFxDzIsGCZmcMX5DtrJ6muZQaP32BheOvgp8TVhMSm6VgfHudkNdpn5K06RxmcFqrO', N'en_kerkar@esi.dz', N'sLOPKaEsCsBhNdsTgQLLIT9YyZUSQoyRumnUrb44P3uDlicYtv51Y1k9BtzU4eHW', CAST(N'2018-03-04T18:36:11.290' AS DateTime), NULL, NULL)
INSERT [dbo].[AccessTokens] ([tokenId], [userId], [applicationId], [expires], [createdAt], [updatedAt]) VALUES (N'QxEh056u0UpNaxE7jheHmnbmNwXHzgOy64JkVZtAuHhMtQ0wf1LQM7qyHNUgFmh1kKXWSApRJIXNEPWZB26kkG4K1Pf2XahIIsoMuIe4UdqL89P1rbIsnEr4VdRagoVq6WIPDlRJX21a6Q2HjkFAMxmHwnr6VhwL8Z2cc4boTlgoPlIG6TwIHqPQMMOE7E80TeD8LCSaFAMKZ4lDwGbw3vw27Lkxa9Y7pSNwN6cM2sVdDmESIiPLdZIzGKArLbs', N'em_meguellati@esi.dz', N'clientweb', CAST(N'2018-03-03T15:17:53.403' AS DateTime), NULL, NULL)
INSERT [dbo].[Applications] ([applicationId], [description], [secret], [grantTypes], [createdAt], [updateAt]) VALUES (N'clientweb', N'application wab', N'orca@2018', N'password', NULL, NULL)
INSERT [dbo].[Applications] ([applicationId], [description], [secret], [grantTypes], [createdAt], [updateAt]) VALUES (N'sLOPKaEsCsBhNdsTgQLLIT9YyZUSQoyRumnUrb44P3uDlicYtv51Y1k9BtzU4eHW', NULL, N'c0xPUEthRXNDc0JoTmRzVGdRTExJVDlZeVpVU1FveVJ1bW5VcmI0NFAzdURsaWNZdHY1MVkxazlCdHpVNGVIVzpwTzZHNkhpdFF3VWVHOE5va29vVFpTSVhIRWVidHhPTmllblNESldpZ1k2emJ5am1yMU9STHJ5cmtubG1XU3ZY', N'password', NULL, NULL)
INSERT [dbo].[Banque] ([Code], [RaisonSocial], [Adresse], [Mail]) VALUES (N'BNA', N'Banque Nationale dAlgerie ', N'8, Boulevard Che Guevara; 16000 Alger; Algérie', N'banque@bna.dz')
INSERT [dbo].[Banque] ([Code], [RaisonSocial], [Adresse], [Mail]) VALUES (N'THW', N'Tharwa', N'OuedSmar', N'compte@THW.dz')
INSERT [dbo].[Client] ([IdUser], [Nom], [Prenom], [Adresse], [NumTel], [Fonction], [Photo], [Type]) VALUES (N'ea_azzi@esi.dz', N'amal', N'Azzi', N'Bejaia ', N'0557901679', N'Etudiante', N'image/picture2.jpg', 0)
INSERT [dbo].[Client] ([IdUser], [Nom], [Prenom], [Adresse], [NumTel], [Fonction], [Photo], [Type]) VALUES (N'em_meguelleti@esi.dz', N'meriem', N'meguelleti', N'Setif ', N'0669701679', N'Etudiante', N'image/picture3.jpg', 0)
INSERT [dbo].[Client] ([IdUser], [Nom], [Prenom], [Adresse], [NumTel], [Fonction], [Photo], [Type]) VALUES (N'en_kerkar@esi.dz', N'nawal', N'kerkar', N'Bab El Zouarre', N'0542691679', N'Etudiante', N'image/picture.jpg', 0)
INSERT [dbo].[Commission] ([Id], [CodeCommission], [Date], [Montant], [NumCompte]) VALUES (0, 0, CAST(N'2018-02-26T21:33:16.780' AS DateTime), CAST(30.7000 AS Decimal(19, 4)), N'THW000003DZD')
INSERT [dbo].[Compte] ([Num], [Balance], [DateCreation], [CodeMonnaie], [IdUser], [Etat], [TypeCompte]) VALUES (N'THW000003DZD', CAST(3000.4000 AS Decimal(19, 4)), CAST(N'2018-02-26T20:12:22.697' AS DateTime), N'DZD', N'en_kerkar@esi.dz', 1, 0)
INSERT [dbo].[Compte] ([Num], [Balance], [DateCreation], [CodeMonnaie], [IdUser], [Etat], [TypeCompte]) VALUES (N'THW000004DZD', CAST(5000.4000 AS Decimal(19, 4)), CAST(N'2018-02-27T12:06:45.863' AS DateTime), N'DZD', N'ea_azzi@esi.dz', 1, 0)
INSERT [dbo].[Monnaie] ([Code], [nom]) VALUES (N'DZD', N'Dinare Algerien ')
INSERT [dbo].[Monnaie] ([Code], [nom]) VALUES (N'EUR', N'Euro')
INSERT [dbo].[Monnaie] ([Code], [nom]) VALUES (N'USD', N'Dolar Americain')
INSERT [dbo].[RefreshTokens] ([tokenId], [userId], [applicationId], [expires], [createdAt], [updatedAt]) VALUES (N'7paYpDcW6ZqYAbWP3ZDgcFNpP857EqQUL9KWGlsFUtMtFySS4SYJ4iJJtdydYmsiT1IoRhyXCzStjSxQ9vIB0dsAc3W385Fbx6GkPCTomvzpXTMgR82pRt4XJh8hoMqxjIztuiyn9iAOu2do4wFRcMhGDDZi9oUB0KDFfpw71NUuk4oghnZEdZm6Lizb5ewvQix8dEMFgnWoTJlg5XiIdwkVSPg3ymQLmSSKcXtvsPvq8WBVEvtGp2pWKeSjDZP', N'em_meguellati@esi.dz', N'clientweb', CAST(N'2018-08-31T14:20:42.603' AS DateTime), NULL, NULL)
INSERT [dbo].[RefreshTokens] ([tokenId], [userId], [applicationId], [expires], [createdAt], [updatedAt]) VALUES (N'Bcm3A5urrN3ViCCpeAf6ieyOWbnkxAczAAENUDbk4KeJDMf6pmzCZ44piy1XlBOcbGNR6fipSa7tRJ5kPUtyoFp9bxET2xgiXeTn0w1SjCA32GR0EVgQwEhh5QfRwKXsk4jnjX5va4FH13KO8fTDJJv2WwmrVgpXMzN9LMJiBWArtqdNoZajQOXGXGnEb9TzVnjVvGbAp4msHRZ9KgjuB3B8IN214BHI6TZZ6QZTxRyZ55LJoYDG7nhYJ05p1fq', N'en_kerkar@esi.dz', N'sLOPKaEsCsBhNdsTgQLLIT9YyZUSQoyRumnUrb44P3uDlicYtv51Y1k9BtzU4eHW', CAST(N'2018-03-05T17:36:11.327' AS DateTime), NULL, NULL)
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (0, N'Courant vers épargne', CAST(0.0000 AS Decimal(19, 4)), NULL)
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (1, N'Epargne vers courant', NULL, CAST(0.1000 AS Decimal(19, 4)))
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (2, N'Courant vers devise', NULL, CAST(2.0000 AS Decimal(19, 4)))
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (3, N'Devise vers courant', NULL, CAST(1.5000 AS Decimal(19, 4)))
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (4, N'Vers un autre client THARWA', NULL, CAST(1.0000 AS Decimal(19, 4)))
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (5, N'Vers un client d’une autre banque', NULL, CAST(2.0000 AS Decimal(19, 4)))
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (6, N'Virement reçu depuis une autre banque', NULL, CAST(1.5000 AS Decimal(19, 4)))
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (7, N'Commission mensuelle frais de gestion compte courant', CAST(100.0000 AS Decimal(19, 4)), NULL)
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (8, N'Commission mensuelle frais de gestion compte épargne', CAST(50.0000 AS Decimal(19, 4)), NULL)
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (9, N'Commission mensuelle frais de gestion compte devise', CAST(200.0000 AS Decimal(19, 4)), NULL)
INSERT [dbo].[TarifCommission] ([Code], [Description], [montant], [Pourcentage]) VALUES (10, N'Commission sur un ordre de vision : total des commissions sur les virements générés', NULL, NULL)
INSERT [dbo].[Users] ([userId], [type], [password], [createdAt], [updatedAt]) VALUES (N'blablabla@mailinator.com', 2, N'db523cc5800558b0a84b1a97b8dc34ce4e1337c4d7cd32dcfca6a91b1d420ff4', NULL, NULL)
INSERT [dbo].[Users] ([userId], [type], [password], [createdAt], [updatedAt]) VALUES (N'ea_azzi@esi.dz', 2, N'orca@2018', NULL, NULL)
INSERT [dbo].[Users] ([userId], [type], [password], [createdAt], [updatedAt]) VALUES (N'em_hammi@esi.dz', 2, N'orca@2018', NULL, NULL)
INSERT [dbo].[Users] ([userId], [type], [password], [createdAt], [updatedAt]) VALUES (N'em_meguelleti@esi.dz', 2, N'db523cc5800558b0a84b1a97b8dc34ce4e1337c4d7cd32dcfca6a91b1d420ff4', NULL, NULL)
INSERT [dbo].[Users] ([userId], [type], [password], [createdAt], [updatedAt]) VALUES (N'en_kerkar@esi.dz', 2, N'db523cc5800558b0a84b1a97b8dc34ce4e1337c4d7cd32dcfca6a91b1d420ff4', NULL, NULL)
INSERT [dbo].[Virement] ([Code], [Date], [Motif], [Statut], [Montant], [Justificatif], [NumOrdreVirement], [NomEmetteur], [CompteEmmetteur], [BanqueEmmeteur], [NomDestinataire], [CompteDestinataire], [BanqueDestinataire], [Type]) VALUES (N'THRW000003DZDBNA000005DZD201802261053', CAST(N'2018-02-26T21:38:26.163' AS DateTime), N'Envoie dargent', N'1', CAST(150.0000 AS Decimal(19, 4)), NULL, NULL, N'Nawal Kerkar', N'THW000003DZD', N'THW', N'Yasmine Boudjelli', N'BNA000004DZD', N'THW', 1)
INSERT [dbo].[Virement] ([Code], [Date], [Motif], [Statut], [Montant], [Justificatif], [NumOrdreVirement], [NomEmetteur], [CompteEmmetteur], [BanqueEmmeteur], [NomDestinataire], [CompteDestinataire], [BanqueDestinataire], [Type]) VALUES (N'THRW000003DZDTHR000004DZD201802261053', CAST(N'2018-02-26T20:25:04.510' AS DateTime), N'Envoie dargent', N'1', CAST(150.0000 AS Decimal(19, 4)), NULL, NULL, N'Nawal Kerkar', N'THW000003DZD', N'THW', N'Amel Azzi', N'THW000004DZD', N'THW', 0)
ALTER TABLE [dbo].[Applications]  WITH CHECK ADD  CONSTRAINT [FK_Applications_Applications] FOREIGN KEY([applicationId])
REFERENCES [dbo].[Applications] ([applicationId])
GO
ALTER TABLE [dbo].[Applications] CHECK CONSTRAINT [FK_Applications_Applications]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_User]
GO
ALTER TABLE [dbo].[Commission]  WITH CHECK ADD  CONSTRAINT [FK_Commission_Compte] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Compte] ([Num])
GO
ALTER TABLE [dbo].[Commission] CHECK CONSTRAINT [FK_Commission_Compte]
GO
ALTER TABLE [dbo].[Commission]  WITH CHECK ADD  CONSTRAINT [FK_Commission_TarifCommission] FOREIGN KEY([CodeCommission])
REFERENCES [dbo].[TarifCommission] ([Code])
GO
ALTER TABLE [dbo].[Commission] CHECK CONSTRAINT [FK_Commission_TarifCommission]
GO
ALTER TABLE [dbo].[Compte]  WITH CHECK ADD  CONSTRAINT [FK_Compte_Client] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Client] ([IdUser])
GO
ALTER TABLE [dbo].[Compte] CHECK CONSTRAINT [FK_Compte_Client]
GO
ALTER TABLE [dbo].[Compte]  WITH CHECK ADD  CONSTRAINT [FK_Compte_Monnaie] FOREIGN KEY([CodeMonnaie])
REFERENCES [dbo].[Monnaie] ([Code])
GO
ALTER TABLE [dbo].[Compte] CHECK CONSTRAINT [FK_Compte_Monnaie]
GO
ALTER TABLE [dbo].[OrdreVirement]  WITH CHECK ADD  CONSTRAINT [FK_OrdreVirement_Client] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Client] ([IdUser])
GO
ALTER TABLE [dbo].[OrdreVirement] CHECK CONSTRAINT [FK_OrdreVirement_Client]
GO
ALTER TABLE [dbo].[Virement]  WITH CHECK ADD  CONSTRAINT [FK_Virement_BanqueDest] FOREIGN KEY([BanqueDestinataire])
REFERENCES [dbo].[Banque] ([Code])
GO
ALTER TABLE [dbo].[Virement] CHECK CONSTRAINT [FK_Virement_BanqueDest]
GO
ALTER TABLE [dbo].[Virement]  WITH CHECK ADD  CONSTRAINT [FK_Virement_BanqueEm] FOREIGN KEY([BanqueEmmeteur])
REFERENCES [dbo].[Banque] ([Code])
GO
ALTER TABLE [dbo].[Virement] CHECK CONSTRAINT [FK_Virement_BanqueEm]
GO
ALTER TABLE [dbo].[Virement]  WITH CHECK ADD  CONSTRAINT [FK_Virement_OrdreVirement] FOREIGN KEY([NumOrdreVirement])
REFERENCES [dbo].[OrdreVirement] ([Num])
GO
ALTER TABLE [dbo].[Virement] CHECK CONSTRAINT [FK_Virement_OrdreVirement]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [CK_Client] CHECK  (([Type]=(0) OR [Type]=(1)))
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [CK_Client]
GO
ALTER TABLE [dbo].[Compte]  WITH CHECK ADD  CONSTRAINT [CK__Compte__Etat__4AB81AF0] CHECK  (([Etat]=(0) OR [Etat]=(1)))
GO
ALTER TABLE [dbo].[Compte] CHECK CONSTRAINT [CK__Compte__Etat__4AB81AF0]
GO
ALTER TABLE [dbo].[Compte]  WITH CHECK ADD  CONSTRAINT [CK__Compte__TypeComp__4BAC3F29] CHECK  (([TypeCompte]=(0) OR [TypeCompte]=(1) OR [TypeCompte]=(2)))
GO
ALTER TABLE [dbo].[Compte] CHECK CONSTRAINT [CK__Compte__TypeComp__4BAC3F29]
GO
ALTER TABLE [dbo].[OrdreVirement]  WITH CHECK ADD  CONSTRAINT [CK_OrdreVirement_Etat] CHECK  (([Etat]=(0) OR [Etat]=(1)))
GO
ALTER TABLE [dbo].[OrdreVirement] CHECK CONSTRAINT [CK_OrdreVirement_Etat]
GO
ALTER TABLE [dbo].[OrdreVirement]  WITH CHECK ADD  CONSTRAINT [CK_OrdreVirement_Statut] CHECK  (([Statut]=(0) OR [Statut]=(1) OR [Statut]=(2)))
GO
ALTER TABLE [dbo].[OrdreVirement] CHECK CONSTRAINT [CK_OrdreVirement_Statut]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK_User] CHECK  (([Type]=(0) OR [Type]=(1) OR [Type]=(2)))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK_User]
GO
ALTER TABLE [dbo].[Virement]  WITH CHECK ADD  CONSTRAINT [CK_Virement_Statut] CHECK  (([Statut]=(0) OR [Statut]=(1)))
GO
ALTER TABLE [dbo].[Virement] CHECK CONSTRAINT [CK_Virement_Statut]
GO
ALTER TABLE [dbo].[Virement]  WITH CHECK ADD  CONSTRAINT [CK_Virement_Type] CHECK  (([Type]=(0) OR [Type]=(1) OR [Type]=(2)))
GO
ALTER TABLE [dbo].[Virement] CHECK CONSTRAINT [CK_Virement_Type]
GO
/****** Object:  StoredProcedure [dbo].[AddClient]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddClient]

(@IdUser varchar(50),@Nom varchar(20)
           ,@Prenom varchar(20)
           ,@Adresse varchar(90)
           ,@NumTel varchar(20)
           ,@Fonction varchar(20)
           ,@Photo varchar(max)
           ,@Type int)
AS
INSERT [dbo].[Client] ([IdUser], [Nom], [Prenom], [Adresse], 
[NumTel], [Fonction], [Photo], [Type]) 
VALUES(@IdUser,@Nom,@Prenom,@Adresse,@NumTel,@Fonction,@Photo,@Type)  
GO
/****** Object:  StoredProcedure [dbo].[AddCompte]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddCompte]

(@Num varchar(50)
           ,@Balance decimal(19,4)
           ,@DateCreation datetime
           ,@CodeMonnaie varchar(10)
           ,@IdUser varchar(50)
           ,@Etat int
           ,@TypeCompte int)
AS
INSERT INTO [dbo].[Compte]
           ([Num]
           ,[Balance]
           ,[DateCreation]
           ,[CodeMonnaie]
           ,[IdUser]
           ,[Etat]
           ,[TypeCompte])
     VALUES
           (@Num,@Balance ,@DateCreation,@CodeMonnaie,@IdUser,@Etat,@TypeCompte) 
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddUser]  
	(@Id varchar(50),@UserName varchar(50),@Pwd varchar(MAX),@Type int)
AS
  INSERT [dbo].[User] ([Id], [UserName], [Pwd], [Type])
   VALUES (@Id, @UserName, @Pwd, @Type)
GO
/****** Object:  StoredProcedure [dbo].[GetClient]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClient]  
	(@NoClient varchar(50))
AS
  SELECT  *
  FROM  [dbo].Client
  WHERE  [IdUser] = @NoClient
GO
/****** Object:  StoredProcedure [dbo].[GetCompteClient]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCompteClient]
@IdClient varchar(50) , @type Int 
AS
select *  from Compte where IdUser=@IdClient And TypeCompte=@type
GO
/****** Object:  StoredProcedure [dbo].[GetComptesClient]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetComptesClient]
@IdClient varchar(50) 
AS
select Num , TypeCompte  from Compte where IdUser=@IdClient
GO
/****** Object:  StoredProcedure [dbo].[GetNextId]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetNextId]
AS
SELECT MAX (SUBSTRING(Num, 4, 6))+1  as id FROM Compte
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 04/03/2018 18:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetUser]
@id varchar(50)
	as 
	Select * from [dbo].[User]  where Id=@id 
GO
