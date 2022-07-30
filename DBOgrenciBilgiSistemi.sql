USE [DBObs]
GO
/****** Object:  Table [dbo].[TblBolum]    Script Date: 30.07.2022 22:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBolum](
	[BolumId] [int] IDENTITY(1,1) NOT NULL,
	[BolumAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblBolum] PRIMARY KEY CLUSTERED 
(
	[BolumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDers]    Script Date: 30.07.2022 22:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDers](
	[DersId] [int] IDENTITY(1,1) NOT NULL,
	[DersAdi] [nvarchar](50) NULL,
	[DersKredi] [smallint] NULL,
	[OgretmenId] [int] NULL,
 CONSTRAINT [PK_TblDers] PRIMARY KEY CLUSTERED 
(
	[DersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblIl]    Script Date: 30.07.2022 22:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblIl](
	[IlId] [int] IDENTITY(1,1) NOT NULL,
	[IlAdi] [nvarchar](13) NULL,
 CONSTRAINT [PK_TblIl] PRIMARY KEY CLUSTERED 
(
	[IlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgrenci]    Script Date: 30.07.2022 22:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgrenci](
	[OgrenciId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciAd] [nvarchar](20) NULL,
	[OgrenciSoyad] [nvarchar](20) NULL,
	[OgrenciNumara] [char](11) NULL,
	[OgrenciKayıtTarihi] [date] NULL,
	[OgrenciSınıf] [tinyint] NULL,
	[BolumId] [int] NULL,
	[IlId] [int] NULL,
 CONSTRAINT [PK_TblOgrenci] PRIMARY KEY CLUSTERED 
(
	[OgrenciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgretmen]    Script Date: 30.07.2022 22:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgretmen](
	[OgretmenId] [int] IDENTITY(1,1) NOT NULL,
	[OgretmenAdi] [nvarchar](20) NULL,
	[OgretmenSoyadi] [nvarchar](20) NULL,
	[OgretmenTelefon] [char](11) NULL,
	[OgretmenTC] [char](11) NULL,
	[OgretmenMail] [nvarchar](40) NULL,
	[DersId] [int] NULL,
 CONSTRAINT [PK_TblOgretmen] PRIMARY KEY CLUSTERED 
(
	[OgretmenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSinav]    Script Date: 30.07.2022 22:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSinav](
	[OgrenciNumara] [int] NOT NULL,
	[DersId] [int] NOT NULL,
	[OgretmenId] [int] NULL,
	[SinavNotu1] [tinyint] NULL,
	[SinavNotu2] [tinyint] NULL,
	[SinavNotu3] [tinyint] NULL,
 CONSTRAINT [PK_TblSinav_1] PRIMARY KEY CLUSTERED 
(
	[OgrenciNumara] ASC,
	[DersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblBolum] ON 
GO
INSERT [dbo].[TblBolum] ([BolumId], [BolumAdi]) VALUES (1, N'Bilgisayar Mühendisliği')
GO
INSERT [dbo].[TblBolum] ([BolumId], [BolumAdi]) VALUES (2, N'Yazılım  Mühendisliği')
GO
SET IDENTITY_INSERT [dbo].[TblBolum] OFF
GO
SET IDENTITY_INSERT [dbo].[TblDers] ON 
GO
INSERT [dbo].[TblDers] ([DersId], [DersAdi], [DersKredi], [OgretmenId]) VALUES (1, N'Yapay Sinir Ağları', 2, 1)
GO
INSERT [dbo].[TblDers] ([DersId], [DersAdi], [DersKredi], [OgretmenId]) VALUES (2, N'Makine Öğrenmesi', 5, 2)
GO
INSERT [dbo].[TblDers] ([DersId], [DersAdi], [DersKredi], [OgretmenId]) VALUES (3, N'Görüntü ve Video İşleme', 5, 3)
GO
INSERT [dbo].[TblDers] ([DersId], [DersAdi], [DersKredi], [OgretmenId]) VALUES (4, N'Devre Teorisi', 4, 4)
GO
INSERT [dbo].[TblDers] ([DersId], [DersAdi], [DersKredi], [OgretmenId]) VALUES (5, N'Nesne Yönelimli Programlama', 3, 5)
GO
INSERT [dbo].[TblDers] ([DersId], [DersAdi], [DersKredi], [OgretmenId]) VALUES (6, N'Mikroişlemciler', 4, NULL)
GO
SET IDENTITY_INSERT [dbo].[TblDers] OFF
GO
SET IDENTITY_INSERT [dbo].[TblIl] ON 
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (1, N'Ankara')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (2, N'İzmir')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (3, N'Van')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (4, N'Muğla')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (5, N'Antalya')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (6, N'İstanbul')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (7, N'Denizli')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (8, N'Kars')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (9, N'Mersin')
GO
INSERT [dbo].[TblIl] ([IlId], [IlAdi]) VALUES (10, N'Bursa')
GO
SET IDENTITY_INSERT [dbo].[TblIl] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOgrenci] ON 
GO
INSERT [dbo].[TblOgrenci] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OgrenciNumara], [OgrenciKayıtTarihi], [OgrenciSınıf], [BolumId], [IlId]) VALUES (1, N'Alim', N'Erbil', N'135665     ', CAST(N'2021-09-22' AS Date), 1, NULL, NULL)
GO
INSERT [dbo].[TblOgrenci] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OgrenciNumara], [OgrenciKayıtTarihi], [OgrenciSınıf], [BolumId], [IlId]) VALUES (2, N'Neşe', N'Erbil', N'2165459    ', CAST(N'2021-09-22' AS Date), 1, NULL, NULL)
GO
INSERT [dbo].[TblOgrenci] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OgrenciNumara], [OgrenciKayıtTarihi], [OgrenciSınıf], [BolumId], [IlId]) VALUES (3, N'Ayşe', N'Şahin', N'1665462    ', CAST(N'2020-09-14' AS Date), 2, NULL, NULL)
GO
INSERT [dbo].[TblOgrenci] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OgrenciNumara], [OgrenciKayıtTarihi], [OgrenciSınıf], [BolumId], [IlId]) VALUES (4, N'Gülten ', N'Özbaş', N'3156198    ', CAST(N'2019-09-15' AS Date), 3, NULL, NULL)
GO
INSERT [dbo].[TblOgrenci] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OgrenciNumara], [OgrenciKayıtTarihi], [OgrenciSınıf], [BolumId], [IlId]) VALUES (5, N'Tahir', N'Erevciler', N'3165515    ', CAST(N'2018-09-14' AS Date), 4, NULL, NULL)
GO
INSERT [dbo].[TblOgrenci] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OgrenciNumara], [OgrenciKayıtTarihi], [OgrenciSınıf], [BolumId], [IlId]) VALUES (6, N'Harun', N'İslam', N'5416325    ', CAST(N'2021-09-12' AS Date), 1, NULL, NULL)
GO
INSERT [dbo].[TblOgrenci] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OgrenciNumara], [OgrenciKayıtTarihi], [OgrenciSınıf], [BolumId], [IlId]) VALUES (7, N'Mücahit', N'Erevciler', N'1616516    ', CAST(N'2019-09-21' AS Date), 3, NULL, NULL)
GO
INSERT [dbo].[TblOgrenci] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OgrenciNumara], [OgrenciKayıtTarihi], [OgrenciSınıf], [BolumId], [IlId]) VALUES (8, N'Bedevi', N'Erevciler', N'4551286    ', CAST(N'2018-09-13' AS Date), 4, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TblOgrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOgretmen] ON 
GO
INSERT [dbo].[TblOgretmen] ([OgretmenId], [OgretmenAdi], [OgretmenSoyadi], [OgretmenTelefon], [OgretmenTC], [OgretmenMail], [DersId]) VALUES (1, N'Abdullah', N'Tola', N'05642359565', N'54616548411', N'tola@gmail.com', NULL)
GO
INSERT [dbo].[TblOgretmen] ([OgretmenId], [OgretmenAdi], [OgretmenSoyadi], [OgretmenTelefon], [OgretmenTC], [OgretmenMail], [DersId]) VALUES (2, N'Mustafa ', N'Durmuş', N'05314652586', N'28426154544', N'durmus@gmail.com', NULL)
GO
INSERT [dbo].[TblOgretmen] ([OgretmenId], [OgretmenAdi], [OgretmenSoyadi], [OgretmenTelefon], [OgretmenTC], [OgretmenMail], [DersId]) VALUES (3, N'Serdar', N'İplikçi', N'05364751254', N'55412384569', N'iplikci@gmail.com', NULL)
GO
INSERT [dbo].[TblOgretmen] ([OgretmenId], [OgretmenAdi], [OgretmenSoyadi], [OgretmenTelefon], [OgretmenTC], [OgretmenMail], [DersId]) VALUES (4, N'Remzi', N'Arslanalp', N'05354658246', N'65412355526', N'arslanalp@gmail.com', NULL)
GO
INSERT [dbo].[TblOgretmen] ([OgretmenId], [OgretmenAdi], [OgretmenSoyadi], [OgretmenTelefon], [OgretmenTC], [OgretmenMail], [DersId]) VALUES (5, N'Sami', N'Sazak', N'23135618746', N'35654984415', N'sazak@gmail.com', NULL)
GO
INSERT [dbo].[TblOgretmen] ([OgretmenId], [OgretmenAdi], [OgretmenSoyadi], [OgretmenTelefon], [OgretmenTC], [OgretmenMail], [DersId]) VALUES (6, N'Erkan', N'Yüce', N'65423595624', N'85659648546', N'yuce@gmail.com', NULL)
GO
INSERT [dbo].[TblOgretmen] ([OgretmenId], [OgretmenAdi], [OgretmenSoyadi], [OgretmenTelefon], [OgretmenTC], [OgretmenMail], [DersId]) VALUES (7, N'Selami', N'Kesler', N'35642123563', N'54561846587', N'kesler@gmail.com', NULL)
GO
INSERT [dbo].[TblOgretmen] ([OgretmenId], [OgretmenAdi], [OgretmenSoyadi], [OgretmenTelefon], [OgretmenTC], [OgretmenMail], [DersId]) VALUES (11, N'Selami', N'Beyhan', N'32165458445', N'35645642564', N'beyhan@gmail.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[TblOgretmen] OFF
GO
INSERT [dbo].[TblSinav] ([OgrenciNumara], [DersId], [OgretmenId], [SinavNotu1], [SinavNotu2], [SinavNotu3]) VALUES (1, 1, 1, 85, 80, 90)
GO
INSERT [dbo].[TblSinav] ([OgrenciNumara], [DersId], [OgretmenId], [SinavNotu1], [SinavNotu2], [SinavNotu3]) VALUES (2, 2, 2, 95, 90, 100)
GO
INSERT [dbo].[TblSinav] ([OgrenciNumara], [DersId], [OgretmenId], [SinavNotu1], [SinavNotu2], [SinavNotu3]) VALUES (3, 3, 3, 25, 45, 90)
GO
INSERT [dbo].[TblSinav] ([OgrenciNumara], [DersId], [OgretmenId], [SinavNotu1], [SinavNotu2], [SinavNotu3]) VALUES (4, 4, 4, 58, 67, 76)
GO
ALTER TABLE [dbo].[TblOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenci_TblBolum] FOREIGN KEY([BolumId])
REFERENCES [dbo].[TblBolum] ([BolumId])
GO
ALTER TABLE [dbo].[TblOgrenci] CHECK CONSTRAINT [FK_TblOgrenci_TblBolum]
GO
ALTER TABLE [dbo].[TblOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenci_TblIl] FOREIGN KEY([IlId])
REFERENCES [dbo].[TblIl] ([IlId])
GO
ALTER TABLE [dbo].[TblOgrenci] CHECK CONSTRAINT [FK_TblOgrenci_TblIl]
GO
ALTER TABLE [dbo].[TblSinav]  WITH CHECK ADD  CONSTRAINT [FK_TblSinav_TblDers] FOREIGN KEY([DersId])
REFERENCES [dbo].[TblDers] ([DersId])
GO
ALTER TABLE [dbo].[TblSinav] CHECK CONSTRAINT [FK_TblSinav_TblDers]
GO
ALTER TABLE [dbo].[TblSinav]  WITH CHECK ADD  CONSTRAINT [FK_TblSinav_TblOgrenci] FOREIGN KEY([OgrenciNumara])
REFERENCES [dbo].[TblOgrenci] ([OgrenciId])
GO
ALTER TABLE [dbo].[TblSinav] CHECK CONSTRAINT [FK_TblSinav_TblOgrenci]
GO
ALTER TABLE [dbo].[TblSinav]  WITH CHECK ADD  CONSTRAINT [FK_TblSinav_TblOgretmen] FOREIGN KEY([DersId])
REFERENCES [dbo].[TblOgretmen] ([OgretmenId])
GO
ALTER TABLE [dbo].[TblSinav] CHECK CONSTRAINT [FK_TblSinav_TblOgretmen]
GO
