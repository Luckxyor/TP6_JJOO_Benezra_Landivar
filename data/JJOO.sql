USE [JJOO]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 21/8/2024 00:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[IdDeporte] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Foto] [text] NOT NULL,
 CONSTRAINT [PK_Deportes] PRIMARY KEY CLUSTERED 
(
	[IdDeporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 21/8/2024 00:32:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[IdDeportista] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [text] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdDeporte] [int] NOT NULL,
 CONSTRAINT [PK_Deportistas] PRIMARY KEY CLUSTERED 
(
	[IdDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 21/8/2024 00:32:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Bandera] [text] NOT NULL,
	[FechaFundacion] [date] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deportes] ON 

INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (3, N'Badminton', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQO58HHiwWXcoYdDmol40wev_XPzb6n1-_Zg&s')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (10, N'Tenis', N'https://tennis-hack.com/wp-content/uploads/mejores-zapatillas-tenis.jpg')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (11, N'Futbol', N'https://static.nationalgeographicla.com/files/styles/image_3200/public/brasil-chile1mcamgoabr02072023-5_1.jpg?w=1600&h=1067&p=left')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (12, N'Basket', N'https://d26itsb5vlqdeq.cloudfront.net//image/B6EA08E3-C012-FC1D-76E16306F40B7528')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (13, N'Hockey sobre pasto', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/r3ivyidaipxicsw4yrnt')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (14, N'Clavados', N'https://live.staticflickr.com/65535/51656237839_e140e0d87d_b.jpg')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (15, N'Voley', N'https://i0.wp.com/deporteargentinoplus.com.ar/wp-content/uploads/2021/07/bpsdkyxksq1ciifkiiog-scaled.jpg?fit=2560%2C1706&ssl=1')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (16, N'BMX freestyle', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_lg_2x/f_auto/primary/sdmygikn6bugm9byg6jo')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (17, N'Atletismo', N'https://concepto.de/wp-content/uploads/2024/06/atletismo-carreras.jpg')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (18, N'Waterpolo', N'https://drignaciodallo.com.ar/wp-content/uploads/lesiones-waterpolo.jpg')
SET IDENTITY_INSERT [dbo].[Deportes] OFF
GO
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (6, N'Alcaraz', N'Carlos', CAST(N'2003-05-05' AS Date), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd8pB1hRFqnQFyDdvsxfrdFBmq-vxjH2szgA&s', 2, 10)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (7, N'Torres Gil', N'Jose', CAST(N'1995-05-28' AS Date), N'https://www.ellitoral.com/images/2024/07/31/K224d2Dav_1300x655__2.jpg', 1, 16)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (8, N'Jokic', N'Nikola', CAST(N'1995-02-19' AS Date), N'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQg4HXbOkYcc4baNZpiYN1sCRsX4kW2k5F1GYy9bnAwDW8J96J1qhMtfuEOwEBCZBSXNBPFOSzARfxwIAI', 5, 12)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (9, N'Matsuyama', N'Nami', CAST(N'1998-06-28' AS Date), N'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcT13W2AKlLAAmjWtbvzNVDl6d8NUlaEImGDG4DbJWNlMLRDVPfRcuv0lAstyG7jKWgR6iLRA-QwBddq-q4', 4, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (10, N'Mateta', N'Jean-Philipe', CAST(N'1997-06-28' AS Date), N'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQfHsjAvxlglS6rvl6NCp8y0lfvMTU2Hekr4nkV7TdBqYVigu3L3re0hWB8dWD-kuic62TpYQom722cN3I', 3, 11)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (11, N'Nunnik', N'Laura', CAST(N'1995-01-26' AS Date), N'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcS2-xxPPis9rBEZCC6S18_PdWXgJfM_JZFHpgpAgfsEMpDp7SQ2uNo91uDQX_nWPg3Zk8lpVRp6hgyomgk', 6, 13)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (12, N'Cao', N'Yuan', CAST(N'1995-02-07' AS Date), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrwbzb96EaZDzHHurWXHMbXl-IGt01OndEnA&s', 7, 14)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (16, N'Sylla', N'Miriam', CAST(N'1995-01-08' AS Date), N'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSCwTnjg_HhAk1VjUCw8fD6DVuMdPR0OuqgDmXNn6oflH3uRXdyx8ES0omJl7d4OWO8zCn7OJuet2OXG5s', 8, 15)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (17, N'Assefa', N'Tigst', CAST(N'1996-12-03' AS Date), N'https://static.dw.com/image/66913288_1006.jpg', 9, 17)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (19, N'Miloš', N'Cuk', CAST(N'1990-12-21' AS Date), N'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcTumFohGgMw6tyKtzmXXB667PLpwLZywl2Uy4Yvg5phlh8JD_ElF7bK4_p6J6ri0DZYNM1lZQlZn6mbUTA', 10, 18)
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (1, N'Argentina', N'https://c.files.bbci.co.uk/D348/production/_95588045_178392703.jpg', CAST(N'1923-12-31' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (2, N'España', N'https://upload.wikimedia.org/wikipedia/commons/8/89/Bandera_de_Espa%C3%B1a.svg', CAST(N'2012-11-23' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (3, N'Francia', N'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Flag_of_France_%281794%E2%80%931815%2C_1830%E2%80%931974%29.svg/200px-Flag_of_France_%281794%E2%80%931815%2C_1830%E2%80%931974%29.svg.png', CAST(N'1894-11-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (4, N'Japon', N'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/2560px-Flag_of_Japan.svg.png', CAST(N'1911-12-12' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'Serbia', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvDrUpr64gHhT3Sgc6pTzU1_kztE0rmuwVNg&s', CAST(N'1912-03-03' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (6, N'Holanda', N'https://img.freepik.com/vector-gratis/ilustracion-bandera-holanda_53876-27103.jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1723680000&semt=ais_hybrid', CAST(N'1912-04-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (7, N'China', N'https://www.chinapass.com.ar/assets/img/notas/cn.png', CAST(N'1952-06-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (8, N'Estados Unidos', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEPNdobQdW2ZOLLGNNVmpJ6okqbdv4QnHlRw&s', CAST(N'1940-07-08' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (9, N'Etiopia', N'https://upload.wikimedia.org/wikipedia/commons/7/71/Flag_of_Ethiopia.svg', CAST(N'1948-09-12' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (10, N'Croacia', N'https://upload.wikimedia.org/wikipedia/commons/1/1b/Flag_of_Croatia.svg', CAST(N'1992-07-09' AS Date))
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Deportes] FOREIGN KEY([IdDeporte])
REFERENCES [dbo].[Deportes] ([IdDeporte])
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK_Deportistas_Deportes]
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([IdPais])
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK_Deportistas_Paises]
GO
