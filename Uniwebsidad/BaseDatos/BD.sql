USE [master]
GO
/****** Object:  Database [ProyFinal]    Script Date: 1/05/2021 16:49:14 ******/
CREATE DATABASE [ProyFinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProyFinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProyFinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProyFinal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyFinal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyFinal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyFinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyFinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyFinal] SET  MULTI_USER 
GO
ALTER DATABASE [ProyFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyFinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyFinal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProyFinal] SET QUERY_STORE = OFF
GO
USE [ProyFinal]
GO
/****** Object:  Table [dbo].[Amistad]    Script Date: 1/05/2021 16:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amistad](
	[Id] [nvarchar](50) NOT NULL,
	[IdUsuario1] [int] NOT NULL,
	[IdUsuario2] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK__Amistad__0E0A246A6F5E5578] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 1/05/2021 16:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Categori__A3C02A10E40E22F9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 1/05/2021 16:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nombre] [varchar](40) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdCreador] [int] NOT NULL,
 CONSTRAINT [PK__Curso__085F27D69A59F5FC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleUsuarioCurso]    Script Date: 1/05/2021 16:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleUsuarioCurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdCurso] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK__DetalleU__E43646A52FF8BC74] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mensaje]    Script Date: 1/05/2021 16:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensaje](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAmistad] [nvarchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[IdUsuarioReceptor] [int] NOT NULL,
 CONSTRAINT [PK__Mensaje__E4D2A47FF283FFFE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 1/05/2021 16:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Nombres] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__Usuario__5B65BF97C4C840D8] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 1/05/2021 16:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Link] [nvarchar](700) NOT NULL,
	[IdCurso] [int] NOT NULL,
 CONSTRAINT [PK__Video__54BA87FA4E0B51E3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (1, N'Ciencia')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (2, N'Matematica')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (3, N'Arte')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (4, N'Computacion')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([Id], [IdCategoria], [Nombre], [FechaCreacion], [IdCreador]) VALUES (1, 1, N'Fisica', CAST(N'2019-12-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Curso] ([Id], [IdCategoria], [Nombre], [FechaCreacion], [IdCreador]) VALUES (2, 2, N'Geometria', CAST(N'2018-08-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Curso] ([Id], [IdCategoria], [Nombre], [FechaCreacion], [IdCreador]) VALUES (3, 3, N'Escultura', CAST(N'2020-06-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Curso] ([Id], [IdCategoria], [Nombre], [FechaCreacion], [IdCreador]) VALUES (4, 4, N'Programacion', CAST(N'2018-05-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Curso] ([Id], [IdCategoria], [Nombre], [FechaCreacion], [IdCreador]) VALUES (5, 1, N'Quimica', CAST(N'2018-05-26T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Curso] ([Id], [IdCategoria], [Nombre], [FechaCreacion], [IdCreador]) VALUES (12, 1, N'Anatomia', CAST(N'2021-04-27T18:01:02.120' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleUsuarioCurso] ON 

INSERT [dbo].[DetalleUsuarioCurso] ([Id], [IdUsuario], [IdCurso], [Estado]) VALUES (3, 1, 2, 1)
INSERT [dbo].[DetalleUsuarioCurso] ([Id], [IdUsuario], [IdCurso], [Estado]) VALUES (6, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[DetalleUsuarioCurso] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Username], [Password], [Nombres]) VALUES (1, N'admin', N'admin', N'admin')
INSERT [dbo].[Usuario] ([Id], [Username], [Password], [Nombres]) VALUES (2, N'admin2', N'admin2', N'admin2')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([Id], [Link], [IdCurso]) VALUES (10, N'qJOdLbMi5hU', 1)
INSERT [dbo].[Video] ([Id], [Link], [IdCurso]) VALUES (12, N'bw7L5-Ti6nU', 2)
INSERT [dbo].[Video] ([Id], [Link], [IdCurso]) VALUES (13, N'T80sLnxdmbE', 3)
INSERT [dbo].[Video] ([Id], [Link], [IdCurso]) VALUES (14, N'zn2lQ4UqvuQ', 4)
INSERT [dbo].[Video] ([Id], [Link], [IdCurso]) VALUES (15, N'UqPl_DENU94', 12)
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
ALTER TABLE [dbo].[Amistad]  WITH CHECK ADD  CONSTRAINT [FK_Amistad_Usuario] FOREIGN KEY([IdUsuario1])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Amistad] CHECK CONSTRAINT [FK_Amistad_Usuario]
GO
ALTER TABLE [dbo].[Amistad]  WITH CHECK ADD  CONSTRAINT [FK_Amistad_Usuario1] FOREIGN KEY([IdUsuario2])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Amistad] CHECK CONSTRAINT [FK_Amistad_Usuario1]
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_Categoria]
GO
ALTER TABLE [dbo].[DetalleUsuarioCurso]  WITH CHECK ADD  CONSTRAINT [FK_DetalleUsuarioCurso_Curso] FOREIGN KEY([IdCurso])
REFERENCES [dbo].[Curso] ([Id])
GO
ALTER TABLE [dbo].[DetalleUsuarioCurso] CHECK CONSTRAINT [FK_DetalleUsuarioCurso_Curso]
GO
ALTER TABLE [dbo].[DetalleUsuarioCurso]  WITH CHECK ADD  CONSTRAINT [FK_DetalleUsuarioCurso_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DetalleUsuarioCurso] CHECK CONSTRAINT [FK_DetalleUsuarioCurso_Usuario]
GO
ALTER TABLE [dbo].[Mensaje]  WITH CHECK ADD  CONSTRAINT [FK_Mensaje_Amistad] FOREIGN KEY([IdAmistad])
REFERENCES [dbo].[Amistad] ([Id])
GO
ALTER TABLE [dbo].[Mensaje] CHECK CONSTRAINT [FK_Mensaje_Amistad]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_Curso] FOREIGN KEY([IdCurso])
REFERENCES [dbo].[Curso] ([Id])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_Curso]
GO
USE [master]
GO
ALTER DATABASE [ProyFinal] SET  READ_WRITE 
GO
