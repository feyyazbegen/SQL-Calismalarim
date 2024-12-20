USE [master]
GO
/****** Object:  Database [CUSTOMERS]    Script Date: 21.11.2024 23:52:19 ******/
CREATE DATABASE [CUSTOMERS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CUSTOMERS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CUSTOMERS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CUSTOMERS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CUSTOMERS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CUSTOMERS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CUSTOMERS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CUSTOMERS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CUSTOMERS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CUSTOMERS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CUSTOMERS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CUSTOMERS] SET ARITHABORT OFF 
GO
ALTER DATABASE [CUSTOMERS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CUSTOMERS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CUSTOMERS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CUSTOMERS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CUSTOMERS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CUSTOMERS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CUSTOMERS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CUSTOMERS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CUSTOMERS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CUSTOMERS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CUSTOMERS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CUSTOMERS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CUSTOMERS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CUSTOMERS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CUSTOMERS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CUSTOMERS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CUSTOMERS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CUSTOMERS] SET RECOVERY FULL 
GO
ALTER DATABASE [CUSTOMERS] SET  MULTI_USER 
GO
ALTER DATABASE [CUSTOMERS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CUSTOMERS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CUSTOMERS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CUSTOMERS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CUSTOMERS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CUSTOMERS', N'ON'
GO
ALTER DATABASE [CUSTOMERS] SET QUERY_STORE = OFF
GO
USE [CUSTOMERS]
GO
/****** Object:  Table [dbo].[CITIES]    Script Date: 21.11.2024 23:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITIES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CITY] [varchar](50) NULL,
 CONSTRAINT [PK_CITIES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMERS]    Script Date: 21.11.2024 23:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CUSTOMERNAME] [varchar](100) NULL,
	[TCNUMBER] [varchar](11) NULL,
	[GENDER] [varchar](1) NULL,
	[EMAIL] [varchar](100) NULL,
	[BIRTHDATE] [date] NULL,
	[CITYID] [int] NULL,
	[DISTRICTID] [int] NULL,
	[TELNR1] [varchar](15) NULL,
	[TELNR2] [varchar](15) NULL,
 CONSTRAINT [PK_CUSTOMERS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISTRICTS]    Script Date: 21.11.2024 23:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRICTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CITYID] [int] NULL,
	[DISTRICT] [varchar](50) NULL,
 CONSTRAINT [PK_DISTRICTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CUSTOMERS] SET  READ_WRITE 
GO
