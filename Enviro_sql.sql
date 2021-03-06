USE [master]
GO
/****** Object:  Database [BMS]    Script Date: 9/6/2020 6:31:30 PM ******/
CREATE DATABASE [BMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BMS.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BMS_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BMS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [BMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BMS] SET RECOVERY FULL 
GO
ALTER DATABASE [BMS] SET  MULTI_USER 
GO
ALTER DATABASE [BMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BMS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BMS', N'ON'
GO
USE [BMS]
GO
/****** Object:  Table [dbo].[AdminUser]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[PassWord] [varchar](255) NULL,
	[Status] [char](1) NULL,
	[BankName] [varchar](255) NULL,
	[Branch] [varchar](255) NULL,
	[IFSCCode] [varchar](255) NULL,
	[Acno] [varchar](255) NULL,
	[CompanyName] [varchar](255) NULL,
	[GstNo] [varchar](255) NULL,
	[EmailId] [varchar](255) NULL,
	[termC1] [varchar](255) NULL,
	[termC2] [varchar](255) NULL,
	[termC3] [varchar](255) NULL,
	[termC4] [varchar](255) NULL,
	[termC5] [varchar](255) NULL,
	[address] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chalan_cusdets]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[chalan_cusdets](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Sales_Date] [datetime] NULL,
	[CusName] [varchar](255) NULL,
	[MobNo] [varchar](255) NULL,
	[Address] [varchar](max) NULL,
	[DiscAmt] [varchar](255) NULL,
	[gst] [varchar](255) NULL,
	[NetValue] [varchar](255) NULL,
	[status] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chalan_s_prodets]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chalan_s_prodets](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[CustomerId] [varchar](255) NULL,
	[salesDate] [datetime] NULL,
	[QtyPic] [int] NULL,
	[warranty] [varchar](45) NULL,
	[serialNo] [varchar](255) NULL,
	[Item_ID] [varchar](255) NULL,
	[Company] [varchar](255) NULL,
	[SalesPrice] [varchar](255) NULL,
	[MRP] [varchar](255) NULL,
	[Discper] [varchar](255) NULL,
	[DiscAmt] [varchar](255) NULL,
	[sgst] [varchar](255) NULL,
	[cgst] [varchar](255) NULL,
	[igst] [varchar](255) NULL,
	[gstamt] [varchar](255) NULL,
	[status] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cousterDetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cousterDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CName] [varchar](255) NULL,
	[mob] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[GstNo] [varchar](255) NULL,
	[status] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[item_serialNo]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[item_serialNo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [varchar](12) NULL,
	[SerialNo] [varchar](100) NULL,
	[status] [char](1) NULL,
	[PurchaseDate] [datetime] NULL,
	[purchaseId] [varchar](255) NULL,
	[CHSNSTATUS] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[items]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_name] [varchar](255) NULL,
	[shortName] [varchar](255) NULL,
	[HSN_SACCode] [varchar](255) NULL,
	[taxper] [varchar](10) NULL,
	[Company] [varchar](255) NULL,
	[ItemGroup] [varchar](255) NULL,
	[PrimaryUnit] [varchar](10) NULL,
	[salePrice] [varchar](100) NULL,
	[MRP] [varchar](100) NULL,
	[BasicPrice] [varchar](100) NULL,
	[Purchase] [varchar](100) NULL,
	[barcode] [varchar](200) NULL,
	[Op_packs] [varchar](255) NULL,
	[op_lose] [varchar](255) NULL,
	[Op_stock] [varchar](255) NULL,
	[waranty] [varchar](255) NULL,
	[ToItems] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[P_Purchase]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[P_Purchase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pur_Date] [datetime] NULL,
	[Item_ID] [varchar](255) NULL,
	[ShortName] [varchar](255) NULL,
	[WarrantyMonths] [varchar](255) NULL,
	[itemGroup] [varchar](255) NULL,
	[QtyPic] [int] NULL,
	[PartyName] [varchar](255) NULL,
	[Company] [varchar](255) NULL,
	[SalesPrice] [varchar](255) NULL,
	[MRP] [varchar](255) NULL,
	[Purchase] [varchar](255) NULL,
	[Per] [varchar](255) NULL,
	[BasicPrice] [varchar](255) NULL,
	[Disc] [varchar](255) NULL,
	[DiscAmt] [varchar](255) NULL,
	[TaxAmt] [varchar](255) NULL,
	[NetValue] [varchar](255) NULL,
	[status] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1000,1) NOT NULL,
	[ProductName] [varchar](255) NULL,
	[ProductType] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductSells]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductSells](
	[id] [int] IDENTITY(1000,1) NOT NULL,
	[ProductName] [varchar](255) NULL,
	[ProductType] [varchar](255) NULL,
	[SerialNo] [varchar](255) NULL,
	[Voltage] [varchar](255) NULL,
	[Capacity] [varchar](255) NULL,
	[Color] [varchar](255) NULL,
	[Brand] [varchar](255) NULL,
	[warranty] [int] NULL,
	[sellDate] [date] NULL,
	[sellPrice] [varchar](255) NULL,
	[remarks] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[replacement]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[replacement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IT_ID] [int] NULL,
	[SerialNo] [varchar](50) NULL,
	[ReSerialNo] [varchar](50) NULL,
	[ReSameSN] [varchar](50) NULL,
	[ReDate] [datetime] NULL,
	[remarks] [varchar](max) NULL,
	[status] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_CustomerDetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[S_CustomerDetails](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Sales_Date] [datetime] NULL,
	[CusName] [varchar](255) NULL,
	[MobNo] [varchar](255) NULL,
	[Address] [varchar](max) NULL,
	[DiscAmt] [varchar](255) NULL,
	[gst] [varchar](255) NULL,
	[NetValue] [varchar](255) NULL,
	[status] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[S_CustomerDetails] ADD [TranportMode] [varchar](100) NULL
ALTER TABLE [dbo].[S_CustomerDetails] ADD [vehicleNo] [varchar](100) NULL
ALTER TABLE [dbo].[S_CustomerDetails] ADD [placeOfSupply] [varchar](100) NULL
ALTER TABLE [dbo].[S_CustomerDetails] ADD [state] [varchar](100) NULL
ALTER TABLE [dbo].[S_CustomerDetails] ADD [pincode] [varchar](20) NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_sales_ProductDetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_sales_ProductDetails](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[CustomerId] [varchar](255) NULL,
	[salesDate] [datetime] NULL,
	[QtyPic] [int] NULL,
	[warranty] [varchar](45) NULL,
	[serialNo] [varchar](255) NULL,
	[Item_ID] [varchar](255) NULL,
	[Company] [varchar](255) NULL,
	[SalesPrice] [varchar](255) NULL,
	[MRP] [varchar](255) NULL,
	[Discper] [varchar](255) NULL,
	[DiscAmt] [varchar](255) NULL,
	[sgst] [varchar](255) NULL,
	[cgst] [varchar](255) NULL,
	[igst] [varchar](255) NULL,
	[gstamt] [varchar](255) NULL,
	[status] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdminUser] ON 

INSERT [dbo].[AdminUser] ([Id], [UserName], [Email], [PassWord], [Status], [BankName], [Branch], [IFSCCode], [Acno], [CompanyName], [GstNo], [EmailId], [termC1], [termC2], [termC3], [termC4], [termC5], [address]) VALUES (1002, NULL, N'mobile@gmail.com', N'123', N'A', N'Bank of India', N'Boring Road', N'BOI00256', N'45265652845645', N'Battery shop', N'GSTNO25264526', N'COMPANYNAME@GMAIL.COM', N'TERM1 ', N'TERM2', N'TREM3', N'TERM4', N'TREM5', N'Boring Canal Road Patna1')
SET IDENTITY_INSERT [dbo].[AdminUser] OFF
SET IDENTITY_INSERT [dbo].[chalan_cusdets] ON 

INSERT [dbo].[chalan_cusdets] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status]) VALUES (1107, CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'840', N'3840', N'D')
INSERT [dbo].[chalan_cusdets] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status]) VALUES (1110, CAST(N'2020-02-08 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'504', N'2304', N'D')
INSERT [dbo].[chalan_cusdets] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status]) VALUES (1111, CAST(N'2020-02-01 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'153', N'741.16', N'3388.16', N'D')
INSERT [dbo].[chalan_cusdets] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status]) VALUES (1112, CAST(N'2020-02-08 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'280', N'1280', N'D')
INSERT [dbo].[chalan_cusdets] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status]) VALUES (1113, CAST(N'2020-02-08 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'252', N'1152', N'A')
INSERT [dbo].[chalan_cusdets] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status]) VALUES (1108, CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'840', N'3840', N'D')
INSERT [dbo].[chalan_cusdets] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status]) VALUES (1109, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'280', N'1280', N'D')
SET IDENTITY_INSERT [dbo].[chalan_cusdets] OFF
SET IDENTITY_INSERT [dbo].[chalan_s_prodets] ON 

INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1124, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1125, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a2', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1126, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'b1', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1132, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1133, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1134, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1135, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'b1', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', NULL, N'252', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1136, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1137, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a2', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1138, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a3', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1139, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a2', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1140, N'1107', CAST(N'2020-01-31 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1141, N'1107', CAST(N'2020-01-31 00:00:00.000' AS DateTime), 1, NULL, N'a2', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1142, N'1107', CAST(N'2020-01-31 00:00:00.000' AS DateTime), 1, NULL, N'a3', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1143, N'1107', CAST(N'2020-01-31 00:00:00.000' AS DateTime), 1, NULL, N'a4', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1144, N'1107', CAST(N'2020-01-31 00:00:00.000' AS DateTime), 1, NULL, N'a5', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1149, N'1110', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'b2', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', N'0', N'252', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1150, N'1110', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'b3', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', N'0', N'252', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1151, N'1111', CAST(N'2020-02-01 00:00:00.000' AS DateTime), 1, NULL, N'a5', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1152, N'1111', CAST(N'2020-02-01 00:00:00.000' AS DateTime), 1, NULL, N'b4', N'2005', NULL, N'900', NULL, N'8', N'72', N'14', N'14', N'0', N'231.84', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1153, N'1111', CAST(N'2020-02-01 00:00:00.000' AS DateTime), 1, NULL, N'b5', N'2005', NULL, N'900', NULL, N'9', N'81', N'14', N'14', N'0', N'229.32', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1154, N'1111', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'b5', N'2005', NULL, N'900', NULL, N'9', N'81', N'14', N'14', NULL, N'229.32', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1155, N'1112', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'a6', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1156, N'1113', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'b7', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', N'0', N'252', N'A')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1157, N'1112', CAST(N'2020-02-09 00:00:00.000' AS DateTime), 1, NULL, N'a7', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1158, N'1112', CAST(N'2020-02-09 00:00:00.000' AS DateTime), 1, NULL, N'a7', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1159, N'1112', CAST(N'2020-02-09 00:00:00.000' AS DateTime), 1, NULL, N'a7', N'2004', NULL, N'500', NULL, N'0', N'0', N'14', N'14', NULL, N'140', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1145, N'1108', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a2', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1146, N'1108', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a3', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1147, N'1108', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'b1', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1148, N'1109', CAST(N'2020-02-14 00:00:00.000' AS DateTime), 1, NULL, N'a4', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1127, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1128, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1129, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1130, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
INSERT [dbo].[chalan_s_prodets] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (1131, N'1107', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', NULL, N'280', N'D')
SET IDENTITY_INSERT [dbo].[chalan_s_prodets] OFF
SET IDENTITY_INSERT [dbo].[cousterDetails] ON 

INSERT [dbo].[cousterDetails] ([id], [CName], [mob], [address], [GstNo], [status]) VALUES (1002, N'tannu', N'7004208023', N'patliputra road no 4 house', N'GHTD6456185', N'A')
SET IDENTITY_INSERT [dbo].[cousterDetails] OFF
SET IDENTITY_INSERT [dbo].[item_serialNo] ON 

INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2046, N'2006', N'T1', N'A', CAST(N'2020-02-09 00:00:00.000' AS DateTime), N'2023', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2047, N'2006', N'T2', N'A', CAST(N'2020-02-09 00:00:00.000' AS DateTime), N'2023', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2048, N'2006', N'T3', N'A', CAST(N'2020-02-09 00:00:00.000' AS DateTime), N'2023', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2026, N'2004', N'a1', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2027, N'2004', N'a2', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2028, N'2004', N'a3', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2029, N'2004', N'a4', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2030, N'2004', N'a5', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2031, N'2004', N'a6', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2032, N'2004', N'a7', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2033, N'2004', N'a8', N'A', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2034, N'2004', N'a9', N'A', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2035, N'2004', N'a10', N'A', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2021', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2036, N'2005', N'b1', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2037, N'2005', N'b2', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2038, N'2005', N'b3', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2039, N'2005', N'b4', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2040, N'2005', N'b5', N'S', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2041, N'2005', N'b6', N'R', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2042, N'2005', N'b7', N'A', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'C')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2043, N'2005', N'b8', N'A', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2044, N'2005', N'b9', N'A', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'A')
INSERT [dbo].[item_serialNo] ([id], [ItemId], [SerialNo], [status], [PurchaseDate], [purchaseId], [CHSNSTATUS]) VALUES (2045, N'2005', N'b10', N'A', CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2022', N'A')
SET IDENTITY_INSERT [dbo].[item_serialNo] OFF
SET IDENTITY_INSERT [dbo].[items] ON 

INSERT [dbo].[items] ([id], [item_name], [shortName], [HSN_SACCode], [taxper], [Company], [ItemGroup], [PrimaryUnit], [salePrice], [MRP], [BasicPrice], [Purchase], [barcode], [Op_packs], [op_lose], [Op_stock], [waranty], [ToItems]) VALUES (2004, N'en400', NULL, N'1234', N'28', N'motorola', N'Mobile', NULL, N'1000', N'1200', NULL, N'900', NULL, NULL, NULL, NULL, N'28', 3)
INSERT [dbo].[items] ([id], [item_name], [shortName], [HSN_SACCode], [taxper], [Company], [ItemGroup], [PrimaryUnit], [salePrice], [MRP], [BasicPrice], [Purchase], [barcode], [Op_packs], [op_lose], [Op_stock], [waranty], [ToItems]) VALUES (2005, N'b2500', NULL, N'123456', N'28', N'motorola', N'Mobile', NULL, N'900', N'900', NULL, N'800', NULL, NULL, NULL, NULL, N'28', 4)
INSERT [dbo].[items] ([id], [item_name], [shortName], [HSN_SACCode], [taxper], [Company], [ItemGroup], [PrimaryUnit], [salePrice], [MRP], [BasicPrice], [Purchase], [barcode], [Op_packs], [op_lose], [Op_stock], [waranty], [ToItems]) VALUES (2006, N'TE34', NULL, N'5465465', N'28', N'motorola', N'Mobile', NULL, N'1000', N'1000', NULL, N'900', NULL, NULL, NULL, NULL, N'28', 3)
SET IDENTITY_INSERT [dbo].[items] OFF
SET IDENTITY_INSERT [dbo].[P_Purchase] ON 

INSERT [dbo].[P_Purchase] ([Id], [Pur_Date], [Item_ID], [ShortName], [WarrantyMonths], [itemGroup], [QtyPic], [PartyName], [Company], [SalesPrice], [MRP], [Purchase], [Per], [BasicPrice], [Disc], [DiscAmt], [TaxAmt], [NetValue], [status]) VALUES (2023, CAST(N'2020-02-09 00:00:00.000' AS DateTime), N'2006', NULL, N'28', NULL, 3, NULL, NULL, N'1000', N'1000', N'900', NULL, NULL, N'0', NULL, N'28', N'3456', N'A')
INSERT [dbo].[P_Purchase] ([Id], [Pur_Date], [Item_ID], [ShortName], [WarrantyMonths], [itemGroup], [QtyPic], [PartyName], [Company], [SalesPrice], [MRP], [Purchase], [Per], [BasicPrice], [Disc], [DiscAmt], [TaxAmt], [NetValue], [status]) VALUES (2021, CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2004', NULL, N'28', NULL, 10, NULL, NULL, N'1000', N'1200', N'900', NULL, NULL, N'0', NULL, N'28', N'11520', N'A')
INSERT [dbo].[P_Purchase] ([Id], [Pur_Date], [Item_ID], [ShortName], [WarrantyMonths], [itemGroup], [QtyPic], [PartyName], [Company], [SalesPrice], [MRP], [Purchase], [Per], [BasicPrice], [Disc], [DiscAmt], [TaxAmt], [NetValue], [status]) VALUES (2022, CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'2005', NULL, N'28', NULL, 10, NULL, NULL, N'900', N'900', N'800', NULL, NULL, N'0', NULL, N'28', N'10240', N'A')
SET IDENTITY_INSERT [dbo].[P_Purchase] OFF
SET IDENTITY_INSERT [dbo].[replacement] ON 

INSERT [dbo].[replacement] ([ID], [IT_ID], [SerialNo], [ReSerialNo], [ReSameSN], [ReDate], [remarks], [status]) VALUES (14, 2005, N'b5', N'b5', NULL, CAST(N'2020-02-12 00:00:00.000' AS DateTime), N'Bad condition', N'A')
INSERT [dbo].[replacement] ([ID], [IT_ID], [SerialNo], [ReSerialNo], [ReSameSN], [ReDate], [remarks], [status]) VALUES (15, 2005, N'b5', N'b6', NULL, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'Bad condition', N'A')
SET IDENTITY_INSERT [dbo].[replacement] OFF
SET IDENTITY_INSERT [dbo].[S_CustomerDetails] ON 

INSERT [dbo].[S_CustomerDetails] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status], [TranportMode], [vehicleNo], [placeOfSupply], [state], [pincode]) VALUES (2113, CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'280', N'1280', N'A', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_CustomerDetails] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status], [TranportMode], [vehicleNo], [placeOfSupply], [state], [pincode]) VALUES (2114, CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'280', N'1280', N'A', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_CustomerDetails] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status], [TranportMode], [vehicleNo], [placeOfSupply], [state], [pincode]) VALUES (2115, CAST(N'2020-02-07 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'840', N'3740', N'A', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_CustomerDetails] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status], [TranportMode], [vehicleNo], [placeOfSupply], [state], [pincode]) VALUES (2116, CAST(N'2020-02-08 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'504', N'2304', N'A', N'Piyago', N'56546', N'Patna', N'bhiar', N'80011')
INSERT [dbo].[S_CustomerDetails] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status], [TranportMode], [vehicleNo], [placeOfSupply], [state], [pincode]) VALUES (2117, CAST(N'2020-02-08 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'153', N'741', N'3388', N'A', N'', N'', N'', N'', N'')
INSERT [dbo].[S_CustomerDetails] ([Id], [Sales_Date], [CusName], [MobNo], [Address], [DiscAmt], [gst], [NetValue], [status], [TranportMode], [vehicleNo], [placeOfSupply], [state], [pincode]) VALUES (2118, CAST(N'2020-02-11 00:00:00.000' AS DateTime), N'1002', NULL, NULL, N'0', N'420', N'1920', N'A', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[S_CustomerDetails] OFF
SET IDENTITY_INSERT [dbo].[S_sales_ProductDetails] ON 

INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2135, N'2113', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a1', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'&nbsp;', N'280', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2136, N'2114', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a4', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2137, N'2115', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a2', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2138, N'2115', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'a3', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2139, N'2115', CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, NULL, N'b1', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2145, N'2118', CAST(N'2020-02-11 00:00:00.000' AS DateTime), 1, NULL, N'a6', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2146, N'2118', CAST(N'2020-02-11 00:00:00.000' AS DateTime), 1, NULL, N'a7', N'2004', NULL, N'500', NULL, N'0', N'0', N'14', N'14', N'&nbsp;', N'140', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2140, N'2116', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'b2', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', N'0', N'252', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2141, N'2116', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'b3', N'2005', NULL, N'900', NULL, N'0', N'0', N'14', N'14', N'0', N'252', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2142, N'2117', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'a5', N'2004', NULL, N'1000', NULL, N'0', N'0', N'14', N'14', N'0', N'280', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2143, N'2117', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'b4', N'2005', NULL, N'900', NULL, N'8', N'72', N'14', N'14', N'0', N'231.84', N'A')
INSERT [dbo].[S_sales_ProductDetails] ([Id], [CustomerId], [salesDate], [QtyPic], [warranty], [serialNo], [Item_ID], [Company], [SalesPrice], [MRP], [Discper], [DiscAmt], [sgst], [cgst], [igst], [gstamt], [status]) VALUES (2144, N'2117', CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, NULL, N'b5', N'2005', NULL, N'900', NULL, N'9', N'81', N'14', N'14', N'&nbsp;', N'229.32', N'A')
SET IDENTITY_INSERT [dbo].[S_sales_ProductDetails] OFF
/****** Object:  StoredProcedure [dbo].[Get_ChalanCustomerPrintdetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[Get_ChalanCustomerPrintdetails]
 @ChalanNo int    
As                
Begin 
	 select cud.CName,cud.mob,cud.address,cud.GstNo,cd.Sales_Date
	  from cousterDetails cud	   
	   right join CHALAN_CUSDETS cd on cd.CusName=cud.id
	    where cd.id=@ChalanNo and cud.status='A' 

End
GO
/****** Object:  StoredProcedure [dbo].[Get_chalandetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[Get_chalandetails]
 @InvoiceNo int    
As                
Begin 
	 select convert(varchar(255),s.Sales_Date,103)  as 'Sales Date', s.id as 'Chalan No' ,c.CName,c.GstNo 
	 ,c.mob as Mob , s.DiscAmt as 'Discount Amount',s.gst AS 'GST Amount' ,s.NetValue As 'Amount'
	  from chalan_cusdets s right join cousterDetails c on s.CusName=c.id where s.status='A' order by s.id desc

End
GO
/****** Object:  StoredProcedure [dbo].[Get_ChalanPrintdetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[Get_ChalanPrintdetails]
 @InvoiceNo int    
As                
Begin 
	 select sp.QtyPic,sp.serialNo,sp.Item_ID , sp.SalesPrice,sp.Discper,sp.DiscAmt,sp.sgst,sp.cgst,sp.gstamt ,i.item_name as 'Item Name'
	  from chalan_cusdets s	   
	   left join chalan_s_prodets sp on s.id=sp.CustomerId 
	   left join items i on i.id=sp.Item_ID
	    where s.status='A' and  sp.CustomerId=@InvoiceNo and sp.status='A'

End
GO
/****** Object:  StoredProcedure [dbo].[Get_custsalsdetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[Get_custsalsdetails]
 @seachid varchar(255)    
As                
Begin 
	 select *
	  from cousterDetails cd right join S_CUSTOMERDETAILS cs on  cs.CusName=cd.id right join S_SALES_PRODUCTDETAILS sp on sp.CustomerId=cs.Id where sp.serialNo=''+@seachid+'' 

End
GO
/****** Object:  StoredProcedure [dbo].[Get_PaticualCustomersalesdetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[Get_PaticualCustomersalesdetails]
 @InvoiceNo int    
As                
Begin 
	 select convert(varchar(255),s.Sales_Date,103)  as 'Sales Date', s.id as 'Invoice No' ,c.CName,c.GstNo ,c.address
	 ,c.mob as Mob , s.DiscAmt as 'Discount Amount',s.gst AS 'GST Amount' ,s.NetValue As 'Amount',
	 s.TranportMode,s.vehicleNo,s.placeOfSupply,s.state,s.pincode
	  from S_CustomerDetails s right join cousterDetails c on s.CusName=c.id where s.status='A' and s.id= @InvoiceNo

End
GO
/****** Object:  StoredProcedure [dbo].[Get_salesdetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[Get_salesdetails]
 @InvoiceNo int    
As                
Begin 
	 select convert(varchar(255),s.Sales_Date,103)  as 'Sales Date', s.id as 'Invoice No' ,c.CName,c.GstNo 
	 ,c.mob as Mob , s.DiscAmt as 'Discount Amount',s.gst AS 'GST Amount' ,s.NetValue As 'Amount'
	  from S_CustomerDetails s right join cousterDetails c on s.CusName=c.id where s.status='A'  order by s.id desc

End
GO
/****** Object:  StoredProcedure [dbo].[Get_salesPrintdetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[Get_salesPrintdetails]
 @InvoiceNo int    
As                
Begin 
	 select i.item_name as 'Product Name',i.HSN_SACCode as 'HSN Code', 

	  sp.QtyPic,sp.serialNo,sp.SalesPrice,sp.Discper,sp.DiscAmt,sp.sgst,sp.cgst,sp.gstamt 
	  from S_CustomerDetails s	   
	   left join S_sales_ProductDetails sp on s.id=sp.CustomerId 
	   left join items i on  i.id = sp.Item_ID
	    where s.status='A' and  sp.CustomerId=@InvoiceNo

End
GO
/****** Object:  StoredProcedure [dbo].[GEt_warrantyStatus]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GEt_warrantyStatus]
@serialNo varchar(255)
as
begin
	Begin Try
	select sp.serialNo,i.id,r.ReSerialNo,r.ReDate,r.remarks , sp.salesDate,sp.SalesPrice
	from  S_sales_productDetails sp 
	left join items i  on i.id = sp.Item_ID

	left join replacement r on r.SerialNo=sp.serialNo 
	 where sp.serialNo=@serialNo and sp.Status = 'A' or r.ReSerialNo like '%'+@serialNo+'%'
	End try
	Begin catch
	end catch
		
end
GO
/****** Object:  StoredProcedure [dbo].[getchalnaAmtDet]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getchalnaAmtDet]

@chno int ,
@status char

as
begin

   SELECT (sum( cast(SalesPrice as decimal))-SUM(cast(DiscAmt as decimal)))+SUM(cast(gstamt as decimal))  as 'Net Value' ,
   sum( cast(SalesPrice as decimal)) as SalesPrice,SUM(cast(DiscAmt as decimal)) as DisAmt ,SUM(cast(gstamt as decimal)) as GSTamt 
   FROM CHALAN_S_PRODETS   where CustomerId=@chno and status=@status
end
GO
/****** Object:  StoredProcedure [dbo].[itemsName]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[itemsName] 
@term varchar(255)
as
begin
select item_name as Name from items where item_name like '%' + @term + '%'
end 

GO
/****** Object:  StoredProcedure [dbo].[sp_setAddCustomerDetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[sp_setAddCustomerDetails]
@CusName varchar(50),
@MobNo varchar(50),
@Address varchar(255),
@GstNo varchar(255),
@status char(1)
As
Begin
	Begin Try
		
			Insert into cousterDetails(CName,mob,address,GstNo,status)
						values(@CusName,@MobNo,@Address,@GstNo,@status)
	End Try                                              
	Begin Catch                                                       
		                                          
			                                       
	End Catch  
end

GO
/****** Object:  StoredProcedure [dbo].[sp_setChalanCusDeta]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[sp_setChalanCusDeta]
@Sales_Date datetime,
@CusName varchar(50),
@DiscAmt varchar(255),
@gst varchar(50),
@NetValue varchar(50),
@status char(1),
@Ret int OutPut
As
Begin
	Begin Try
		
			Insert into S_CustomerDetails(Sales_Date,CusName,DiscAmt,gst,NetValue,status)
						values(@Sales_Date,@CusName,@DiscAmt,@gst,@NetValue,@status)
						
			Select   @Ret = SCOPE_IDENTITY()

	End Try                                              
	Begin Catch                                                       
		                                          
			                                       
	End Catch  
end

GO
/****** Object:  StoredProcedure [dbo].[sp_setchalnaCustomerDetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[sp_setchalnaCustomerDetails]
@Sales_Date datetime,
@CusName varchar(50),
@DiscAmt varchar(255),
@gst varchar(50),
@NetValue varchar(50),
@status char(1),
@Ret int OutPut
As
Begin
	Begin Try
		
			Insert into chalan_cusdets(Sales_Date,CusName,DiscAmt,gst,NetValue,status)
						values(@Sales_Date,@CusName,@DiscAmt,@gst,@NetValue,@status)
						
			Select   @Ret = SCOPE_IDENTITY()

	End Try                                              
	Begin Catch                                                       
		                                          
			                                       
	End Catch  
end

GO
/****** Object:  StoredProcedure [dbo].[sp_setCustomerDetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_setCustomerDetails]
@Sales_Date datetime,
@CusName varchar(50),
@DiscAmt varchar(255),
@gst varchar(50),
@NetValue varchar(50),
@status char(1),
@TranportMode  varchar(255),
@vehicleNo varchar(255),
@placeOfSupply varchar(255),
@state varchar(255),
@pincode varchar(255),
@Ret int OutPut
As
Begin
	Begin Try
		
			Insert into S_CustomerDetails(Sales_Date,CusName,DiscAmt,gst,NetValue,status,
			TranportMode,vehicleNo,placeOfSupply,state,pincode)
						values(@Sales_Date,@CusName,@DiscAmt,@gst,@NetValue,@status,@TranportMode,@vehicleNo,@placeOfSupply,@state,@pincode)
						
			Select   @Ret = SCOPE_IDENTITY()

	End Try                                              
	Begin Catch                                                       
		                                          
			                                       
	End Catch  
end

GO
/****** Object:  StoredProcedure [dbo].[sp_setpurchase]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_setpurchase]
@Pur_Date datetime,
@Item_ID varchar(50),
@WarrantyMonths varchar(255),
@QtyPic int,
@SalesPrice varchar(50),
@MRP varchar(50),
@Purchase varchar(50),
@Disc varchar(50),
@TaxAmt varchar(50),
@NetValue varchar(50),
@status char(1),
@Ret int OutPut
As
Begin
	Begin Try
		
			insert into P_purchase(Pur_Date,Item_ID,
                      WarrantyMonths  ,QtyPic,
                      SalesPrice ,MRP ,Purchase ,
                        Disc  ,TaxAmt ,NetValue,status) values
                        (@Pur_Date,
                        @Item_ID,
                        @WarrantyMonths,
                        @QtyPic,
						@SalesPrice,
						@MRP,
                        @Purchase,
                        @Disc,
                        @TaxAmt,
                        @NetValue,
                        @status) 

              update items set toitems=(items.toitems + @QtyPic)  where id=@Item_ID
						
			Select   @Ret = SCOPE_IDENTITY()

	End Try                                              
	Begin Catch                                                       
		                                          
			                                       
	End Catch  
end

GO
/****** Object:  StoredProcedure [dbo].[stocksDetails]    Script Date: 9/6/2020 6:31:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[stocksDetails]
@ItemID varchar(255)
as
begin
	Begin Try
	select i.item_name, I.waranty, sn.SerialNo, Sn.PurchaseDate
		From items I
		right Join item_serialNo Sn
		On I.id = Sn.ItemId
		

		Where Sn.Status = 'A'
		and i.id=@ItemID
	End try
	Begin catch
	end catch		
end


GO
USE [master]
GO
ALTER DATABASE [BMS] SET  READ_WRITE 
GO
