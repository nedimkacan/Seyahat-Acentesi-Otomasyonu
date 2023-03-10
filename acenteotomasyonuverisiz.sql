USE [seyahat_acentesi_otomasyonu]
GO
/****** Object:  Table [dbo].[arac_turleri]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arac_turleri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[silinme_durum] [bit] NULL,
 CONSTRAINT [PK_arac_turleri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[araclar]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[araclar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[plaka] [nvarchar](15) NULL,
	[koltuk_sayi] [tinyint] NULL,
	[markalar_id] [int] NULL,
	[model] [nvarchar](50) NULL,
	[yil] [date] NULL,
	[arac_turleri_id] [int] NULL,
	[guzergahlar_id] [int] NULL,
	[aktifmi] [bit] NULL,
	[silinme_durum] [bit] NULL,
	[alis_tarih] [datetime] NULL,
	[subeler_id] [int] NULL,
 CONSTRAINT [PK_araclar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[biletler]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[biletler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personeller_id] [int] NULL,
	[seferler_id] [int] NULL,
	[kalkis_sehir_id] [int] NULL,
	[varis_sehir_id] [int] NULL,
	[satismi_rezervasyonmu] [bit] NULL,
	[tc] [nvarchar](11) NULL,
	[ad] [nvarchar](100) NULL,
	[soyad] [nvarchar](100) NULL,
	[telefon] [nvarchar](15) NULL,
	[email] [nvarchar](100) NULL,
	[cinsiyet] [bit] NULL,
	[sehirler_id] [int] NULL,
	[dogum_tarih] [date] NULL,
	[koltuk_no] [tinyint] NULL,
	[satis_tipleri_id] [int] NULL,
	[kesim_tarih] [datetime] NULL,
	[silinme_durum] [bit] NULL,
 CONSTRAINT [PK_biletler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[duraklar]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[duraklar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guzergahlar_id] [int] NULL,
	[kalkis_sehir_id] [int] NULL,
	[varis_sehir_id] [int] NULL,
	[ham_fiyat] [decimal](15, 2) NULL,
	[kar_yuzdesi] [decimal](6, 1) NULL,
	[tutar] [decimal](15, 2) NULL,
	[silinme_durum] [bit] NULL,
	[kayit_tarih] [datetime] NULL,
	[kalkis_tarih] [datetime] NULL,
	[varis_tarih] [datetime] NULL,
 CONSTRAINT [PK_duraklar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[guzergahlar]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[guzergahlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personeller_id] [int] NULL,
	[guzergah_kodu] [nvarchar](50) NULL,
	[baslangic_durak_id] [int] NULL,
	[bitis_durak_id] [int] NULL,
	[silinme_durum] [bit] NULL,
	[olusturma_tarih] [datetime] NULL,
	[subeler_id] [int] NULL,
 CONSTRAINT [PK_guzergahlar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[markalar]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[markalar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[silinme_durum] [bit] NULL,
 CONSTRAINT [PK_markalar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[masraf_tipleri]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masraf_tipleri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](100) NULL,
	[silinme_durum] [bit] NULL,
 CONSTRAINT [PK_masraf_tipleri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[masraflar]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masraflar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personeller_id] [int] NULL,
	[araclar_id] [int] NULL,
	[seferler_id] [int] NULL,
	[masraf_tipleri_id] [int] NULL,
	[tutar] [decimal](15, 2) NULL,
	[aciklama] [nvarchar](255) NULL,
	[arac_sube] [bit] NULL,
	[silinme_durum] [bit] NULL,
	[masraf_tarih] [datetime] NULL,
	[subeler_id] [int] NULL,
 CONSTRAINT [PK_masraflar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel_giris_cikis]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel_giris_cikis](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personeller_id] [int] NULL,
	[giris_zamani] [datetime] NULL,
	[cikis_tarih] [datetime] NULL,
 CONSTRAINT [PK_personel_giris_cikis] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel_tipleri]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel_tipleri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[silinme_durum] [bit] NULL,
 CONSTRAINT [PK_personel_tipleri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personeller]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personeller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tc] [nvarchar](11) NULL,
	[ad] [nvarchar](100) NULL,
	[soyad] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[telefon] [nvarchar](15) NULL,
	[cinsiyet] [bit] NULL,
	[dogum_tarih] [date] NULL,
	[sehirler_id] [int] NULL,
	[adres] [nvarchar](255) NULL,
	[maas] [decimal](15, 2) NULL,
	[kullanici_ad] [nvarchar](100) NULL,
	[sifre] [nvarchar](50) NULL,
	[subeler_id] [int] NULL,
	[personel_tipleri_id] [int] NULL,
	[silinme_durum] [bit] NULL,
	[kayit_tarih] [datetime] NULL,
	[ayrilma_tarih] [datetime] NULL,
	[personel_resmi] [image] NULL,
	[yetki_durum] [tinyint] NULL,
 CONSTRAINT [PK_personeller] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis_tipleri]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis_tipleri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[silinme_durum] [bit] NULL,
 CONSTRAINT [PK_satis_tipleri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seferler]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seferler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kod] [nvarchar](10) NULL,
	[guzergahlar_id] [int] NULL,
	[kalkis_peron] [nvarchar](5) NULL,
	[personeller_id] [int] NULL,
	[sofor_id] [int] NULL,
	[muavin_id] [int] NULL,
	[kalkis_tarih] [datetime] NULL,
	[varis_tarih] [datetime] NULL,
	[silinme_durum] [bit] NULL,
	[olusturma_tarih] [datetime] NULL,
	[arac_ici_ikram] [bit] NULL,
	[wifi] [bit] NULL,
	[araclar_id] [int] NULL,
 CONSTRAINT [PK_seferler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sehirler]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sehirler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[silinme_durum] [bit] NULL,
 CONSTRAINT [PK_sehirler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subeler]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subeler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sehirler_id] [int] NULL,
	[ad] [nvarchar](100) NULL,
	[silinme_durum] [bit] NULL,
	[acilis_tarih] [datetime] NULL,
 CONSTRAINT [PK_subeler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[arac_turleri] ADD  CONSTRAINT [DF_arac_turleri_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[araclar] ADD  CONSTRAINT [DF_araclar_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[araclar] ADD  CONSTRAINT [DF_araclar_alis_tarih]  DEFAULT (getdate()) FOR [alis_tarih]
GO
ALTER TABLE [dbo].[biletler] ADD  CONSTRAINT [DF_biletler_kesim_tarih]  DEFAULT (getdate()) FOR [kesim_tarih]
GO
ALTER TABLE [dbo].[biletler] ADD  CONSTRAINT [DF_biletler_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[duraklar] ADD  CONSTRAINT [DF_duraklar_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[duraklar] ADD  CONSTRAINT [DF_duraklar_kayit_tarih]  DEFAULT (getdate()) FOR [kayit_tarih]
GO
ALTER TABLE [dbo].[guzergahlar] ADD  CONSTRAINT [DF_guzergahlar_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[guzergahlar] ADD  CONSTRAINT [DF_guzergahlar_olusturma_tarih]  DEFAULT (getdate()) FOR [olusturma_tarih]
GO
ALTER TABLE [dbo].[markalar] ADD  CONSTRAINT [DF_markalar_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[masraf_tipleri] ADD  CONSTRAINT [DF_masraf_tipleri_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[masraflar] ADD  CONSTRAINT [DF_masraflar_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[masraflar] ADD  CONSTRAINT [DF_masraflar_masraf_tarih]  DEFAULT (getdate()) FOR [masraf_tarih]
GO
ALTER TABLE [dbo].[personel_giris_cikis] ADD  CONSTRAINT [DF_personel_giris_cikis_giris_zamani]  DEFAULT (getdate()) FOR [giris_zamani]
GO
ALTER TABLE [dbo].[personel_tipleri] ADD  CONSTRAINT [DF_personel_tipleri_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[personeller] ADD  CONSTRAINT [DF_personeller_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[personeller] ADD  CONSTRAINT [DF_personeller_kayit_tarih]  DEFAULT (getdate()) FOR [kayit_tarih]
GO
ALTER TABLE [dbo].[satis_tipleri] ADD  CONSTRAINT [DF_satis_tipleri_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[seferler] ADD  CONSTRAINT [DF_seferler_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[seferler] ADD  CONSTRAINT [DF_seferler_olusturma_tarih]  DEFAULT (getdate()) FOR [olusturma_tarih]
GO
ALTER TABLE [dbo].[sehirler] ADD  CONSTRAINT [DF_sehirler_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[subeler] ADD  CONSTRAINT [DF_subeler_silinme_durum]  DEFAULT ((1)) FOR [silinme_durum]
GO
ALTER TABLE [dbo].[subeler] ADD  CONSTRAINT [DF_subeler_acilis_tarih]  DEFAULT (getdate()) FOR [acilis_tarih]
GO
ALTER TABLE [dbo].[araclar]  WITH CHECK ADD  CONSTRAINT [FK_araclar_arac_turleri] FOREIGN KEY([arac_turleri_id])
REFERENCES [dbo].[arac_turleri] ([id])
GO
ALTER TABLE [dbo].[araclar] CHECK CONSTRAINT [FK_araclar_arac_turleri]
GO
ALTER TABLE [dbo].[araclar]  WITH CHECK ADD  CONSTRAINT [FK_araclar_guzergahlar] FOREIGN KEY([guzergahlar_id])
REFERENCES [dbo].[guzergahlar] ([id])
GO
ALTER TABLE [dbo].[araclar] CHECK CONSTRAINT [FK_araclar_guzergahlar]
GO
ALTER TABLE [dbo].[araclar]  WITH CHECK ADD  CONSTRAINT [FK_araclar_markalar] FOREIGN KEY([markalar_id])
REFERENCES [dbo].[markalar] ([id])
GO
ALTER TABLE [dbo].[araclar] CHECK CONSTRAINT [FK_araclar_markalar]
GO
ALTER TABLE [dbo].[biletler]  WITH CHECK ADD  CONSTRAINT [FK_biletler_personeller] FOREIGN KEY([personeller_id])
REFERENCES [dbo].[personeller] ([id])
GO
ALTER TABLE [dbo].[biletler] CHECK CONSTRAINT [FK_biletler_personeller]
GO
ALTER TABLE [dbo].[biletler]  WITH CHECK ADD  CONSTRAINT [FK_biletler_satis_tipleri] FOREIGN KEY([satis_tipleri_id])
REFERENCES [dbo].[satis_tipleri] ([id])
GO
ALTER TABLE [dbo].[biletler] CHECK CONSTRAINT [FK_biletler_satis_tipleri]
GO
ALTER TABLE [dbo].[biletler]  WITH CHECK ADD  CONSTRAINT [FK_biletler_seferler] FOREIGN KEY([seferler_id])
REFERENCES [dbo].[seferler] ([id])
GO
ALTER TABLE [dbo].[biletler] CHECK CONSTRAINT [FK_biletler_seferler]
GO
ALTER TABLE [dbo].[biletler]  WITH CHECK ADD  CONSTRAINT [FK_biletler_sehirler] FOREIGN KEY([sehirler_id])
REFERENCES [dbo].[sehirler] ([id])
GO
ALTER TABLE [dbo].[biletler] CHECK CONSTRAINT [FK_biletler_sehirler]
GO
ALTER TABLE [dbo].[guzergahlar]  WITH CHECK ADD  CONSTRAINT [FK_guzergahlar_personeller] FOREIGN KEY([personeller_id])
REFERENCES [dbo].[personeller] ([id])
GO
ALTER TABLE [dbo].[guzergahlar] CHECK CONSTRAINT [FK_guzergahlar_personeller]
GO
ALTER TABLE [dbo].[masraflar]  WITH CHECK ADD  CONSTRAINT [FK_masraflar_subeler] FOREIGN KEY([subeler_id])
REFERENCES [dbo].[subeler] ([id])
GO
ALTER TABLE [dbo].[masraflar] CHECK CONSTRAINT [FK_masraflar_subeler]
GO
ALTER TABLE [dbo].[personel_giris_cikis]  WITH CHECK ADD  CONSTRAINT [FK_personel_giris_cikis_personeller] FOREIGN KEY([personeller_id])
REFERENCES [dbo].[personeller] ([id])
GO
ALTER TABLE [dbo].[personel_giris_cikis] CHECK CONSTRAINT [FK_personel_giris_cikis_personeller]
GO
ALTER TABLE [dbo].[personeller]  WITH CHECK ADD  CONSTRAINT [FK_personeller_personel_tipleri] FOREIGN KEY([personel_tipleri_id])
REFERENCES [dbo].[personel_tipleri] ([id])
GO
ALTER TABLE [dbo].[personeller] CHECK CONSTRAINT [FK_personeller_personel_tipleri]
GO
ALTER TABLE [dbo].[personeller]  WITH CHECK ADD  CONSTRAINT [FK_personeller_sehirler] FOREIGN KEY([sehirler_id])
REFERENCES [dbo].[sehirler] ([id])
GO
ALTER TABLE [dbo].[personeller] CHECK CONSTRAINT [FK_personeller_sehirler]
GO
ALTER TABLE [dbo].[personeller]  WITH CHECK ADD  CONSTRAINT [FK_personeller_subeler] FOREIGN KEY([subeler_id])
REFERENCES [dbo].[subeler] ([id])
GO
ALTER TABLE [dbo].[personeller] CHECK CONSTRAINT [FK_personeller_subeler]
GO
ALTER TABLE [dbo].[subeler]  WITH CHECK ADD  CONSTRAINT [FK_subeler_sehirler] FOREIGN KEY([sehirler_id])
REFERENCES [dbo].[sehirler] ([id])
GO
ALTER TABLE [dbo].[subeler] CHECK CONSTRAINT [FK_subeler_sehirler]
GO
/****** Object:  StoredProcedure [dbo].[AktifAracAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifAracAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	araclar.id as id,
	araclar.plaka as plaka,
	araclar.koltuk_sayi as koltuk_sayisi,
	markalar.ad as marka,
	araclar.model as model,
	araclar.yil as trafige_cikma_yili,
	arac_turleri.ad as arac_turu,
	guzergahlar.guzergah_kodu as aracin_calistigi_guzergah,
	case when araclar.aktifmi=1 then 'AKTİF' else 'PASİF' end as arac_durum,
	araclar.alis_tarih as satinalma_tarih,
	araclar.markalar_id as markalar_id,
	araclar.arac_turleri_id as arac_turleri_id,
	araclar.guzergahlar_id as guzergahlar_id,
	subeler.ad as sube,
	araclar.subeler_id as subeler_id
	from araclar 
	inner join markalar on araclar.markalar_id=markalar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	inner join guzergahlar on araclar.guzergahlar_id=guzergahlar.id
	inner join subeler on araclar.subeler_id=subeler.id
	where araclar.silinme_durum=1 and aktifmi=1 and plaka like @aranacak_deger order by plaka,alis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[AktifAracAraRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifAracAraRegional]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	araclar.id as id,
	araclar.plaka as plaka,
	araclar.koltuk_sayi as koltuk_sayisi,
	markalar.ad as marka,
	araclar.model as model,
	araclar.yil as trafige_cikma_yili,
	arac_turleri.ad as arac_turu,
	guzergahlar.guzergah_kodu as aracin_calistigi_guzergah,
	case when araclar.aktifmi=1 then 'AKTİF' else 'PASİF' end as arac_durum,
	araclar.alis_tarih as satinalma_tarih,
	araclar.markalar_id as markalar_id,
	araclar.arac_turleri_id as arac_turleri_id,
	araclar.guzergahlar_id as guzergahlar_id,
	subeler.ad as sube,
	araclar.subeler_id as subeler_id
	from araclar 
	inner join markalar on araclar.markalar_id=markalar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	inner join guzergahlar on araclar.guzergahlar_id=guzergahlar.id
	inner join subeler on araclar.subeler_id=subeler.id
	where araclar.silinme_durum=1 and aktifmi=1 and araclar.subeler_id=@subeler_id and plaka like @aranacak_deger order by plaka,alis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[AktifAracListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifAracListele] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	araclar.id as id,
	araclar.plaka as plaka,
	araclar.koltuk_sayi as koltuk_sayisi,
	markalar.ad as marka,
	araclar.model as model,
	araclar.yil as trafige_cikma_yili,
	arac_turleri.ad as arac_turu,
	guzergahlar.guzergah_kodu as aracin_calistigi_guzergah,
	case when araclar.aktifmi=1 then 'AKTİF' else 'PASİF' end as arac_durum,
	araclar.alis_tarih as satinalma_tarih,
	araclar.markalar_id as markalar_id,
	araclar.arac_turleri_id as arac_turleri_id,
	araclar.guzergahlar_id as guzergahlar_id,
	subeler.ad as sube,
	araclar.subeler_id as subeler_id
	from araclar 
	inner join markalar on araclar.markalar_id=markalar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	inner join guzergahlar on araclar.guzergahlar_id=guzergahlar.id
	inner join subeler on araclar.subeler_id=subeler.id
	where araclar.silinme_durum=1 and araclar.aktifmi=1 order by plaka asc,alis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[AktifAracListeleRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifAracListeleRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select
	araclar.id as id,
	araclar.plaka as plaka,
	araclar.koltuk_sayi as koltuk_sayisi,
	markalar.ad as marka,
	araclar.model as model,
	araclar.yil as trafige_cikma_yili,
	arac_turleri.ad as arac_turu,
	guzergahlar.guzergah_kodu as aracin_calistigi_guzergah,
	case when araclar.aktifmi=1 then 'AKTİF' else 'PASİF' end as arac_durum,
	araclar.alis_tarih as satinalma_tarih,
	araclar.markalar_id as markalar_id,
	araclar.arac_turleri_id as arac_turleri_id,
	araclar.guzergahlar_id as guzergahlar_id,
	subeler.ad as sube,
	araclar.subeler_id as subeler_id
	from araclar 
	inner join markalar on araclar.markalar_id=markalar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	inner join guzergahlar on araclar.guzergahlar_id=guzergahlar.id
	inner join subeler on araclar.subeler_id=subeler.id
	where araclar.silinme_durum=1 and araclar.subeler_id=@subeler_id and araclar.aktifmi=1 order by plaka asc,alis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[AktifKullaniciListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifKullaniciListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as aktif_kullanici from personel_giris_cikis where cikis_tarih is null
END
GO
/****** Object:  StoredProcedure [dbo].[AktifPersonelAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifPersonelAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	personeller.id as id,
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.dogum_tarih as dogum_tarih,
	personeller.telefon as telefon,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personeller.email as email,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	personeller.maas as maas,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' when personeller.yetki_durum=2 then 'PERSONEL' end as yetki_durum,
	personeller.kayit_tarih as kayit_tarih,
	personeller.personel_resmi as resim,
	personeller.sehirler_id as sehir_id,
	personeller.subeler_id as subeler_id,
	personeller.personel_tipleri_id as personel_tipleri_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=1 and personeller.ad like @aranacak_deger order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AktifPersonelAraBolgeMudur]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifPersonelAraBolgeMudur]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	personeller.id as id,
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.dogum_tarih as dogum_tarih,
	personeller.telefon as telefon,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personeller.email as email,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	personeller.maas as maas,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' when personeller.yetki_durum=2 then 'PERSONEL' end as yetki_durum,
	personeller.kayit_tarih as kayit_tarih,
	personeller.personel_resmi as resim,
	personeller.sehirler_id as sehir_id,
	personeller.subeler_id as subeler_id,
	personeller.personel_tipleri_id as personel_tipleri_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=1 and personeller.subeler_id=@subeler_id and personeller.yetki_durum != 0 and personeller.ad like @aranacak_deger order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AktifPersonelListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifPersonelListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	personeller.id as id,
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.dogum_tarih as dogum_tarih,
	personeller.telefon as telefon,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personeller.email as email,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	personeller.maas as maas,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' when personeller.yetki_durum=2 then 'PERSONEL' end as yetki_durum,
	personeller.kayit_tarih as kayit_tarih,
	personeller.personel_resmi as resim,
	personeller.sehirler_id as sehir_id,
	personeller.subeler_id as subeler_id,
	personeller.personel_tipleri_id as personel_tipleri_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AktifPersonelListeleBolgeMudur]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AktifPersonelListeleBolgeMudur]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	personeller.id as id,
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.dogum_tarih as dogum_tarih,
	personeller.telefon as telefon,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personeller.email as email,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	personeller.maas as maas,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' when personeller.yetki_durum=2 then 'PERSONEL' end as yetki_durum,
	personeller.kayit_tarih as kayit_tarih,
	personeller.personel_resmi as resim,
	personeller.sehirler_id as sehir_id,
	personeller.subeler_id as subeler_id,
	personeller.personel_tipleri_id as personel_tipleri_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=1 and personeller.yetki_durum != 0 and personeller.subeler_id=@subeler_id order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AracEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracEkle] 
	-- Add the parameters for the stored procedure here
	@plaka nvarchar(15),
	@koltuk_sayisi tinyint,
	@markalar_id int,
	@model nvarchar(50),
	@yil date,
	@arac_turleri_id int,
	@guzergahlar_id int,
	@aktifmi bit,
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into araclar(plaka,koltuk_sayi,markalar_id,model,yil,arac_turleri_id,guzergahlar_id,aktifmi,subeler_id) values(@plaka,@koltuk_sayisi,@markalar_id,@model,@yil,@arac_turleri_id,@guzergahlar_id,@aktifmi,@subeler_id)
END
GO
/****** Object:  StoredProcedure [dbo].[AracGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracGuncelle]
	-- Add the parameters for the stored procedure here
	@plaka nvarchar(15),
	@koltuk_sayisi tinyint,
	@markalar_id int,
	@model nvarchar(50),
	@yil date,
	@arac_turleri_id int,
	@guzergahlar_id int,
	@aktifmi bit,
	@id int,
	@alis_tarih datetime,
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update araclar set plaka=@plaka,koltuk_sayi=@koltuk_sayisi,markalar_id=@markalar_id,model=@model,yil=@yil,arac_turleri_id=@arac_turleri_id,guzergahlar_id=@guzergahlar_id,aktifmi=@aktifmi,alis_tarih=@alis_tarih,subeler_id=@subeler_id where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[AracKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracKontrol] 
	-- Add the parameters for the stored procedure here
	@plaka nvarchar(15),
	@koltuk_sayisi tinyint,
	@markalar_id int,
	@model nvarchar(50),
	@yil date,
	@arac_turleri_id int,
	@guzergahlar_id int,
	@aktifmi bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from araclar where plaka=@plaka and koltuk_sayi=@koltuk_sayisi and markalar_id=@markalar_id and model=@model and yil=@yil and arac_turleri_id=@arac_turleri_id and guzergahlar_id=@guzergahlar_id and aktifmi=@aktifmi and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[AracMarkaAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracMarkaAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from markalar where ad like @aranacak_deger and silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AracMarkaEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracMarkaEkle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into markalar(ad) values(@ad)
END
GO
/****** Object:  StoredProcedure [dbo].[AracMarkaGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracMarkaGuncelle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update markalar set ad=@ad where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[AracMarkaKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracMarkaKontrol]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from markalar where ad=@ad and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[AracMarkaListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracMarkaListele] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from markalar where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AracMarkaSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracMarkaSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update markalar set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[AracSayisi]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracSayisi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as arac_sayisi from araclar where silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[AracSayisiRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracSayisiRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as arac_sayisi from araclar where silinme_durum=1 and subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[AracSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update araclar set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[AracTurleriCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracTurleriCombobox]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from arac_turleri where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AracTuruAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracTuruAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from arac_turleri where ad like @aranacak_deger and silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AracTuruEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracTuruEkle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into arac_turleri(ad) values(@ad)
END
GO
/****** Object:  StoredProcedure [dbo].[AracTuruGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracTuruGuncelle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update arac_turleri set ad=@ad where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[AracTuruKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracTuruKontrol]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from arac_turleri where ad=@ad and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[AracTuruListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracTuruListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from arac_turleri where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AracTuruSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AracTuruSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update arac_turleri set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[AylikKazanc]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikKazanc]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @kazanc_tutar decimal(15,2),@masraf_tutar decimal(15,2),@sonuc decimal(15,2)
	select 
	@kazanc_tutar=sum(duraklar.tutar - duraklar.ham_fiyat)
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1
	and DATEPART(month,biletler.kesim_tarih)=(DATEPART(month,getdate()))
	select @masraf_tutar=sum(tutar) from masraflar where silinme_durum=1 and DATEPART(month,masraf_tarih)=(DATEPART(month,getdate()))
	if	(@kazanc_tutar IS NULL) begin
		set @kazanc_tutar=0
	end 
	else begin
		set @kazanc_tutar=@kazanc_tutar
	end
	if	(@masraf_tutar IS NULL) begin
		set @masraf_tutar=0
	end 
	else begin
		set @masraf_tutar=@masraf_tutar
	end
	set @sonuc=@kazanc_tutar-@masraf_tutar
	select @sonuc as aylik_kazanc
END
GO
/****** Object:  StoredProcedure [dbo].[AylikKazancRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikKazancRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @kazanc_tutar decimal(15,2),@masraf_tutar decimal(15,2),@sonuc decimal(15,2)
	select 
	@kazanc_tutar=sum(duraklar.tutar - duraklar.ham_fiyat)
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller on biletler.personeller_id=personeller.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1
	and DATEPART(month,biletler.kesim_tarih)=(DATEPART(month,getdate())) and personeller.subeler_id=@subeler_id
	select @masraf_tutar=sum(tutar) from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(month,masraf_tarih)=(DATEPART(month,getdate())) and personeller.subeler_id=@subeler_id
	if	(@kazanc_tutar IS NULL) begin
		set @kazanc_tutar=0
	end 
	else begin
		set @kazanc_tutar=@kazanc_tutar
	end
	if	(@masraf_tutar IS NULL) begin
		set @masraf_tutar=0
	end 
	else begin
		set @masraf_tutar=@masraf_tutar
	end
	set @sonuc=@kazanc_tutar-@masraf_tutar
	select @sonuc as aylik_kazanc
END
GO
/****** Object:  StoredProcedure [dbo].[AylikMasrafTutari]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikMasrafTutari]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as aylik_masraf from masraflar where silinme_durum=1 and DATEPART(month,masraf_tarih)=(DATEPART(month,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[AylikMasrafTutariEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikMasrafTutariEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as aylik_masraf from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(month,masraf_tarih)=(DATEPART(month,getdate())) 
	and personeller.subeler_id=@subeler_id and personeller.id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[AylikMasrafTutariRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikMasrafTutariRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as aylik_masraf from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(month,masraf_tarih)=(DATEPART(month,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[AylikSatilanBilet]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikSatilanBilet]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as aylik_satilan_bilet from biletler where silinme_durum=1 and DATEPART(month,kesim_tarih)=(DATEPART(month,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[AylikSatilanBiletEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikSatilanBiletEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as aylik_satilan_bilet  from biletler 
	inner join personeller on biletler.personeller_id=personeller.id
	where biletler.silinme_durum=1 and DATEPART(month,kesim_tarih)=(DATEPART(month,getdate())) and personeller.subeler_id=@subeler_id
	and biletler.personeller_id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[AylikSatilanBiletRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikSatilanBiletRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as aylik_satilan_bilet from biletler 
	inner join personeller on biletler.personeller_id=personeller.id
	where biletler.silinme_durum=1 and DATEPART(month,kesim_tarih)=(DATEPART(month,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[AylikSeferSayisi]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikSeferSayisi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as aylik_sefer_sayisi from seferler where silinme_durum=1 and DATEPART(month,kalkis_tarih)=(DATEPART(month,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[AylikSeferSayisiEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikSeferSayisiEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as aylik_sefer_sayisi from seferler where silinme_durum=1 and DATEPART(month,kalkis_tarih)=(DATEPART(month,getdate()))
	and seferler.personeller_id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[AylikSeferSayisiRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikSeferSayisiRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as aylik_sefer_sayisi from seferler 
	inner join personeller on seferler.personeller_id=personeller.id
	where seferler.silinme_durum=1 and DATEPART(month,kalkis_tarih)=(DATEPART(month,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[AylikZiyaretciListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AylikZiyaretciListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as aylik_ziyaretci from personel_giris_cikis where 
	DATEPART(month,giris_zamani)=(DATEPART(month,getdate())) and 
	DATEPART(month,cikis_tarih)=(DATEPART(month,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[AyrilmisPersonelAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AyrilmisPersonelAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	personeller.id as id,
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.dogum_tarih as dogum_tarih,
	personeller.telefon as telefon,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personeller.email as email,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	personeller.maas as maas,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' when personeller.yetki_durum=2 then 'PERSONEL' end as yetki_durum,
	personeller.ayrilma_tarih as ayrilma_tarih,
	personeller.personel_resmi as resim,
	personeller.sehirler_id as sehir_id,
	personeller.subeler_id as subeler_id,
	personeller.personel_tipleri_id as personel_tipleri_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=0 and personeller.ad like @aranacak_deger order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[AyrilmisPersonelListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AyrilmisPersonelListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	personeller.id as id,
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.dogum_tarih as dogum_tarih,
	personeller.telefon as telefon,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personeller.email as email,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	personeller.maas as maas,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' when personeller.yetki_durum=2 then 'PERSONEL' end as yetki_durum,
	personeller.ayrilma_tarih as ayrilma_tarih,
	personeller.personel_resmi as resim,
	personeller.sehirler_id as sehir_id,
	personeller.subeler_id as subeler_id,
	personeller.personel_tipleri_id as personel_tipleri_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=0 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletAra]
	-- Add the parameters for the stored procedure here
	@nereden nvarchar(50),
	@nereye nvarchar(50),
	@kalkis_tarih datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	seferler.kod as sefer_kodu,
	guzergahlar.guzergah_kodu as guzergah_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis,
	varis.ad as varis,
	arac_turleri.ad as arac_turu,
	araclar.koltuk_sayi as koltuk_sayisi,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	(sofor.ad + ' ' + sofor.soyad) as sofor,
	(muavin.ad + ' ' + muavin.soyad) as muavin,
	case when arac_ici_ikram=1 then 'MEVCUT' else 'BULUNMUYOR' end as arac_ici_ikram,
	case when wifi=1 then 'MEVCUT' else 'BULUNMUYOR' end as wifi,
	duraklar.tutar as tutar,
	seferler.id as seferler_id,
	kalkis.id as kalkis_id,
	varis.id as varis_id
	from seferler
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on guzergahlar.id=duraklar.guzergahlar_id
	inner join sehirler as kalkis on duraklar.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on duraklar.varis_sehir_id=varis.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join araclar on seferler.araclar_id=araclar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	where 
	seferler.silinme_durum=1 and
	duraklar.silinme_durum=1 and
	kalkis.ad=@nereden and
	varis.ad=@nereye and 
	DATEPART(day,seferler.kalkis_tarih)=(DATEPART(day,@kalkis_tarih)) 
	order by duraklar.tutar asc,seferler.kalkis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletGuncelle]
	-- Add the parameters for the stored procedure here
	@personeller_id int,
	@satismi_rezervasyonmu bit,
	@tc nvarchar(11),
	@ad nvarchar(100),
	@soyad nvarchar(100),
	@telefon nvarchar(15),
	@email nvarchar(100),
	@cinsiyet bit,
	@sehirler_id int,
	@dogum_tarih date,
	@koltuk_no tinyint,
	@satis_tipleri_id int,
	@guncelleme_tarih datetime,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update biletler set personeller_id=@personeller_id,
	satismi_rezervasyonmu=@satismi_rezervasyonmu,tc=@tc,ad=@ad,soyad=@soyad,telefon=@telefon,email=@email,cinsiyet=@cinsiyet,sehirler_id=@sehirler_id,
	dogum_tarih=@dogum_tarih,koltuk_no=@koltuk_no,satis_tipleri_id=@satis_tipleri_id,kesim_tarih=@guncelleme_tarih where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[BiletListeleRezervasyon]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletListeleRezervasyon]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	biletler.id as id,
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	yasadigi_sehirad.ad as yasadigi_sehir_ad,
	biletler.sehirler_id as yasadigi_sehir_id,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.satis_tipleri_id as satis_tipleri_id,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as yasadigi_sehirad on biletler.sehirler_id=yasadigi_sehirad.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=0
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletListeleRezervasyonRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletListeleRezervasyonRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	biletler.id as id,
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	yasadigi_sehirad.ad as yasadigi_sehir_ad,
	biletler.sehirler_id as yasadigi_sehir_id,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.satis_tipleri_id as satis_tipleri_id,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as yasadigi_sehirad on biletler.sehirler_id=yasadigi_sehirad.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	satispersoneli.subeler_id=@subeler_id and
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=0
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletListeleSatis]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletListeleSatis]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	biletler.id as id,
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	yasadigi_sehirad.ad as yasadigi_sehir_ad,
	biletler.sehirler_id as yasadigi_sehir_id,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.satis_tipleri_id as satis_tipleri_id,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as yasadigi_sehirad on biletler.sehirler_id=yasadigi_sehirad.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=1
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletListeleSatisRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletListeleSatisRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	biletler.id as id,
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	yasadigi_sehirad.ad as yasadigi_sehir_ad,
	biletler.sehirler_id as yasadigi_sehir_id,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.satis_tipleri_id as satis_tipleri_id,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as yasadigi_sehirad on biletler.sehirler_id=yasadigi_sehirad.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	satispersoneli.subeler_id=@subeler_id and
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=1
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletRezervasyonAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletRezervasyonAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	biletler.id as id,
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	yasadigi_sehirad.ad as yasadigi_sehir_ad,
	biletler.sehirler_id as yasadigi_sehir_id,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.satis_tipleri_id as satis_tipleri_id,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as yasadigi_sehirad on biletler.sehirler_id=yasadigi_sehirad.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=0 and
	(biletler.ad + ' ' + biletler.soyad) like @aranacak_deger
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletRezervasyonAraRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletRezervasyonAraRegional]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(100),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	biletler.id as id,
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	yasadigi_sehirad.ad as yasadigi_sehir_ad,
	biletler.sehirler_id as yasadigi_sehir_id,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.satis_tipleri_id as satis_tipleri_id,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as yasadigi_sehirad on biletler.sehirler_id=yasadigi_sehirad.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	satispersoneli.subeler_id=@subeler_id and
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=0 and
	(biletler.ad + ' ' + biletler.soyad) like @aranacak_deger
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletSat]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletSat]
	-- Add the parameters for the stored procedure here
	@personeller_id int,
	@seferler_id int,
	@kalkis_sehir_id int,
	@varis_sehir_id int,
	@satismi_rezervasyonmu bit,
	@tc nvarchar(11),
	@ad nvarchar(100),
	@soyad nvarchar(100),
	@telefon nvarchar(15),
	@email nvarchar(100),
	@cinsiyet bit,
	@sehirler_id int,
	@dogum_tarih date,
	@koltuk_no tinyint,
	@satis_tipleri_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into biletler
	(personeller_id,seferler_id,kalkis_sehir_id,varis_sehir_id,satismi_rezervasyonmu,tc,ad,soyad,telefon,email,cinsiyet,sehirler_id,dogum_tarih,koltuk_no,satis_tipleri_id)
	values
	(@personeller_id,@seferler_id,@kalkis_sehir_id,@varis_sehir_id,@satismi_rezervasyonmu,@tc,@ad,@soyad,@telefon,@email,@cinsiyet,@sehirler_id,@dogum_tarih,@koltuk_no,@satis_tipleri_id)
END
GO
/****** Object:  StoredProcedure [dbo].[BiletSatisAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletSatisAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	biletler.id as id,
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	yasadigi_sehirad.ad as yasadigi_sehir_ad,
	biletler.sehirler_id as yasadigi_sehir_id,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as yasadigi_sehirad on biletler.sehirler_id=yasadigi_sehirad.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=1 and
	(biletler.ad + ' ' + biletler.soyad) like @aranacak_deger
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletSatisAraRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletSatisAraRegional]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(100),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	biletler.id as id,
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	yasadigi_sehirad.ad as yasadigi_sehir_ad,
	biletler.sehirler_id as yasadigi_sehir_id,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as yasadigi_sehirad on biletler.sehirler_id=yasadigi_sehirad.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	satispersoneli.subeler_id=@subeler_id and
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=1 and
	(biletler.ad + ' ' + biletler.soyad) like @aranacak_deger
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[BiletSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BiletSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update biletler set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[DurakAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DurakAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	duraklar.id as id,
	guzergahlar.guzergah_kodu as guzergahlar,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	duraklar.ham_fiyat as ham_fiyat,
	duraklar.kar_yuzdesi as kar_yuzdesi,
	duraklar.tutar as tutar,
	duraklar.kayit_tarih as kayit_tarih,
	duraklar.guzergahlar_id as guzergahlar_id,
	duraklar.kalkis_sehir_id as kalkis_sehir_id,
	duraklar.varis_sehir_id as varis_sehir_id
	from duraklar 
	inner join guzergahlar on duraklar.guzergahlar_id=guzergahlar.id 
	inner join sehirler as kalkis on duraklar.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on duraklar.varis_sehir_id=varis.id
	where duraklar.silinme_durum=1 and (guzergahlar.guzergah_kodu like @aranacak_deger or kalkis.ad like @aranacak_deger or varis.ad like @aranacak_deger) order by guzergahlar.guzergah_kodu asc
END
GO
/****** Object:  StoredProcedure [dbo].[DurakEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DurakEkle]
	-- Add the parameters for the stored procedure here
	@guzergahlar_id int,
	@kalkis_sehir_id int,
	@varis_sehir_id int,

	@ham_fiyat decimal(15,2),
	@kar_yuzdesi decimal(6,1),
	@tutar decimal(15,2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into duraklar(guzergahlar_id,kalkis_sehir_id,varis_sehir_id,ham_fiyat,kar_yuzdesi,tutar) values(@guzergahlar_id,@kalkis_sehir_id,@varis_sehir_id,@ham_fiyat,@kar_yuzdesi,@tutar)
END
GO
/****** Object:  StoredProcedure [dbo].[DurakGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DurakGuncelle]
	-- Add the parameters for the stored procedure here
	@guzergahlar_id int,
	@kalkis_sehir_id int,
	@varis_sehir_id int,
	@ham_fiyat decimal(15,2),
	@kar_yuzdesi decimal(6,1),
	@tutar decimal(15,2),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update duraklar set guzergahlar_id=@guzergahlar_id,kalkis_sehir_id=@kalkis_sehir_id,varis_sehir_id=@varis_sehir_id,ham_fiyat=@ham_fiyat,kar_yuzdesi=@kar_yuzdesi,tutar=@tutar where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[DurakKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DurakKontrol]
	-- Add the parameters for the stored procedure here
	@guzergahlar_id int,
	@kalkis_sehir_id int,
	@varis_sehir_id int,
	@ham_fiyat decimal(15,2),
	@kar_yuzdesi decimal(6,1),
	@tutar decimal(15,2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from duraklar where guzergahlar_id=@guzergahlar_id and kalkis_sehir_id=@kalkis_sehir_id and varis_sehir_id=@varis_sehir_id and ham_fiyat=@ham_fiyat and kar_yuzdesi=@kar_yuzdesi and tutar=@tutar and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[DurakListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DurakListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	duraklar.id as id,
	guzergahlar.guzergah_kodu as guzergahlar,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	duraklar.ham_fiyat as ham_fiyat,
	duraklar.kar_yuzdesi as kar_yuzdesi,
	duraklar.tutar as tutar,
	duraklar.kayit_tarih as kayit_tarih,
	duraklar.guzergahlar_id as guzergahlar_id,
	duraklar.kalkis_sehir_id as kalkis_sehir_id,
	duraklar.varis_sehir_id as varis_sehir_id
	from duraklar 
	inner join guzergahlar on duraklar.guzergahlar_id=guzergahlar.id 
	inner join sehirler as kalkis on duraklar.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on duraklar.varis_sehir_id=varis.id
	where duraklar.silinme_durum=1 order by guzergahlar.guzergah_kodu asc
END
GO
/****** Object:  StoredProcedure [dbo].[DurakSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DurakSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update duraklar set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[ErkekDoluKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ErkekDoluKontrol]
	-- Add the parameters for the stored procedure here
	@seferler_id int,
	@koltuk_no int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from biletler where seferler_id=@seferler_id and cinsiyet=1 and koltuk_no=@koltuk_no and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukKazanc]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukKazanc]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @kazanc_tutar decimal(15,2),@masraf_tutar decimal(15,2),@sonuc decimal(15,2)
	select 
	@kazanc_tutar=sum(duraklar.tutar - duraklar.ham_fiyat)
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1
	and DATEPART(day,biletler.kesim_tarih)=(DATEPART(day,getdate()))
	select @masraf_tutar=sum(tutar) from masraflar where silinme_durum=1 and DATEPART(day,masraf_tarih)=(DATEPART(day,getdate()))
	if	(@kazanc_tutar IS NULL) begin
		set @kazanc_tutar=0
	end 
	else begin
		set @kazanc_tutar=@kazanc_tutar
	end
	if	(@masraf_tutar IS NULL) begin
		set @masraf_tutar=0
	end 
	else begin
		set @masraf_tutar=@masraf_tutar
	end
	set @sonuc=@kazanc_tutar-@masraf_tutar
	select @sonuc as gunluk_kazanc
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukKazancRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukKazancRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @kazanc_tutar decimal(15,2),@masraf_tutar decimal(15,2),@sonuc decimal(15,2)
	select 
	@kazanc_tutar=sum(duraklar.tutar - duraklar.ham_fiyat)
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller on biletler.personeller_id=personeller.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1
	and DATEPART(day,biletler.kesim_tarih)=(DATEPART(day,getdate())) and personeller.subeler_id=@subeler_id
	select @masraf_tutar=sum(tutar) from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(day,masraf_tarih)=(DATEPART(day,getdate())) and personeller.subeler_id=@subeler_id
	if	(@kazanc_tutar IS NULL) begin
		set @kazanc_tutar=0
	end 
	else begin
		set @kazanc_tutar=@kazanc_tutar
	end
	if	(@masraf_tutar IS NULL) begin
		set @masraf_tutar=0
	end 
	else begin
		set @masraf_tutar=@masraf_tutar
	end
	set @sonuc=@kazanc_tutar-@masraf_tutar
	select @sonuc as gunluk_kazanc
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukMasrafTutari]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukMasrafTutari]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as gunluk_masraf from masraflar where silinme_durum=1 and DATEPART(day,masraf_tarih)=(DATEPART(day,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukMasrafTutariEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukMasrafTutariEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as gunluk_masraf from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(day,masraf_tarih)=(DATEPART(day,getdate())) 
	and personeller.subeler_id=@subeler_id and personeller.id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukMasrafTutariRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukMasrafTutariRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as gunluk_masraf from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(day,masraf_tarih)=(DATEPART(day,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukSatilanBilet]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukSatilanBilet]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as gunluk_satilan_bilet from biletler where silinme_durum=1 and DATEPART(day,kesim_tarih)=(DATEPART(day,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukSatilanBiletEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukSatilanBiletEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as gunluk_satilan_bilet  from biletler 
	inner join personeller on biletler.personeller_id=personeller.id
	where biletler.silinme_durum=1 and DATEPART(day,kesim_tarih)=(DATEPART(day,getdate())) and personeller.subeler_id=@subeler_id
	and biletler.personeller_id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukSatilanBiletRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukSatilanBiletRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as gunluk_satilan_bilet  from biletler 
	inner join personeller on biletler.personeller_id=personeller.id
	where biletler.silinme_durum=1 and DATEPART(day,kesim_tarih)=(DATEPART(day,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukSeferSayisi]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukSeferSayisi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as gunluk_sefer_sayisi from seferler where silinme_durum=1 and DATEPART(day,kalkis_tarih)=(DATEPART(day,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukSeferSayisiEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukSeferSayisiEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as gunluk_sefer_sayisi from seferler where silinme_durum=1 and DATEPART(day,kalkis_tarih)=(DATEPART(day,getdate()))
	and seferler.personeller_id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukSeferSayisiRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukSeferSayisiRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as gunluk_sefer_sayisi from seferler 
	inner join personeller on seferler.personeller_id=personeller.id
	where seferler.silinme_durum=1 and DATEPART(day,kalkis_tarih)=(DATEPART(day,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[GunlukZiyaretciListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GunlukZiyaretciListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as gunluk_ziyaretci from personel_giris_cikis where 
	DATEPART(day,giris_zamani)=(DATEPART(day,getdate())) and 
	DATEPART(day,cikis_tarih)=(DATEPART(day,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	guzergahlar.guzergah_kodu as guzergah_kodu,
	subeler.ad as sube,
	baslangic_durak.ad as baslangic_durak,
	bitis_durak.ad as bitis_durak,
	guzergahlar.olusturma_tarih,
	baslangic_durak_id,
	bitis_durak_id,
	guzergahlar.id
	from guzergahlar
	inner join subeler on guzergahlar.subeler_id=subeler.id
	inner join sehirler as baslangic_durak on guzergahlar.baslangic_durak_id=baslangic_durak.id
	inner join sehirler as bitis_durak on guzergahlar.bitis_durak_id=bitis_durak.id
	where guzergahlar.silinme_durum=1 and guzergahlar.guzergah_kodu like @aranacak_deger order by guzergah_kodu asc
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahEkle]
	-- Add the parameters for the stored procedure here
	@personeller_id int,
	@guzergah_kodu nvarchar(50),
	@baslangic_durak_id int,
	@bitis_durak_id int,
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into guzergahlar(personeller_id,guzergah_kodu,baslangic_durak_id,bitis_durak_id,subeler_id) values(@personeller_id,@guzergah_kodu,@baslangic_durak_id,@bitis_durak_id,@subeler_id)
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahGuncelle]
	-- Add the parameters for the stored procedure here
	@personeller_id int,
	@guzergah_kodu nvarchar(50),
	@baslangic_durak_id int,
	@bitis_durak_id int,
	@subeler_id int,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update guzergahlar set personeller_id=@personeller_id,guzergah_kodu=@guzergah_kodu,baslangic_durak_id=@baslangic_durak_id,bitis_durak_id=@bitis_durak_id,subeler_id=@subeler_id where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahKontrol]
	-- Add the parameters for the stored procedure here
	@guzergah_kodu nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from guzergahlar where guzergah_kodu=@guzergah_kodu and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahlarCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahlarCombobox]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select guzergahlar.id as id,(guzergah_kodu + ' - ' + baslangic_durak.ad + ' - ' + bitis_durak.ad ) as guzergah from guzergahlar inner join sehirler as baslangic_durak on guzergahlar.baslangic_durak_id=baslangic_durak.id inner join sehirler as bitis_durak on guzergahlar.bitis_durak_id=bitis_durak.id where guzergahlar.silinme_durum=1 order by guzergah asc
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahlarComboboxRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahlarComboboxRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select guzergahlar.id as id,(guzergah_kodu + ' - ' + baslangic_durak.ad + ' - ' + bitis_durak.ad ) as guzergah from guzergahlar 
	inner join sehirler as baslangic_durak on guzergahlar.baslangic_durak_id=baslangic_durak.id 
	inner join sehirler as bitis_durak on guzergahlar.bitis_durak_id=bitis_durak.id 
	where guzergahlar.subeler_id=@subeler_id and guzergahlar.silinme_durum=1 order by guzergah asc
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	guzergahlar.guzergah_kodu as guzergah_kodu,
	subeler.ad as sube,
	baslangic_durak.ad as baslangic_durak,
	bitis_durak.ad as bitis_durak,
	guzergahlar.olusturma_tarih,
	baslangic_durak_id,
	bitis_durak_id,
	guzergahlar.id,
	subeler.id as subeler_id
	from guzergahlar
	inner join subeler on guzergahlar.subeler_id=subeler.id
	inner join sehirler as baslangic_durak on guzergahlar.baslangic_durak_id=baslangic_durak.id
	inner join sehirler as bitis_durak on guzergahlar.bitis_durak_id=bitis_durak.id
	where guzergahlar.silinme_durum=1 order by guzergah_kodu asc
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahSayisi]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahSayisi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as guzergah_sayisi from guzergahlar where silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahSayisiRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahSayisiRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as guzergah_sayisi from araclar where silinme_durum=1 and subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[GuzergahSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuzergahSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update guzergahlar set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[KadinDoluKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KadinDoluKontrol]
	-- Add the parameters for the stored procedure here
	@seferler_id int,
	@koltuk_no int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from biletler where seferler_id=@seferler_id and cinsiyet=0 and koltuk_no=@koltuk_no and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[KullaniciProfilGuncelleme]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KullaniciProfilGuncelleme]
	-- Add the parameters for the stored procedure here
	@tc nvarchar(11),
	@ad nvarchar(100),
	@soyad nvarchar(100),
	@email nvarchar(100),
	@telefon nvarchar(15),
	@cinsiyet bit,
	@dogum_tarih date,
	@sehirler_id int,
	@adres nvarchar(255),
	@kullanici_ad nvarchar(100),
	@personel_resmi image,
	@sifre nvarchar(50),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update personeller set tc=@tc,ad=@ad,soyad=@soyad,email=@email,telefon=@telefon,cinsiyet=@cinsiyet,dogum_tarih=@dogum_tarih,sehirler_id=@sehirler_id,adres=@adres,kullanici_ad=@kullanici_ad,personel_resmi=@personel_resmi,sifre=@sifre
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[KullaniciProfilGuncellemeResimsiz]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KullaniciProfilGuncellemeResimsiz]
	-- Add the parameters for the stored procedure here
	@tc nvarchar(11),
	@ad nvarchar(100),
	@soyad nvarchar(100),
	@email nvarchar(100),
	@telefon nvarchar(15),
	@cinsiyet bit,
	@dogum_tarih date,
	@sehirler_id int,
	@adres nvarchar(255),
	@kullanici_ad nvarchar(100),
	@sifre nvarchar(50),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update personeller set tc=@tc,ad=@ad,soyad=@soyad,email=@email,telefon=@telefon,cinsiyet=@cinsiyet,dogum_tarih=@dogum_tarih,sehirler_id=@sehirler_id,adres=@adres,kullanici_ad=@kullanici_ad,sifre=@sifre
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[KullaniciProfilListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KullaniciProfilListele]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.email as email,
	personeller.telefon as telefon,
	personeller.cinsiyet as cinsiyet,
	personeller.dogum_tarih as dogum_tarih,
	sehirler.ad as sehir,
	personeller.sehirler_id as sehirler_id,
	personeller.adres as adres,
	personeller.maas as maas,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	subeler.ad as sube,
	personel_tipleri.ad as personel_tip,
	personeller.yetki_durum as yetki_durum,
	personeller.silinme_durum as silinme_durum,
	personeller.kayit_tarih as kayit_tarih,
	personeller.ayrilma_tarih as ayrilma_tarih,
	personeller.personel_resmi as personel_resmi
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id 
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id 
	where personeller.id=@id
	and personeller.silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[LoginControl]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LoginControl]
	-- Add the parameters for the stored procedure here
	@kullanici_ad_veya_email nvarchar(100),
	@sifre nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select personeller.id as id,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.email as email,
	personeller.telefon as telefon,
	personeller.cinsiyet as cinsiyet,
	personeller.dogum_tarih as dogum_tarih,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personeller.maas as maas,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	subeler.ad as sube,
	personel_tipleri.ad as personel_tip,
	personeller.yetki_durum as yetki_durum,
	personeller.silinme_durum as silinme_durum,
	personeller.kayit_tarih as kayit_tarih,
	personeller.ayrilma_tarih as ayrilma_tarih,
	personeller.personel_resmi as personel_resmi,
	personeller.subeler_id as subeler_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id 
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id 
	where (personeller.kullanici_ad=@kullanici_ad_veya_email or personeller.email=@kullanici_ad_veya_email) 
	and personeller.sifre=@sifre 
	and personeller.silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[MarkalarCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MarkalarCombobox]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from markalar where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafAraArac]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafAraArac]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select (personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	(select subeler.ad as ad from personeller inner join subeler on personeller.subeler_id=subeler.id where personeller.id=masraflar.personeller_id) as sube,
	araclar.plaka as masraf_yapilan_arac,
	seferler.kod as masraf_yapilan_sefer_kodu,
	(select guzergahlar.guzergah_kodu from seferler inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id where seferler.id=masraflar.seferler_id) as kalkisvarisyeri,	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join araclar on masraflar.araclar_id=araclar.id
	inner join seferler on masraflar.seferler_id=seferler.id
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	where masraflar.silinme_durum=1 and arac_sube=1 and seferler.kod like @aranacak_deger order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafAraAracPersonel]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafAraAracPersonel]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50),
	@personeller_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select (personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	(select subeler.ad as ad from personeller inner join subeler on personeller.subeler_id=subeler.id where personeller.id=masraflar.personeller_id) as sube,
	araclar.plaka as masraf_yapilan_arac,
	seferler.kod as masraf_yapilan_sefer_kodu,
	(select guzergahlar.guzergah_kodu from seferler inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id where seferler.id=masraflar.seferler_id) as kalkisvarisyeri,	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join araclar on masraflar.araclar_id=araclar.id
	inner join seferler on masraflar.seferler_id=seferler.id
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	where masraflar.silinme_durum=1 and masraflar.personeller_id=@personeller_id and arac_sube=1 and seferler.kod like @aranacak_deger order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafAraAracRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafAraAracRegional]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select (personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	(select subeler.ad as ad from personeller inner join subeler on personeller.subeler_id=subeler.id where personeller.id=masraflar.personeller_id) as sube,
	araclar.plaka as masraf_yapilan_arac,
	seferler.kod as masraf_yapilan_sefer_kodu,
	(select guzergahlar.guzergah_kodu from seferler inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id where seferler.id=masraflar.seferler_id) as kalkisvarisyeri,	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join araclar on masraflar.araclar_id=araclar.id
	inner join seferler on masraflar.seferler_id=seferler.id
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	where masraflar.silinme_durum=1 and masraflar.subeler_id=@subeler_id and arac_sube=1 and seferler.kod like @aranacak_deger order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafAracCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafAracCombobox] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,plaka from araclar where silinme_durum=1 order by plaka asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafAracComboboxRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafAracComboboxRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,plaka from araclar where subeler_id=@subeler_id and silinme_durum=1 order by plaka asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafAraSube]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafAraSube]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	subeler.ad as sube,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id,
	masraflar.subeler_id as subeler_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	inner join subeler on masraflar.subeler_id=subeler.id
	where masraflar.silinme_durum=1 and arac_sube=0 and subeler.ad like @aranacak_deger order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafAraSubePersonel]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafAraSubePersonel]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50),
	@personeller_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	subeler.ad as sube,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id,
	masraflar.subeler_id as subeler_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	inner join subeler on masraflar.subeler_id=subeler.id
	where masraflar.silinme_durum=1 and masraflar.personeller_id=@personeller_id and arac_sube=0 and masraflar.tutar like @aranacak_deger order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafAraSubeRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafAraSubeRegional]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	subeler.ad as sube,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id,
	masraflar.subeler_id as subeler_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	inner join subeler on masraflar.subeler_id=subeler.id
	where masraflar.silinme_durum=1 and masraflar.subeler_id=@subeler_id and arac_sube=0 and (personeller.ad + ' ' +personeller.soyad) like @aranacak_deger order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafEkleArac]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafEkleArac] 
	-- Add the parameters for the stored procedure here
	@personeller_id int,
	@araclar_id int,
	@seferler_id int,
	@masraf_tipleri_id int,
	@tutar decimal(15,2),
	@aciklama nvarchar(255),
	@arac_sube bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into masraflar(personeller_id,araclar_id,seferler_id,masraf_tipleri_id,tutar,aciklama,arac_sube) values(@personeller_id,@araclar_id,@seferler_id,@masraf_tipleri_id,@tutar,@aciklama,@arac_sube)
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafEkleSube]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafEkleSube] 
	-- Add the parameters for the stored procedure here
	@personeller_id int,
	@subeler_id int,
	@masraf_tipleri_id int,
	@tutar decimal(15,2),
	@aciklama nvarchar(255),
	@arac_sube bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into masraflar(personeller_id,subeler_id,masraf_tipleri_id,tutar,aciklama,arac_sube) values(@personeller_id,@subeler_id,@masraf_tipleri_id,@tutar,@aciklama,@arac_sube)
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafGuncelleArac]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafGuncelleArac]
	-- Add the parameters for the stored procedure here
	@personeller_id int,
	@araclar_id int,
	@seferler_id int,
	@masraf_tipleri_id int,
	@tutar decimal(15,2),
	@aciklama nvarchar(255),
	@masraf_tarih datetime,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update masraflar set personeller_id=@personeller_id,araclar_id=@araclar_id,seferler_id=@seferler_id,masraf_tipleri_id=@masraf_tipleri_id,tutar=@tutar,aciklama=@aciklama,masraf_tarih=@masraf_tarih where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafGuncelleSube]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafGuncelleSube]
	-- Add the parameters for the stored procedure here
	@personeller_id int,
	@subeler_id int,
	@masraf_tipleri_id int,
	@tutar decimal(15,2),
	@aciklama nvarchar(255),
	@masraf_tarih datetime,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update masraflar set personeller_id=@personeller_id,subeler_id=@subeler_id,masraf_tipleri_id=@masraf_tipleri_id,tutar=@tutar,aciklama=@aciklama,masraf_tarih=@masraf_tarih where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafListeleArac]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafListeleArac] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	araclar.plaka as masraf_yapilan_arac,
	seferler.kod as masraf_yapilan_sefer_kodu,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.araclar_id as araclar_id,
	masraflar.seferler_id as seferler_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join araclar on masraflar.araclar_id=araclar.id
	inner join seferler on masraflar.seferler_id=seferler.id
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	where masraflar.silinme_durum=1 and arac_sube=1 order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafListeleAracPersonel]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafListeleAracPersonel]
	-- Add the parameters for the stored procedure here
	@personeller_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	araclar.plaka as masraf_yapilan_arac,
	seferler.kod as masraf_yapilan_sefer_kodu,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.araclar_id as araclar_id,
	masraflar.seferler_id as seferler_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join araclar on masraflar.araclar_id=araclar.id
	inner join seferler on masraflar.seferler_id=seferler.id
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	where masraflar.silinme_durum=1 and personeller.id=@personeller_id and arac_sube=1 order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafListeleAracRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafListeleAracRegional] 
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	araclar.plaka as masraf_yapilan_arac,
	seferler.kod as masraf_yapilan_sefer_kodu,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.araclar_id as araclar_id,
	masraflar.seferler_id as seferler_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join araclar on masraflar.araclar_id=araclar.id
	inner join seferler on masraflar.seferler_id=seferler.id
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	where masraflar.silinme_durum=1 and araclar.subeler_id=@subeler_id and arac_sube=1 order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafListeleSube]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafListeleSube]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	subeler.ad as sube,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id,
	masraflar.subeler_id as subeler_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	inner join subeler on masraflar.subeler_id=subeler.id
	where masraflar.silinme_durum=1 and arac_sube=0 order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafListeleSubePersonel]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafListeleSubePersonel]
	-- Add the parameters for the stored procedure here
	@personeller_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	subeler.ad as sube,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id,
	masraflar.subeler_id as subeler_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	inner join subeler on masraflar.subeler_id=subeler.id
	where masraflar.silinme_durum=1 and masraflar.personeller_id=@personeller_id and arac_sube=0 order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafListeleSubeRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafListeleSubeRegional] 
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select masraflar.id as id,
	(personeller.ad + ' ' + personeller.soyad) as masrafi_yapan_personel,
	(select personel_tipleri.ad as ad from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.id=masraflar.personeller_id) as unvan,
	subeler.ad as sube,
	masraf_tipleri.ad as masraf_tipi,
	masraflar.aciklama as aciklama,
	masraflar.tutar as tutar,
	masraflar.masraf_tarih as tarih,
	masraflar.arac_sube as arac_sube,
	masraflar.personeller_id as personeller_id,
	masraflar.masraf_tipleri_id as masraf_tipleri_id,
	masraflar.subeler_id as subeler_id
	from masraflar 
	inner join personeller on masraflar.personeller_id=personeller.id 
	inner join masraf_tipleri on masraflar.masraf_tipleri_id=masraf_tipleri.id
	inner join subeler on masraflar.subeler_id=subeler.id
	where masraflar.silinme_durum=1 and masraflar.subeler_id=@subeler_id and arac_sube=0 order by masraflar.masraf_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafPersonelCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafPersonelCombobox] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,(ad + ' ' + soyad) as ad_soyad from personeller where silinme_durum=1 order by ad_soyad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafPersonelComboboxPersonel]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafPersonelComboboxPersonel]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,(ad + ' ' + soyad) as ad_soyad from personeller where id=@subeler_id and silinme_durum=1 order by ad_soyad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafPersonelComboboxRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafPersonelComboboxRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,(ad + ' ' + soyad) as ad_soyad from personeller where subeler_id=@subeler_id and silinme_durum=1 order by ad_soyad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafSeferCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafSeferCombobox] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,kod from seferler where silinme_durum=1 order by kod asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafSeferComboboxRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafSeferComboboxRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select seferler.id as id,seferler.kod as kod from seferler
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	where guzergahlar.subeler_id=@subeler_id and seferler.silinme_durum=1 order by kod asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update masraflar set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafSubeCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafSubeCombobox] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from subeler where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafSubeComboboxRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafSubeComboboxRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from subeler where subeler.id=@subeler_id and silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafTipAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from masraf_tipleri where ad like @aranacak_deger and silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafTipEkle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into masraf_tipleri(ad) values(@ad)
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafTipGuncelle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update masraf_tipleri set ad=@ad where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafTipKontrol]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from masraf_tipleri where ad=@ad and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafTipListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from masraf_tipleri where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafTipSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafTipSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update masraf_tipleri set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[MasrafTuruCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MasrafTuruCombobox] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from masraf_tipleri where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MuavinCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MuavinCombobox]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select personeller.id as id,(personeller.ad + ' ' + personeller.soyad) as adsoyad from personeller
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=1 and personel_tipleri.ad='muavin' order by adsoyad asc
END
GO
/****** Object:  StoredProcedure [dbo].[MuavinComboboxRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MuavinComboboxRegional] 
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select personeller.id as id,(personeller.ad + ' ' + personeller.soyad) as adsoyad from personeller
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.subeler_id=@subeler_id and personeller.silinme_durum=1 and personel_tipleri.ad='muavin' order by adsoyad asc
END
GO
/****** Object:  StoredProcedure [dbo].[PasifAracAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PasifAracAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	araclar.id as id,
	araclar.plaka as plaka,
	araclar.koltuk_sayi as koltuk_sayisi,
	markalar.ad as marka,
	araclar.model as model,
	araclar.yil as trafige_cikma_yili,
	arac_turleri.ad as arac_turu,
	guzergahlar.guzergah_kodu as aracin_calistigi_guzergah,
	case when araclar.aktifmi=1 then 'AKTİF' else 'PASİF' end as arac_durum,
	araclar.alis_tarih as satinalma_tarih,
	araclar.markalar_id as markalar_id,
	araclar.arac_turleri_id as arac_turleri_id,
	araclar.guzergahlar_id as guzergahlar_id,
	subeler.ad as sube,
	araclar.subeler_id as subeler_id
	from araclar 
	inner join markalar on araclar.markalar_id=markalar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	inner join guzergahlar on araclar.guzergahlar_id=guzergahlar.id
	inner join subeler on araclar.subeler_id=subeler.id
	where araclar.silinme_durum=1 and aktifmi=0 and plaka like @aranacak_deger order by plaka,alis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[PasifAracAraRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PasifAracAraRegional]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	araclar.id as id,
	araclar.plaka as plaka,
	araclar.koltuk_sayi as koltuk_sayisi,
	markalar.ad as marka,
	araclar.model as model,
	araclar.yil as trafige_cikma_yili,
	arac_turleri.ad as arac_turu,
	guzergahlar.guzergah_kodu as aracin_calistigi_guzergah,
	case when araclar.aktifmi=1 then 'AKTİF' else 'PASİF' end as arac_durum,
	araclar.alis_tarih as satinalma_tarih,
	araclar.markalar_id as markalar_id,
	araclar.arac_turleri_id as arac_turleri_id,
	araclar.guzergahlar_id as guzergahlar_id,
	subeler.ad as sube,
	araclar.subeler_id as subeler_id
	from araclar 
	inner join markalar on araclar.markalar_id=markalar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	inner join guzergahlar on araclar.guzergahlar_id=guzergahlar.id
	inner join subeler on araclar.subeler_id=subeler.id
	where araclar.silinme_durum=1 and aktifmi=0 and araclar.subeler_id=@subeler_id and plaka like @aranacak_deger order by plaka,alis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[PasifAracListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PasifAracListele] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	araclar.id as id,
	araclar.plaka as plaka,
	araclar.koltuk_sayi as koltuk_sayisi,
	markalar.ad as marka,
	araclar.model as model,
	araclar.yil as trafige_cikma_yili,
	arac_turleri.ad as arac_turu,
	guzergahlar.guzergah_kodu as aracin_calistigi_guzergah,
	case when araclar.aktifmi=1 then 'AKTİF' else 'PASİF' end as arac_durum,
	araclar.alis_tarih as satinalma_tarih,
	araclar.markalar_id as markalar_id,
	araclar.arac_turleri_id as arac_turleri_id,
	araclar.guzergahlar_id as guzergahlar_id,
	subeler.ad as sube,
	araclar.subeler_id as subeler_id
	from araclar 
	inner join markalar on araclar.markalar_id=markalar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	inner join guzergahlar on araclar.guzergahlar_id=guzergahlar.id
	inner join subeler on araclar.subeler_id=subeler.id
	where araclar.silinme_durum=1 and aktifmi=0 order by plaka,alis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[PasifAracListeleRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PasifAracListeleRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	araclar.id as id,
	araclar.plaka as plaka,
	araclar.koltuk_sayi as koltuk_sayisi,
	markalar.ad as marka,
	araclar.model as model,
	araclar.yil as trafige_cikma_yili,
	arac_turleri.ad as arac_turu,
	guzergahlar.guzergah_kodu as aracin_calistigi_guzergah,
	case when araclar.aktifmi=1 then 'AKTİF' else 'PASİF' end as arac_durum,
	araclar.alis_tarih as satinalma_tarih,
	araclar.markalar_id as markalar_id,
	araclar.arac_turleri_id as arac_turleri_id,
	araclar.guzergahlar_id as guzergahlar_id,
	subeler.ad as sube,
	araclar.subeler_id as subeler_id
	from araclar 
	inner join markalar on araclar.markalar_id=markalar.id
	inner join arac_turleri on araclar.arac_turleri_id=arac_turleri.id
	inner join guzergahlar on araclar.guzergahlar_id=guzergahlar.id
	inner join subeler on araclar.subeler_id=subeler.id
	where araclar.silinme_durum=1 and araclar.subeler_id=@subeler_id and aktifmi=0 order by plaka,alis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[PasifPersonelAraBolgeMudur]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PasifPersonelAraBolgeMudur]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	personeller.id as id,
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.dogum_tarih as dogum_tarih,
	personeller.telefon as telefon,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personeller.email as email,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	personeller.maas as maas,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' when personeller.yetki_durum=2 then 'PERSONEL' end as yetki_durum,
	personeller.ayrilma_tarih as ayrilma_tarih,
	personeller.personel_resmi as resim,
	personeller.sehirler_id as sehir_id,
	personeller.subeler_id as subeler_id,
	personeller.personel_tipleri_id as personel_tipleri_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=0 and personeller.subeler_id=@subeler_id and personeller.yetki_durum != 0 and personeller.ad like @aranacak_deger order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[PasifPersonelListeleBolgeMudur]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PasifPersonelListeleBolgeMudur]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	personeller.id as id,
	personeller.tc as tc,
	personeller.ad as ad,
	personeller.soyad as soyad,
	personeller.dogum_tarih as dogum_tarih,
	personeller.telefon as telefon,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	sehirler.ad as sehir,
	personeller.adres as adres,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personeller.email as email,
	personeller.kullanici_ad as kullanici_ad,
	personeller.sifre as sifre,
	personeller.maas as maas,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' when personeller.yetki_durum=2 then 'PERSONEL' end as yetki_durum,
	personeller.ayrilma_tarih as ayrilma_tarih,
	personeller.personel_resmi as resim,
	personeller.sehirler_id as sehir_id,
	personeller.subeler_id as subeler_id,
	personeller.personel_tipleri_id as personel_tipleri_id
	from personeller 
	inner join sehirler on personeller.sehirler_id=sehirler.id 
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=0 and personeller.yetki_durum != 0 and personeller.subeler_id=@subeler_id order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelEkle]
	-- Add the parameters for the stored procedure here
	@tc nvarchar(11),
	@ad nvarchar(100),
	@soyad nvarchar(100),
	@email nvarchar(100),
	@telefon nvarchar(15),
	@cinsiyet bit,
	@dogum_tarih date,
	@sehirler_id int,
	@adres nvarchar(255),
	@maas decimal(15,2),
	@kullanici_ad nvarchar(100),
	@sifre nvarchar(50),
	@subeler_id int,
	@personel_tipleri_id int,
	@yetki_durum tinyint,
	@personel_resmi image
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into personeller
	(tc,ad,soyad,email,telefon,cinsiyet,dogum_tarih,sehirler_id,adres,maas,kullanici_ad,sifre,subeler_id,personel_tipleri_id,yetki_durum,personel_resmi) values
	(@tc,@ad,@soyad,@email,@telefon,@cinsiyet,@dogum_tarih,@sehirler_id,@adres,@maas,@kullanici_ad,@sifre,@subeler_id,@personel_tipleri_id,@yetki_durum,@personel_resmi)
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelEkleResimsiz]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelEkleResimsiz]
	-- Add the parameters for the stored procedure here
	@tc nvarchar(11),
	@ad nvarchar(100),
	@soyad nvarchar(100),
	@email nvarchar(100),
	@telefon nvarchar(15),
	@cinsiyet bit,
	@dogum_tarih date,
	@sehirler_id int,
	@adres nvarchar(255),
	@maas decimal(15,2),
	@kullanici_ad nvarchar(100),
	@sifre nvarchar(50),
	@subeler_id int,
	@personel_tipleri_id int,
	@yetki_durum tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into personeller
	(tc,ad,soyad,email,telefon,cinsiyet,dogum_tarih,sehirler_id,adres,maas,kullanici_ad,sifre,subeler_id,personel_tipleri_id,yetki_durum) values
	(@tc,@ad,@soyad,@email,@telefon,@cinsiyet,@dogum_tarih,@sehirler_id,@adres,@maas,@kullanici_ad,@sifre,@subeler_id,@personel_tipleri_id,@yetki_durum)
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelGuncelle]
	-- Add the parameters for the stored procedure here
	@tc nvarchar(11),
	@ad nvarchar(100),
	@soyad nvarchar(100),
	@email nvarchar(100),
	@telefon nvarchar(15),
	@cinsiyet bit,
	@dogum_tarih date,
	@sehirler_id int,
	@adres nvarchar(255),
	@maas decimal(15,2),
	@kullanici_ad nvarchar(100),
	@subeler_id int,
	@personel_tipleri_id int,
	@yetki_durum tinyint,
	@personel_resmi image,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update personeller set tc=@tc,ad=@ad,soyad=@soyad,email=@email,telefon=@telefon,cinsiyet=@cinsiyet,dogum_tarih=@dogum_tarih,sehirler_id=@sehirler_id,adres=@adres,
	maas=@maas,kullanici_ad=@kullanici_ad,subeler_id=@subeler_id,personel_tipleri_id=@personel_tipleri_id,yetki_durum=@yetki_durum,personel_resmi=@personel_resmi
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelGuncelleResimsiz]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelGuncelleResimsiz]
	-- Add the parameters for the stored procedure here
	@tc nvarchar(11),
	@ad nvarchar(100),
	@soyad nvarchar(100),
	@email nvarchar(100),
	@telefon nvarchar(15),
	@cinsiyet bit,
	@dogum_tarih date,
	@sehirler_id int,
	@adres nvarchar(255),
	@maas decimal(15,2),
	@kullanici_ad nvarchar(100),
	@subeler_id int,
	@personel_tipleri_id int,
	@yetki_durum tinyint,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update personeller set tc=@tc,ad=@ad,soyad=@soyad,email=@email,telefon=@telefon,cinsiyet=@cinsiyet,dogum_tarih=@dogum_tarih,sehirler_id=@sehirler_id,adres=@adres,
	maas=@maas,kullanici_ad=@kullanici_ad,subeler_id=@subeler_id,personel_tipleri_id=@personel_tipleri_id,yetki_durum=@yetki_durum where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelKontrol]
	-- Add the parameters for the stored procedure here
	@tc nvarchar(11),
	@email nvarchar(100),
	@telefon nvarchar(15),
	@kullanici_ad nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from personeller where 
	tc=@tc or telefon=@telefon or kullanici_ad=@kullanici_ad or email=@email and
	silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelSayisi]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelSayisi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(*) as personel_sayisi from personeller inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id where personeller.silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelSayisiRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelSayisiRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(*) as personel_sayisi from personeller 
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id 
	where personeller.silinme_durum=1 and subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelSil]
	-- Add the parameters for the stored procedure here
	@id int,
	@ayrilma_tarih datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update personeller set silinme_durum=0,ayrilma_tarih=@ayrilma_tarih where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelTipAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelTipAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from personel_tipleri where ad like @aranacak_deger and silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelTipEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelTipEkle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into personel_tipleri(ad) values(@ad)
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelTipGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelTipGuncelle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update personel_tipleri set ad=@ad where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelTipKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelTipKontrol]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from personel_tipleri where ad=@ad and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelTipleriCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelTipleriCombobox]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from personel_tipleri where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelTipListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelTipListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from personel_tipleri where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[PersonelTipSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersonelTipSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update personel_tipleri set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[RezerveBiletAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RezerveBiletAra] 
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=0 and
	biletler.ad like @aranacak_deger
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[RezerveDoluKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RezerveDoluKontrol]
	-- Add the parameters for the stored procedure here
	@seferler_id int,
	@koltuk_no int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from biletler where seferler_id=@seferler_id and satismi_rezervasyonmu=0 and koltuk_no=@koltuk_no and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[SatilanBiletAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SatilanBiletAra] 
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	(satispersoneli.ad + ' ' + satispersoneli.soyad) as satis_personeli,
	seferler.kod as sefer_kodu,
	araclar.plaka as plaka,
	kalkis.ad as kalkis_sehir,
	varis.ad as varis_sehir,
	biletler.tc as tc,
	biletler.ad as ad,
	biletler.soyad as soyad,
	case when biletler.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	biletler.dogum_tarih as dogum_tarih,
	biletler.telefon as telefon,
	biletler.email as email,
	biletler.koltuk_no as koltuk_no,
	seferler.kalkis_tarih as kalkis_tarih,
	seferler.varis_tarih as varis_tarih,
	duraklar.tutar as tutar,
	case when biletler.satismi_rezervasyonmu=1 then 'SATIŞ' else 'REZERVASYON' end as satismi_rezervasyonmu,
	satis_tipleri.ad as satis_tip,
	biletler.kesim_tarih as kesim_tarih
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and
	biletler.satismi_rezervasyonmu=1 and
	biletler.ad like @aranacak_deger
	order by biletler.kesim_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[SatisTipAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SatisTipAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from satis_tipleri where ad like @aranacak_deger and silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SatisTipEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SatisTipEkle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into satis_tipleri(ad) values(@ad)
END
GO
/****** Object:  StoredProcedure [dbo].[SatisTipGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SatisTipGuncelle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update satis_tipleri set ad=@ad where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SatisTipKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SatisTipKontrol] 
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from satis_tipleri where ad=@ad and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[SatisTipleriCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SatisTipleriCombobox]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from satis_tipleri where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SatisTipListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SatisTipListele] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from satis_tipleri where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SatisTipSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SatisTipSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update satis_tipleri set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SeferAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SeferAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	seferler.kod as sefer_kodu,
	kalkis.ad as kalkis_durak,
	varis.ad as varis_durak,
	seferler.kalkis_peron as kalkis_peron,
	(sofor.ad + ' ' + sofor.soyad) as sofor,
	(muavin.ad + ' ' + muavin.soyad) as muavin,
	(FORMAT(seferler.kalkis_tarih,'HH:mm dd.MM.yyyy'))as kalkis_tarih,
	(FORMAT(seferler.varis_tarih,'HH:mm dd.MM.yyyy'))as varis_tarih,
	(CAST(datediff(hour,seferler.kalkis_tarih,seferler.varis_tarih) AS nvarchar(20)) + ' SAAT') as tahmini_varis_suresi,
	case when arac_ici_ikram=1 then 'MEVCUT' else 'BULUNMUYOR' end as arac_ici_ikram,
	case when wifi=1 then 'MEVCUT' else 'BULUNMUYOR' end as wifi,
	araclar.plaka,
	seferler.olusturma_tarih as olusturma_tarih,
	seferler.guzergahlar_id,
	seferler.personeller_id,
	seferler.sofor_id,
	seferler.muavin_id,
	seferler.araclar_id,
	seferler.id
	from seferler
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join sehirler as kalkis on guzergahlar.baslangic_durak_id=kalkis.id
	inner join sehirler as varis on guzergahlar.bitis_durak_id=varis.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join araclar on seferler.araclar_id=araclar.id
	where seferler.silinme_durum=1 and seferler.kod like @aranacak_deger order by seferler.kalkis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[SeferAraRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SeferAraRegional] 
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(10),
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	seferler.kod as sefer_kodu,
	kalkis.ad as kalkis_durak,
	varis.ad as varis_durak,
	seferler.kalkis_peron as kalkis_peron,
	(sofor.ad + ' ' + sofor.soyad) as sofor,
	(muavin.ad + ' ' + muavin.soyad) as muavin,
	(FORMAT(seferler.kalkis_tarih,'HH:mm dd.MM.yyyy'))as kalkis_tarih,
	(FORMAT(seferler.varis_tarih,'HH:mm dd.MM.yyyy'))as varis_tarih,
	(CAST(datediff(hour,seferler.kalkis_tarih,seferler.varis_tarih) AS nvarchar(20)) + ' SAAT') as tahmini_varis_suresi,
	case when arac_ici_ikram=1 then 'MEVCUT' else 'BULUNMUYOR' end as arac_ici_ikram,
	case when wifi=1 then 'MEVCUT' else 'BULUNMUYOR' end as wifi,
	araclar.plaka,
	seferler.olusturma_tarih as olusturma_tarih,
	seferler.guzergahlar_id,
	seferler.personeller_id,
	seferler.sofor_id,
	seferler.muavin_id,
	seferler.araclar_id,
	seferler.id
	from seferler
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join sehirler as kalkis on guzergahlar.baslangic_durak_id=kalkis.id
	inner join sehirler as varis on guzergahlar.bitis_durak_id=varis.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join araclar on seferler.araclar_id=araclar.id
	where guzergahlar.subeler_id=@subeler_id and seferler.silinme_durum=1 and seferler.kod like @aranacak_deger order by seferler.kalkis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[SeferEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SeferEkle]
	-- Add the parameters for the stored procedure here
	@kod nvarchar(10),
	@guzergahlar_id int,
	@kalkis_peron nvarchar(5),
	@personeller_id int,
	@sofor_id int,
	@muavin_id int,
	@kalkis_tarih datetime,
	@varis_tarih datetime,
	@arac_ici_ikram bit,
	@wifi bit,
	@araclar_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into
	seferler(kod,guzergahlar_id,kalkis_peron,personeller_id,sofor_id,muavin_id,kalkis_tarih,varis_tarih,arac_ici_ikram,wifi,araclar_id)
	values(@kod,@guzergahlar_id,@kalkis_peron,@personeller_id,@sofor_id,@muavin_id,@kalkis_tarih,@varis_tarih,@arac_ici_ikram,@wifi,@araclar_id)
END
GO
/****** Object:  StoredProcedure [dbo].[SeferGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SeferGuncelle]
	-- Add the parameters for the stored procedure here
	@kod nvarchar(20),
	@guzergahlar_id int,
	@kalkis_peron nvarchar(5),
	@personeller_id int,
	@sofor_id int,
	@muavin_id int,
	@kalkis_tarih datetime,
	@varis_tarih datetime,
	@arac_ici_ikram bit,
	@wifi bit,
	@araclar_id int,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update seferler set
	kod=@kod,
	kalkis_peron=@kalkis_peron,
	personeller_id=@personeller_id,
	sofor_id=@sofor_id,
	muavin_id=@muavin_id,
	kalkis_tarih=@kalkis_tarih,
	varis_tarih=@varis_tarih,
	arac_ici_ikram=@arac_ici_ikram,
	wifi=@wifi,
	araclar_id=@araclar_id
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SeferKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SeferKontrol]
	-- Add the parameters for the stored procedure here
	@kod nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from seferler where kod=@kod and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[SeferListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SeferListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	seferler.kod as sefer_kodu,
	kalkis.ad as kalkis_durak,
	varis.ad as varis_durak,
	seferler.kalkis_peron as kalkis_peron,
	(sofor.ad + ' ' + sofor.soyad) as sofor,
	(muavin.ad + ' ' + muavin.soyad) as muavin,
	(FORMAT(seferler.kalkis_tarih,'HH:mm dd.MM.yyyy'))as kalkis_tarih,
	(FORMAT(seferler.varis_tarih,'HH:mm dd.MM.yyyy'))as varis_tarih,
	(CAST(datediff(hour,seferler.kalkis_tarih,seferler.varis_tarih) AS nvarchar(20)) + ' SAAT') as tahmini_varis_suresi,
	case when arac_ici_ikram=1 then 'MEVCUT' else 'BULUNMUYOR' end as arac_ici_ikram,
	case when wifi=1 then 'MEVCUT' else 'BULUNMUYOR' end as wifi,
	araclar.plaka,
	seferler.olusturma_tarih as olusturma_tarih,
	seferler.guzergahlar_id,
	seferler.personeller_id,
	seferler.sofor_id,
	seferler.muavin_id,
	seferler.araclar_id,
	seferler.id
	from seferler
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join sehirler as kalkis on guzergahlar.baslangic_durak_id=kalkis.id
	inner join sehirler as varis on guzergahlar.bitis_durak_id=varis.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join araclar on seferler.araclar_id=araclar.id
	where seferler.silinme_durum=1 order by seferler.kalkis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[SeferListeleRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SeferListeleRegional] 
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	seferler.kod as sefer_kodu,
	kalkis.ad as kalkis_durak,
	varis.ad as varis_durak,
	seferler.kalkis_peron as kalkis_peron,
	(sofor.ad + ' ' + sofor.soyad) as sofor,
	(muavin.ad + ' ' + muavin.soyad) as muavin,
	(FORMAT(seferler.kalkis_tarih,'HH:mm dd.MM.yyyy'))as kalkis_tarih,
	(FORMAT(seferler.varis_tarih,'HH:mm dd.MM.yyyy'))as varis_tarih,
	(CAST(datediff(hour,seferler.kalkis_tarih,seferler.varis_tarih) AS nvarchar(20)) + ' SAAT') as tahmini_varis_suresi,
	case when arac_ici_ikram=1 then 'MEVCUT' else 'BULUNMUYOR' end as arac_ici_ikram,
	case when wifi=1 then 'MEVCUT' else 'BULUNMUYOR' end as wifi,
	araclar.plaka,
	seferler.olusturma_tarih as olusturma_tarih,
	seferler.guzergahlar_id,
	seferler.personeller_id,
	seferler.sofor_id,
	seferler.muavin_id,
	seferler.araclar_id,
	seferler.id
	from seferler
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join sehirler as kalkis on guzergahlar.baslangic_durak_id=kalkis.id
	inner join sehirler as varis on guzergahlar.bitis_durak_id=varis.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join araclar on seferler.araclar_id=araclar.id
	where guzergahlar.subeler_id=@subeler_id and seferler.silinme_durum=1 order by seferler.kalkis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[SeferSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SeferSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update seferler set
	silinme_durum=0
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SehirAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SehirAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from sehirler where ad like @aranacak_deger and silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SehirEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SehirEkle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into sehirler(ad) values(@ad)
END
GO
/****** Object:  StoredProcedure [dbo].[SehirGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SehirGuncelle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update sehirler set ad=@ad where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SehirKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SehirKontrol]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from sehirler where ad=@ad and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[SehirlerCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SehirlerCombobox] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from sehirler where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SehirListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SehirListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from sehirler where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SehirSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SehirSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update sehirler set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SoforCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SoforCombobox]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select personeller.id as id,(personeller.ad + ' ' + personeller.soyad) as adsoyad from personeller
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.silinme_durum=1 and personel_tipleri.ad='şoför' order by adsoyad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SoforComboboxRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SoforComboboxRegional] 
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select personeller.id as id,(personeller.ad + ' ' + personeller.soyad) as adsoyad from personeller
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id
	where personeller.subeler_id=@subeler_id and personeller.silinme_durum=1 and personel_tipleri.ad='şoför' order by adsoyad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SonZiyaretciCikis]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SonZiyaretciCikis]
	-- Add the parameters for the stored procedure here
	@cikis_tarih datetime,
	@personeller_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update personel_giris_cikis set cikis_tarih=@cikis_tarih where personeller_id=@personeller_id and cikis_tarih is null
END
GO
/****** Object:  StoredProcedure [dbo].[SonZiyaretciGiris]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SonZiyaretciGiris]
	-- Add the parameters for the stored procedure here
	@personeller_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into personel_giris_cikis(personeller_id) values(@personeller_id)
END
GO
/****** Object:  StoredProcedure [dbo].[SonZiyaretciListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SonZiyaretciListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select
	(personeller.ad + ' ' + personeller.soyad) as adsoyad,
	case when personeller.cinsiyet=1 then 'ERKEK' else 'KADIN' end as cinsiyet,
	personeller.email as email,
	personeller.telefon as telefon,
	case when personeller.yetki_durum=0 then 'ADMİN' when personeller.yetki_durum=1 then 'MÜDÜR' else 'PERSONEL' end as yetki_durum,
	personel_tipleri.ad as unvan,
	subeler.ad as sube,
	personel_giris_cikis.giris_zamani as giris_tarih,
	personel_giris_cikis.cikis_tarih as cikis_tarih
	from personel_giris_cikis
	inner join personeller on personel_giris_cikis.personeller_id=personeller.id
	inner join subeler on personeller.subeler_id=subeler.id
	inner join personel_tipleri on personeller.personel_tipleri_id=personel_tipleri.id 
	where cikis_tarih is not null
	order by personel_giris_cikis.giris_zamani desc,personel_giris_cikis.cikis_tarih desc
END
GO
/****** Object:  StoredProcedure [dbo].[SubeAra]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubeAra]
	-- Add the parameters for the stored procedure here
	@aranacak_deger nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select subeler.id as id,sehirler.ad as bulundugu_sehir,subeler.ad as sube_ad,subeler.acilis_tarih as sube_acilis_tarih,subeler.sehirler_id as sehirler_id from subeler inner join sehirler on subeler.sehirler_id=sehirler.id where subeler.silinme_durum=1 and subeler.ad like @aranacak_deger order by subeler.ad,subeler.acilis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[SubeEkle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubeEkle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@sehirler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into subeler(ad,sehirler_id) values(@ad,@sehirler_id)
END
GO
/****** Object:  StoredProcedure [dbo].[SubeGuncelle]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubeGuncelle]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@sehirler_id int,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update subeler set ad=@ad,sehirler_id=@sehirler_id where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SubeKontrol]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubeKontrol]
	-- Add the parameters for the stored procedure here
	@ad nvarchar(50),
	@sehirler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from subeler where ad=@ad and sehirler_id=@sehirler_id and silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[SubelerCombobox]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubelerCombobox]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from subeler where silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SubelerComboboxBolgeMudur]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubelerComboboxBolgeMudur]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id,ad from subeler where id=@subeler_id and silinme_durum=1 order by ad asc
END
GO
/****** Object:  StoredProcedure [dbo].[SubeListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubeListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select subeler.id as id,sehirler.ad as bulundugu_sehir,subeler.ad as sube_ad,subeler.acilis_tarih as sube_acilis_tarih,subeler.sehirler_id as sehirler_id from subeler inner join sehirler on subeler.sehirler_id=sehirler.id where subeler.silinme_durum=1 order by subeler.ad,subeler.acilis_tarih asc
END
GO
/****** Object:  StoredProcedure [dbo].[SubeSayisi]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubeSayisi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as sube_sayisi from subeler where silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[SubeSil]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubeSil]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update subeler set silinme_durum=0 where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamKazanc]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamKazanc]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @kazanc_tutar decimal(15,2),@masraf_tutar decimal(15,2),@sonuc decimal(15,2)
	select 
	@kazanc_tutar=sum(duraklar.tutar - duraklar.ham_fiyat)
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1
	select @masraf_tutar=sum(tutar) from masraflar where silinme_durum=1 
	if	(@kazanc_tutar IS NULL) begin
		set @kazanc_tutar=0
	end 
	else begin
		set @kazanc_tutar=@kazanc_tutar
	end
	if	(@masraf_tutar IS NULL) begin
		set @masraf_tutar=0
	end 
	else begin
		set @masraf_tutar=@masraf_tutar
	end
	set @sonuc=@kazanc_tutar-@masraf_tutar
	select @sonuc as toplam_kazanc
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamKazancRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamKazancRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @kazanc_tutar decimal(15,2),@masraf_tutar decimal(15,2),@sonuc decimal(15,2)
	select 
	@kazanc_tutar=sum(duraklar.tutar - duraklar.ham_fiyat)
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller on biletler.personeller_id=personeller.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1 and personeller.subeler_id=@subeler_id
	select @masraf_tutar=sum(tutar) from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and personeller.subeler_id=@subeler_id
	if	(@kazanc_tutar IS NULL) begin
		set @kazanc_tutar=0
	end 
	else begin
		set @kazanc_tutar=@kazanc_tutar
	end
	if	(@masraf_tutar IS NULL) begin
		set @masraf_tutar=0
	end 
	else begin
		set @masraf_tutar=@masraf_tutar
	end
	set @sonuc=@kazanc_tutar-@masraf_tutar
	select @sonuc as toplam_kazanc
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamMasrafTutari]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamMasrafTutari]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as toplam_masraf from masraflar where silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamMasrafTutariEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamMasrafTutariEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as toplam_masraf from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 
	and personeller.subeler_id=@subeler_id and personeller.id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamMasrafTutariRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamMasrafTutariRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as toplam_masraf from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 
	and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamSatilanBilet]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamSatilanBilet]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as toplam_satilan_bilet from biletler where silinme_durum=1
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamSatilanBiletEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamSatilanBiletEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as toplam_satilan_bilet  from biletler 
	inner join personeller on biletler.personeller_id=personeller.id
	where biletler.silinme_durum=1 and personeller.subeler_id=@subeler_id
	and biletler.personeller_id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamSatilanBiletRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamSatilanBiletRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) toplam_satilan_bilet from biletler 
	inner join personeller on biletler.personeller_id=personeller.id
	where biletler.silinme_durum=1 and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamSeferSayisi]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamSeferSayisi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as toplam_sefer_sayisi from seferler where silinme_durum=1 
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamSeferSayisiEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamSeferSayisiEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as toplam_sefer_sayisi from seferler where silinme_durum=1
	and seferler.personeller_id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamSeferSayisiRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamSeferSayisiRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as toplam_sefer_sayisi from seferler 
	inner join personeller on seferler.personeller_id=personeller.id
	where seferler.silinme_durum=1 and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[ToplamZiyaretciListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToplamZiyaretciListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as toplam_ziyaretci from personel_giris_cikis where cikis_tarih is not null
END
GO
/****** Object:  StoredProcedure [dbo].[YillikKazanc]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikKazanc]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @kazanc_tutar decimal(15,2),@masraf_tutar decimal(15,2),@sonuc decimal(15,2)
	select 
	@kazanc_tutar=sum(duraklar.tutar - duraklar.ham_fiyat)
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller as satispersoneli on biletler.personeller_id=satispersoneli.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1
	and DATEPART(year,biletler.kesim_tarih)=(DATEPART(year,getdate()))
	select @masraf_tutar=sum(tutar) from masraflar where silinme_durum=1 and DATEPART(year,masraf_tarih)=(DATEPART(year,getdate()))
	if	(@kazanc_tutar IS NULL) begin
		set @kazanc_tutar=0
	end 
	else begin
		set @kazanc_tutar=@kazanc_tutar
	end
	if	(@masraf_tutar IS NULL) begin
		set @masraf_tutar=0
	end 
	else begin
		set @masraf_tutar=@masraf_tutar
	end
	set @sonuc=@kazanc_tutar-@masraf_tutar
	select @sonuc as yillik_kazanc
END
GO
/****** Object:  StoredProcedure [dbo].[YillikKazancRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikKazancRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @kazanc_tutar decimal(15,2),@masraf_tutar decimal(15,2),@sonuc decimal(15,2)
	select 
	@kazanc_tutar=sum(duraklar.tutar - duraklar.ham_fiyat)
	from biletler
	inner join seferler on biletler.seferler_id=seferler.id
	inner join guzergahlar on seferler.guzergahlar_id=guzergahlar.id
	inner join duraklar on duraklar.guzergahlar_id=guzergahlar.id
	inner join personeller on biletler.personeller_id=personeller.id
	inner join personeller as sofor on seferler.sofor_id=sofor.id
	inner join personeller as muavin on seferler.muavin_id=muavin.id
	inner join sehirler as kalkis on biletler.kalkis_sehir_id=kalkis.id
	inner join sehirler as varis on biletler.varis_sehir_id=varis.id
	inner join satis_tipleri on biletler.satis_tipleri_id=satis_tipleri.id
	inner join araclar on seferler.araclar_id=araclar.id
	where
	biletler.kalkis_sehir_id=duraklar.kalkis_sehir_id and 
	biletler.varis_sehir_id=duraklar.varis_sehir_id and
	biletler.silinme_durum=1 and
	seferler.silinme_durum=1 and 
	guzergahlar.silinme_durum=1 and 
	duraklar.silinme_durum=1 and 
	kalkis.silinme_durum=1 and
	varis.silinme_durum=1 and
	araclar.silinme_durum=1
	and DATEPART(year,biletler.kesim_tarih)=(DATEPART(year,getdate())) and personeller.subeler_id=@subeler_id
	select @masraf_tutar=sum(tutar) from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(year,masraf_tarih)=(DATEPART(year,getdate())) and personeller.subeler_id=@subeler_id
	if	(@kazanc_tutar IS NULL) begin
		set @kazanc_tutar=0
	end 
	else begin
		set @kazanc_tutar=@kazanc_tutar
	end
	if	(@masraf_tutar IS NULL) begin
		set @masraf_tutar=0
	end 
	else begin
		set @masraf_tutar=@masraf_tutar
	end
	set @sonuc=@kazanc_tutar-@masraf_tutar
	select @sonuc as yillik_kazanc
END
GO
/****** Object:  StoredProcedure [dbo].[YillikMasrafTutari]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikMasrafTutari]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as yillik_masraf from masraflar where silinme_durum=1 and DATEPART(year,masraf_tarih)=(DATEPART(year,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[YillikMasrafTutariEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikMasrafTutariEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as yillik_masraf from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(year,masraf_tarih)=(DATEPART(year,getdate())) 
	and personeller.subeler_id=@subeler_id and personeller.id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[YillikMasrafTutariRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikMasrafTutariRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select sum(tutar) as yillik_masraf from masraflar
	inner join personeller on masraflar.personeller_id=personeller.id
	where masraflar.silinme_durum=1 and DATEPART(year,masraf_tarih)=(DATEPART(year,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[YillikSatilanBilet]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikSatilanBilet]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as yillik_satilan_bilet from biletler where silinme_durum=1 and DATEPART(year,kesim_tarih)=(DATEPART(year,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[YillikSatilanBiletEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikSatilanBiletEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as yillik_satilan_bilet  from biletler 
	inner join personeller on biletler.personeller_id=personeller.id
	where biletler.silinme_durum=1 and DATEPART(year,kesim_tarih)=(DATEPART(year,getdate())) and personeller.subeler_id=@subeler_id
	and biletler.personeller_id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[YillikSatilanBiletRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikSatilanBiletRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as yillik_satilan_bilet from biletler 
	inner join personeller on biletler.personeller_id=personeller.id
	where biletler.silinme_durum=1 and DATEPART(year,kesim_tarih)=(DATEPART(year,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[YillikSeferSayisi]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikSeferSayisi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as yillik_sefer_sayisi from seferler where silinme_durum=1 and DATEPART(year,kalkis_tarih)=(DATEPART(year,getdate()))
END
GO
/****** Object:  StoredProcedure [dbo].[YillikSeferSayisiEmployee]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikSeferSayisiEmployee]
	-- Add the parameters for the stored procedure here
	@subeler_id int,
	@personel_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as yillik_sefer_sayisi from seferler where silinme_durum=1 and DATEPART(year,kalkis_tarih)=(DATEPART(year,getdate()))
	and seferler.personeller_id=@personel_id
END
GO
/****** Object:  StoredProcedure [dbo].[YillikSeferSayisiRegional]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikSeferSayisiRegional]
	-- Add the parameters for the stored procedure here
	@subeler_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as yillik_sefer_sayisi from seferler 
	inner join personeller on seferler.personeller_id=personeller.id
	where seferler.silinme_durum=1 and DATEPART(year,kalkis_tarih)=(DATEPART(year,getdate())) and personeller.subeler_id=@subeler_id
END
GO
/****** Object:  StoredProcedure [dbo].[YillikZiyaretciListele]    Script Date: 8.01.2023 13:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[YillikZiyaretciListele]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(*) as yillik_ziyaretci from personel_giris_cikis where 
	DATEPART(year,giris_zamani)=(DATEPART(year,getdate())) and 
	DATEPART(year,cikis_tarih)=(DATEPART(year,getdate()))
END
GO
