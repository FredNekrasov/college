USE [master]
GO
/****** Object:  Database [Coursework]    Script Date: 22.05.2023 10:16:15 ******/
CREATE DATABASE [Coursework]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Coursework', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Coursework.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Coursework_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Coursework_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Coursework] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coursework].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coursework] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Coursework] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Coursework] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Coursework] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Coursework] SET ARITHABORT OFF 
GO
ALTER DATABASE [Coursework] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Coursework] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Coursework] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Coursework] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Coursework] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Coursework] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Coursework] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Coursework] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Coursework] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Coursework] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Coursework] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Coursework] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Coursework] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Coursework] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Coursework] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Coursework] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Coursework] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Coursework] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Coursework] SET  MULTI_USER 
GO
ALTER DATABASE [Coursework] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Coursework] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Coursework] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Coursework] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Coursework] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Coursework] SET QUERY_STORE = OFF
GO
USE [Coursework]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 22.05.2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Subject_code] [varchar](10) NULL,
	[Login] [varchar](50) NULL,
	[Replacing_login] [varchar](50) NULL,
	[Classes_held] [int] NULL,
	[Group_code] [varchar](7) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculum]    Script Date: 22.05.2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculum](
	[Curriculum_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name_of_the_curriculum] [varchar](50) NULL,
	[Subject_code] [varchar](10) NULL,
	[Total_number_of_hours] [int] NULL,
	[Practical_hours] [int] NULL,
	[Theoretical_hours] [int] NULL,
	[Semester_number] [int] NULL,
	[Specialty_code] [varchar](10) NULL,
	[Group_code] [varchar](7) NULL,
 CONSTRAINT [PK_Curriculum] PRIMARY KEY CLUSTERED 
(
	[Curriculum_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 22.05.2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Group_code] [varchar](7) NOT NULL,
	[Name_of_the_group] [varchar](max) NULL,
	[Course] [varchar](1) NULL,
	[Number_of_students] [int] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Group_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semesters]    Script Date: 22.05.2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semesters](
	[Semester_number] [int] IDENTITY(1,1) NOT NULL,
	[Semester] [varchar](10) NULL,
	[Beginning_of_semester] [varchar](5) NULL,
	[Ending_of_semester] [varchar](5) NULL,
 CONSTRAINT [PK_Semesters] PRIMARY KEY CLUSTERED 
(
	[Semester_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialties]    Script Date: 22.05.2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialties](
	[Specialty_code] [varchar](10) NOT NULL,
	[Name_of_the_specialty] [varchar](max) NULL,
	[Form_of_study] [varchar](17) NULL,
	[Qualification] [varchar](max) NULL,
 CONSTRAINT [PK_Specialties] PRIMARY KEY CLUSTERED 
(
	[Specialty_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 22.05.2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Subject_code] [varchar](10) NOT NULL,
	[Name_of_the_subject] [varchar](max) NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Subject_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 22.05.2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Login] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Patronymic] [varchar](50) NULL,
	[Password] [varchar](max) NULL,
	[Gender] [char](1) NULL,
	[Birthday] [date] NULL,
	[Phone_number] [char](15) NULL,
	[Mail] [varchar](50) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Groups] FOREIGN KEY([Group_code])
REFERENCES [dbo].[Groups] ([Group_code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Groups]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Subjects] FOREIGN KEY([Subject_code])
REFERENCES [dbo].[Subjects] ([Subject_code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Subjects]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Teachers] FOREIGN KEY([Login])
REFERENCES [dbo].[Teachers] ([Login])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Teachers]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Teachers1] FOREIGN KEY([Replacing_login])
REFERENCES [dbo].[Teachers] ([Login])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Teachers1]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Groups] FOREIGN KEY([Group_code])
REFERENCES [dbo].[Groups] ([Group_code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_Groups]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Semesters] FOREIGN KEY([Semester_number])
REFERENCES [dbo].[Semesters] ([Semester_number])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_Semesters]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Specialties] FOREIGN KEY([Specialty_code])
REFERENCES [dbo].[Specialties] ([Specialty_code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_Specialties]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Subjects] FOREIGN KEY([Subject_code])
REFERENCES [dbo].[Subjects] ([Subject_code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_Subjects]
GO
USE [master]
GO
ALTER DATABASE [Coursework] SET  READ_WRITE 
GO
