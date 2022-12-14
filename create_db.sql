USE [master]
GO

CREATE DATABASE [InternetShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InternetShopDB', FILENAME = N'C:\Users\Користувач\InternetShopDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InternetShopDB_log', FILENAME = N'C:\Users\Користувач\InternetShopDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InternetShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [InternetShopDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [InternetShopDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [InternetShopDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [InternetShopDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [InternetShopDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [InternetShopDB] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [InternetShopDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [InternetShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [InternetShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [InternetShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [InternetShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [InternetShopDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [InternetShopDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [InternetShopDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [InternetShopDB] SET  ENABLE_BROKER 
GO

ALTER DATABASE [InternetShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [InternetShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [InternetShopDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [InternetShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [InternetShopDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [InternetShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [InternetShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [InternetShopDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [InternetShopDB] SET  MULTI_USER 
GO

ALTER DATABASE [InternetShopDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [InternetShopDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [InternetShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [InternetShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [InternetShopDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [InternetShopDB] SET QUERY_STORE = OFF
GO

USE [InternetShopDB]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE 
GO


