USE [master]
GO
/****** Object:  Database [TRPO_Db]    Script Date: 05.02.2021 16:00:58 ******/
CREATE DATABASE [TRPO_Db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TRPO_Db', FILENAME = N'C:\Users\Михаил\TRPO_Db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TRPO_Db_log', FILENAME = N'C:\Users\Михаил\TRPO_Db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TRPO_Db] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TRPO_Db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TRPO_Db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TRPO_Db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TRPO_Db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TRPO_Db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TRPO_Db] SET ARITHABORT OFF 
GO
ALTER DATABASE [TRPO_Db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TRPO_Db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TRPO_Db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TRPO_Db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TRPO_Db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TRPO_Db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TRPO_Db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TRPO_Db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TRPO_Db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TRPO_Db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TRPO_Db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TRPO_Db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TRPO_Db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TRPO_Db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TRPO_Db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TRPO_Db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TRPO_Db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TRPO_Db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TRPO_Db] SET  MULTI_USER 
GO
ALTER DATABASE [TRPO_Db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TRPO_Db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TRPO_Db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TRPO_Db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TRPO_Db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TRPO_Db] SET QUERY_STORE = OFF
GO
USE [TRPO_Db]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [TRPO_Db]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 05.02.2021 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journal]    Script Date: 05.02.2021 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Student] [int] NOT NULL,
	[Subject] [int] NOT NULL,
	[Teacher] [int] NOT NULL,
	[Mark] [char](1) NOT NULL,
	[Mark_date] [date] NULL,
 CONSTRAINT [PK_Journal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 05.02.2021 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Group] [int] NOT NULL,
	[E_mail] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 05.02.2021 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 05.02.2021 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[E_mail] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name]) VALUES (1, N'111')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (2, N'112')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (3, N'113')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (4, N'211')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (5, N'212')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (6, N'311')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (7, N'312')
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Journal] ON 

INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (1, 33, 1, 6, N'4', CAST(N'2020-09-03' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (2, 33, 2, 7, N'2', CAST(N'2020-09-04' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (3, 33, 3, 8, N'4', CAST(N'2020-09-05' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (4, 33, 4, 9, N'3', CAST(N'2020-09-06' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (5, 33, 5, 10, N'4', CAST(N'2020-09-07' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (6, 33, 1, 6, N'5', CAST(N'2020-09-08' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (7, 33, 2, 7, N'4', CAST(N'2020-09-09' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (8, 33, 3, 8, N'3', CAST(N'2020-09-10' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (9, 33, 4, 9, N'3', CAST(N'2020-09-11' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (10, 33, 5, 10, N'4', CAST(N'2020-09-12' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (11, 33, 1, 6, N'3', CAST(N'2020-09-13' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (12, 34, 2, 7, N'4', CAST(N'2020-09-14' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (13, 34, 3, 8, N'4', CAST(N'2020-09-15' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (14, 34, 4, 9, N'4', CAST(N'2020-09-16' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (15, 34, 5, 10, N'3', CAST(N'2020-09-17' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (16, 34, 1, 6, N'3', CAST(N'2020-09-18' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (17, 34, 2, 7, N'2', CAST(N'2020-09-19' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (18, 34, 3, 8, N'4', CAST(N'2020-09-20' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (19, 34, 4, 9, N'2', CAST(N'2020-09-21' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (20, 34, 5, 10, N'3', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (21, 34, 1, 6, N'5', CAST(N'2020-09-23' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (22, 34, 2, 7, N'4', CAST(N'2020-09-24' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (23, 35, 3, 8, N'4', CAST(N'2020-09-25' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (24, 35, 4, 9, N'3', CAST(N'2020-09-26' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (25, 35, 5, 10, N'5', CAST(N'2020-09-27' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (26, 35, 1, 6, N'4', CAST(N'2020-09-28' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (27, 35, 2, 7, N'3', CAST(N'2020-09-29' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (28, 35, 3, 8, N'4', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (29, 35, 4, 9, N'5', CAST(N'2020-10-01' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (30, 35, 5, 10, N'4', CAST(N'2020-10-02' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (31, 35, 1, 6, N'2', CAST(N'2020-10-03' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (32, 35, 2, 7, N'4', CAST(N'2020-10-04' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (33, 35, 3, 8, N'4', CAST(N'2020-10-05' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (34, 36, 4, 9, N'4', CAST(N'2020-10-06' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (35, 36, 5, 10, N'2', CAST(N'2020-10-07' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (36, 36, 1, 6, N'2', CAST(N'2020-10-08' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (37, 36, 2, 7, N'4', CAST(N'2020-10-09' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (38, 36, 3, 8, N'4', CAST(N'2020-10-10' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (39, 36, 4, 9, N'4', CAST(N'2020-10-11' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (40, 36, 5, 10, N'5', CAST(N'2020-10-12' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (41, 36, 1, 6, N'2', CAST(N'2020-10-13' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (42, 36, 2, 7, N'5', CAST(N'2020-10-14' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (43, 36, 3, 8, N'4', CAST(N'2020-10-15' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (44, 36, 4, 9, N'5', CAST(N'2020-10-16' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (45, 36, 5, 10, N'4', CAST(N'2020-10-17' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (46, 37, 1, 6, N'5', CAST(N'2020-10-18' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (47, 37, 2, 7, N'2', CAST(N'2020-10-19' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (48, 37, 3, 8, N'4', CAST(N'2020-10-20' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (49, 37, 4, 9, N'4', CAST(N'2020-10-21' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (50, 37, 5, 10, N'2', CAST(N'2020-10-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (51, 37, 1, 6, N'5', CAST(N'2020-10-23' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (52, 37, 2, 7, N'3', CAST(N'2020-10-24' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (53, 37, 3, 8, N'5', CAST(N'2020-10-25' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (54, 37, 4, 9, N'4', CAST(N'2020-10-26' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (55, 37, 5, 10, N'4', CAST(N'2020-10-27' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (56, 37, 1, 6, N'5', CAST(N'2020-10-28' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (57, 38, 2, 7, N'3', CAST(N'2020-10-29' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (58, 38, 3, 8, N'2', CAST(N'2020-10-30' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (59, 38, 4, 9, N'3', CAST(N'2020-10-31' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (60, 38, 5, 10, N'2', CAST(N'2020-11-01' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (61, 38, 1, 6, N'5', CAST(N'2020-11-02' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (62, 38, 2, 7, N'4', CAST(N'2020-11-03' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (63, 38, 3, 8, N'4', CAST(N'2020-11-04' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (64, 38, 4, 9, N'3', CAST(N'2020-11-05' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (65, 38, 5, 10, N'2', CAST(N'2020-11-06' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (66, 38, 1, 6, N'4', CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (67, 38, 2, 7, N'3', CAST(N'2020-11-08' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (68, 39, 3, 8, N'4', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (69, 39, 4, 9, N'3', CAST(N'2020-11-10' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (70, 39, 5, 10, N'2', CAST(N'2020-11-11' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (71, 39, 1, 6, N'4', CAST(N'2020-11-12' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (72, 39, 2, 7, N'4', CAST(N'2020-11-13' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (73, 39, 3, 8, N'2', CAST(N'2020-11-14' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (74, 39, 4, 9, N'2', CAST(N'2020-11-15' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (75, 39, 5, 10, N'3', CAST(N'2020-11-16' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (76, 39, 1, 6, N'4', CAST(N'2020-11-17' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (77, 39, 2, 7, N'5', CAST(N'2020-11-18' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (78, 39, 3, 8, N'3', CAST(N'2020-11-19' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (79, 40, 4, 9, N'3', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (80, 40, 5, 10, N'4', CAST(N'2020-11-21' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (81, 40, 1, 6, N'4', CAST(N'2020-11-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (82, 40, 2, 7, N'3', CAST(N'2020-11-23' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (83, 40, 3, 8, N'5', CAST(N'2020-11-24' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (84, 40, 4, 9, N'3', CAST(N'2020-11-25' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (85, 40, 5, 10, N'2', CAST(N'2020-11-26' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (86, 40, 1, 6, N'4', CAST(N'2020-11-27' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (87, 41, 2, 7, N'3', CAST(N'2020-11-28' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (88, 41, 3, 8, N'3', CAST(N'2020-11-29' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (89, 41, 4, 9, N'4', CAST(N'2020-11-30' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (90, 41, 5, 10, N'4', CAST(N'2020-12-01' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (91, 41, 1, 6, N'4', CAST(N'2020-12-02' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (92, 41, 2, 7, N'3', CAST(N'2020-12-03' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (93, 41, 3, 8, N'2', CAST(N'2020-12-04' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (94, 41, 4, 9, N'3', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (95, 41, 5, 10, N'5', CAST(N'2020-12-06' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (96, 41, 1, 6, N'3', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (97, 41, 2, 7, N'2', CAST(N'2020-12-08' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (98, 42, 3, 8, N'2', CAST(N'2020-12-09' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (99, 42, 4, 9, N'2', CAST(N'2020-12-10' AS Date))
GO
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (100, 42, 5, 10, N'3', CAST(N'2020-12-11' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (101, 42, 1, 6, N'3', CAST(N'2020-12-12' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (102, 42, 2, 7, N'4', CAST(N'2020-12-13' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (103, 42, 3, 8, N'5', CAST(N'2020-12-14' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (104, 42, 4, 9, N'3', CAST(N'2020-12-15' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (105, 42, 5, 10, N'4', CAST(N'2020-12-16' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (106, 42, 1, 6, N'2', CAST(N'2020-12-17' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (107, 42, 2, 7, N'2', CAST(N'2020-12-18' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (108, 42, 3, 8, N'4', CAST(N'2020-12-19' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (109, 43, 4, 9, N'4', CAST(N'2020-12-20' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (110, 43, 5, 10, N'3', CAST(N'2020-12-21' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (111, 43, 1, 6, N'2', CAST(N'2020-12-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (112, 43, 2, 7, N'3', CAST(N'2020-12-23' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (113, 43, 3, 8, N'4', CAST(N'2020-12-24' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (114, 43, 4, 9, N'5', CAST(N'2020-12-25' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (115, 43, 5, 10, N'5', CAST(N'2020-12-26' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (116, 43, 1, 6, N'4', CAST(N'2020-12-27' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (117, 43, 2, 7, N'3', CAST(N'2020-12-28' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (118, 43, 3, 8, N'2', CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (119, 43, 4, 9, N'2', CAST(N'2020-12-30' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (120, 43, 5, 10, N'2', CAST(N'2020-12-31' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (121, 44, 1, 6, N'5', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (122, 44, 2, 7, N'4', CAST(N'2021-01-02' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (123, 44, 3, 8, N'4', CAST(N'2021-01-03' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (124, 44, 4, 9, N'2', CAST(N'2021-01-04' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (125, 44, 5, 10, N'5', CAST(N'2021-01-05' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (126, 44, 1, 6, N'3', CAST(N'2021-01-06' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (127, 44, 2, 7, N'3', CAST(N'2021-01-07' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (128, 44, 3, 8, N'5', CAST(N'2021-01-08' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (129, 44, 4, 9, N'4', CAST(N'2021-01-09' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (130, 45, 5, 10, N'4', CAST(N'2021-01-10' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (131, 45, 1, 6, N'3', CAST(N'2021-01-11' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (132, 45, 2, 7, N'5', CAST(N'2021-01-12' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (133, 45, 3, 8, N'2', CAST(N'2021-01-13' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (134, 45, 4, 9, N'3', CAST(N'2021-01-14' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (135, 45, 5, 10, N'3', CAST(N'2021-01-15' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (136, 46, 1, 6, N'5', CAST(N'2021-01-16' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (137, 46, 2, 7, N'4', CAST(N'2021-01-17' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (138, 46, 3, 8, N'3', CAST(N'2021-01-18' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (139, 46, 4, 9, N'4', CAST(N'2021-01-19' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (140, 46, 5, 10, N'2', CAST(N'2021-01-20' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (141, 47, 1, 6, N'4', CAST(N'2021-01-21' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (142, 47, 2, 7, N'5', CAST(N'2021-01-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (143, 47, 3, 8, N'3', CAST(N'2021-01-23' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (144, 47, 4, 9, N'3', CAST(N'2021-01-24' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (145, 47, 5, 10, N'4', CAST(N'2021-01-25' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (146, 47, 1, 6, N'3', CAST(N'2021-01-26' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (147, 47, 2, 7, N'2', CAST(N'2021-01-27' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (148, 47, 3, 8, N'2', CAST(N'2021-01-28' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (149, 47, 4, 9, N'3', CAST(N'2021-01-29' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (150, 47, 5, 10, N'2', CAST(N'2021-01-30' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (151, 47, 1, 6, N'3', CAST(N'2021-01-31' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (152, 48, 2, 7, N'2', CAST(N'2021-02-01' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (153, 48, 3, 8, N'4', CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (154, 48, 4, 9, N'5', CAST(N'2021-02-03' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (155, 48, 5, 10, N'2', CAST(N'2021-02-04' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (156, 49, 1, 6, N'4', CAST(N'2021-02-05' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (157, 49, 2, 7, N'3', CAST(N'2021-02-06' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (158, 49, 3, 8, N'4', CAST(N'2021-02-07' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (159, 49, 4, 9, N'4', CAST(N'2021-02-08' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (160, 49, 5, 10, N'2', CAST(N'2021-02-09' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (161, 49, 1, 6, N'2', CAST(N'2021-02-10' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (162, 49, 2, 7, N'5', CAST(N'2021-02-11' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (163, 49, 3, 8, N'5', CAST(N'2021-02-12' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (164, 50, 4, 9, N'3', CAST(N'2021-02-13' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (165, 50, 5, 10, N'2', CAST(N'2021-02-14' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (166, 50, 1, 6, N'3', CAST(N'2021-02-15' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (167, 50, 2, 7, N'3', CAST(N'2021-02-16' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (168, 50, 3, 8, N'4', CAST(N'2021-02-17' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (169, 50, 4, 9, N'4', CAST(N'2021-02-18' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (170, 50, 5, 10, N'5', CAST(N'2021-02-19' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (171, 51, 1, 6, N'5', CAST(N'2021-02-20' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (172, 51, 2, 7, N'3', CAST(N'2021-02-21' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (173, 51, 3, 8, N'4', CAST(N'2021-02-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (174, 51, 4, 9, N'3', CAST(N'2021-02-23' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (175, 51, 5, 10, N'4', CAST(N'2021-02-24' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (176, 51, 1, 6, N'3', CAST(N'2021-02-25' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (177, 52, 2, 7, N'4', CAST(N'2021-02-26' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (178, 52, 3, 8, N'5', CAST(N'2021-02-27' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (179, 52, 4, 9, N'4', CAST(N'2021-02-28' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (180, 52, 5, 10, N'2', CAST(N'2021-03-01' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (181, 52, 1, 6, N'5', CAST(N'2021-03-02' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (182, 52, 2, 7, N'5', CAST(N'2021-03-03' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (183, 52, 3, 8, N'3', CAST(N'2021-03-04' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (184, 53, 4, 9, N'4', CAST(N'2021-03-05' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (185, 53, 5, 10, N'5', CAST(N'2021-03-06' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (186, 53, 1, 6, N'4', CAST(N'2021-03-07' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (187, 53, 2, 7, N'2', CAST(N'2021-03-08' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (188, 53, 3, 8, N'2', CAST(N'2021-03-09' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (189, 53, 4, 9, N'2', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (190, 53, 5, 10, N'5', CAST(N'2021-03-11' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (191, 53, 1, 6, N'2', CAST(N'2021-03-12' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (192, 53, 2, 7, N'3', CAST(N'2021-03-13' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (193, 53, 3, 8, N'4', CAST(N'2021-03-14' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (194, 53, 4, 9, N'5', CAST(N'2021-03-15' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (201, 33, 1, 6, N'4', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (202, 33, 1, 6, N'4', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (203, 33, 1, 6, N'4', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (204, 33, 1, 6, N'4', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (205, 33, 1, 6, N'4', CAST(N'2020-09-22' AS Date))
GO
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (206, 33, 1, 6, N'4', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (207, 33, 1, 6, N'4', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (208, 33, 1, 6, N'4', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (209, 42, 3, 8, N'6', NULL)
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (210, 37, 3, 8, N'5', CAST(N'2020-06-23' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (211, 53, 4, 9, N'3', CAST(N'2020-12-12' AS Date))
INSERT [dbo].[Journal] ([Id], [Student], [Subject], [Teacher], [Mark], [Mark_date]) VALUES (1002, 33, 3, 8, N'4', NULL)
SET IDENTITY_INSERT [dbo].[Journal] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (33, N'Aaron', N'st1', N'st1', 1, N'Aaron@gmail.com', N'12345')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (34, N'Abraham', N'st2', N'st2', 1, N'Abraham@gmail.com', N'123456')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (35, N'Adam', N'st3', N'st3', 1, N'Adam@mail.com', N'234567')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (36, N'Adrian', N'st4', N'st4', 2, N'Adrian@gmail.com', N'345678')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (37, N'Cameron', N'st5', N'st5', 2, N'Cameron@gmail.com', N'456789')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (38, N'Carl', N'st6', N'st6', 2, N'Carl@gmail.com', N'567900')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (39, N'Carlos', N'st7', N'st7', 3, N'Carlos@mail.com', N'679011')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (40, N'Charles', N'st8', N'st8', 3, N'Charles@yandex.com', N'790122')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (41, N'Christopher', N'st9', N'st9', 3, N'Christopher@yandex.com', N'901233')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (42, N'Cole', N'st10', N'st10', 4, N'Cole@mail.com', N'1012344')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (43, N'Connor', N'st11', N'st11', 4, N'Connor@yandex.com', N'1123455')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (44, N'Caleb', N'st12', N'st12', 4, N'Caleb@gmail.com', N'1234566')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (45, N'David', N'st13', N'st13', 5, N'David@gmail.com', N'1345677')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (46, N'Dennis', N'st14', N'st14', 5, N'Dennis@gmail.com', N'1456788')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (47, N'Devin', N'st15', N'st15', 5, N'Devin@yandex.com', N'1567899')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (48, N'Elijah', N'st16', N'st16', 6, N'Elijah@gmail.com', N'1679010')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (49, N'Eric', N'st17', N'st17', 6, N'Eric@gmail.com', N'1790121')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (50, N'Harold', N'st18', N'st18', 6, N'Harold@mail.com', N'1901232')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (51, N'Harry', N'st19', N'st19', 7, N'Harry@gmail.com', N'2012343')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (52, N'Hayden', N'st20', N'st20', 7, N'Hayden@gmail.com', N'2123454')
INSERT [dbo].[Students] ([Id], [Name], [Login], [Password], [Group], [E_mail], [Phone]) VALUES (53, N'Jack', N'st21', N'st21', 7, N'Jack@gmail.com', N'2234565')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (1, N'Algebra ')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (2, N'History ')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (3, N'Physics ')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (4, N'Geometry ')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (5, N'Physical education')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Name], [Login], [Password], [E_mail], [Phone]) VALUES (6, N'Laura', N'teach1', N't1', N'Laura@college.com', N'6543432')
INSERT [dbo].[Teachers] ([Id], [Name], [Login], [Password], [E_mail], [Phone]) VALUES (7, N'Olivia', N'teach2', N't2', N'Olivia@college.com', N'3464475')
INSERT [dbo].[Teachers] ([Id], [Name], [Login], [Password], [E_mail], [Phone]) VALUES (8, N'Maria', N'teach3', N't3', N'Maria@college.com', N'4385518')
INSERT [dbo].[Teachers] ([Id], [Name], [Login], [Password], [E_mail], [Phone]) VALUES (9, N'Lily', N'teach4', N't4', N'Lily@college.com', N'5353432')
INSERT [dbo].[Teachers] ([Id], [Name], [Login], [Password], [E_mail], [Phone]) VALUES (10, N'Nicole', N'teach5', N't5', N'Nicole@college.com', N'7533432')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Students] FOREIGN KEY([Student])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Students]
GO
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Subjects] FOREIGN KEY([Subject])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Subjects]
GO
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Teachers] FOREIGN KEY([Teacher])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Teachers]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Groups] FOREIGN KEY([Group])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Groups]
GO
USE [master]
GO
ALTER DATABASE [TRPO_Db] SET  READ_WRITE 
GO
