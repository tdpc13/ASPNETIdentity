USE [master]
GO
/****** Object:  Database [AspNetIdentityDB]    Script Date: 08/06/2022 18:32:23 ******/
CREATE DATABASE [AspNetIdentityDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AspNetIdentityDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AspNetIdentityDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AspNetIdentityDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AspNetIdentityDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AspNetIdentityDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AspNetIdentityDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AspNetIdentityDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AspNetIdentityDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AspNetIdentityDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AspNetIdentityDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AspNetIdentityDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AspNetIdentityDB] SET  MULTI_USER 
GO
ALTER DATABASE [AspNetIdentityDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AspNetIdentityDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AspNetIdentityDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AspNetIdentityDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AspNetIdentityDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AspNetIdentityDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AspNetIdentityDB] SET QUERY_STORE = OFF
GO
USE [AspNetIdentityDB]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giornate]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giornate](
	[Giorno] [date] NOT NULL,
	[Posti] [int] NOT NULL,
 CONSTRAINT [PK_Giornate] PRIMARY KEY CLUSTERED 
(
	[Giorno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prenotazioni]    Script Date: 08/06/2022 18:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazioni](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Dal] [date] NOT NULL,
	[Al] [date] NOT NULL,
	[Persone] [int] NOT NULL,
	[Pacchetto] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Prenotazioni] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'1d31a2a2-2abf-4305-8069-0d7be67dd471', 0, N'99f70833-c2e9-4f9c-90b0-bff8ccbf31e8', N'fleg@eam.it', 0, 1, NULL, N'FLEG@EAM.IT', N'PIPPO', N'AQAAAAEAACcQAAAAEJPYbr32Wv9uXJTHVDdNYDnRmiXytBV2bgwd1q8/S18TciMhYFWT5PNTwNZVc9U3yA==', NULL, 0, N'JLSZZNCQPPWXROEQKDTNUDUNEQY3XFNY', 0, N'Pippo', N'pippo', N'pluto')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'3602a19c-1e65-4f8c-afc9-62a3543a5dcf', 0, N'6fcb8bf8-9789-4500-84e1-15d7f162661f', N'admin@admin.it', 0, 1, NULL, N'ADMIN@ADMIN.IT', N'ADMIN', N'AQAAAAEAACcQAAAAEAVta6YkglL1rJXhCFL65gHtzyQHliWoGwVX3/wflOeCbWvCYJpmz7YkcEdwlCcn3g==', NULL, 0, N'NKTYXMCE66TNETHCH6GIFAGHO32SFHWI', 0, N'admin', N'amministratore', N'amministratore')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'de13a72a-01a2-4bd7-8c62-8049cbd68dfd', 0, N'af13d4b6-fc37-422e-ad7a-7382c614c5ee', N'fleg@email.it', 0, 1, NULL, N'FLEG@EMAIL.IT', N'STEFANO', N'AQAAAAEAACcQAAAAED3st+cv5vDbwex95YDIH0r4iPWU92Qh18rBsQw6PzwKDGkDxHAnqVXo6pPtF+dBlQ==', NULL, 0, N'BT5PC3XPDIFMVZVOHWJGKK2Y4YZNL6OI', 0, N'Stefano', N'stefano', N'bo')
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-01' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-02' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-03' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-04' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-05' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-06' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-07' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-08' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-09' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-10' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-11' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-12' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-13' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-14' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-15' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-16' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-17' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-18' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-19' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-20' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-21' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-22' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-23' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-24' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-25' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-26' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-27' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-28' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-29' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-30' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-01' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-02' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-03' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-04' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-05' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-06' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-07' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-08' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-09' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-10' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-11' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-12' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-13' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-14' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-15' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-16' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-17' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-18' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-19' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-20' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-21' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-22' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-23' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-24' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-25' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-26' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-27' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-28' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-29' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-30' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-31' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-01' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-02' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-03' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-04' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-05' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-06' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-07' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-08' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-09' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-10' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-11' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-12' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-13' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-14' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-15' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-16' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-17' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-18' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-19' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-20' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-21' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-22' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-23' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-24' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-25' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-26' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-27' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-28' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-29' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-30' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-31' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-01' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-02' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-03' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-04' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-05' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-06' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-07' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-08' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-09' AS Date), 60)
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-10' AS Date), 60)
GO
SET IDENTITY_INSERT [dbo].[Prenotazioni] ON 

INSERT [dbo].[Prenotazioni] ([Id], [UserName], [Dal], [Al], [Persone], [Pacchetto]) VALUES (1, N'Pippo', CAST(N'2022-06-01' AS Date), CAST(N'2022-06-07' AS Date), 3, N'gold')
INSERT [dbo].[Prenotazioni] ([Id], [UserName], [Dal], [Al], [Persone], [Pacchetto]) VALUES (2, N'Stefano', CAST(N'2022-06-04' AS Date), CAST(N'2022-06-10' AS Date), 2, N'silver')
SET IDENTITY_INSERT [dbo].[Prenotazioni] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [AspNetIdentityDB] SET  READ_WRITE 
GO
