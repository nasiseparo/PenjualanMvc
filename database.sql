/*
 Navicat Premium Data Transfer

 Source Server         : SQL Server 2016
 Source Server Type    : SQL Server
 Source Server Version : 13001601
 Source Host           : localhost:1433
 Source Catalog        : tesdb
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 13001601
 File Encoding         : 65001

 Date: 02/03/2020 10:33:58
*/


-- ----------------------------
-- Table structure for MST_BARANG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MST_BARANG]') AND type IN ('U'))
	DROP TABLE [dbo].[MST_BARANG]
GO

CREATE TABLE [dbo].[MST_BARANG] (
  [KODE_BARANG] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [NAMA_BARANG] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [STOK_BARANG] int  NULL,
  [KODE_SUPPLIER] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[MST_BARANG] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MST_BARANG
-- ----------------------------
INSERT INTO [dbo].[MST_BARANG] ([KODE_BARANG], [NAMA_BARANG], [STOK_BARANG], [KODE_SUPPLIER]) VALUES (N'b0001', N'Rinso Cair Molto', N'210', N'sup0001')
GO

INSERT INTO [dbo].[MST_BARANG] ([KODE_BARANG], [NAMA_BARANG], [STOK_BARANG], [KODE_SUPPLIER]) VALUES (N'b0002', N'Panadol Extra', N'102', N'sup0002')
GO

INSERT INTO [dbo].[MST_BARANG] ([KODE_BARANG], [NAMA_BARANG], [STOK_BARANG], [KODE_SUPPLIER]) VALUES (N'b0003', N'Charm BodyFit', N'87', N'sup0001')
GO

INSERT INTO [dbo].[MST_BARANG] ([KODE_BARANG], [NAMA_BARANG], [STOK_BARANG], [KODE_SUPPLIER]) VALUES (N'b0004', N'Pepsodent Herbal', N'21', N'sup0001')
GO

INSERT INTO [dbo].[MST_BARANG] ([KODE_BARANG], [NAMA_BARANG], [STOK_BARANG], [KODE_SUPPLIER]) VALUES (N'b0005', N'Madu Kurma TJ', N'18', N'sup0002')
GO


-- ----------------------------
-- Table structure for MST_CUSTOMER
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MST_CUSTOMER]') AND type IN ('U'))
	DROP TABLE [dbo].[MST_CUSTOMER]
GO

CREATE TABLE [dbo].[MST_CUSTOMER] (
  [KODE_CUSTOMER] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [NAMA_CUSTOMER] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [ALAMAT_CUSTOMER] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [JENIS_KELAMIN] varchar(10) COLLATE Latin1_General_CI_AS  NULL,
  [EMAIL_CUSTOMER] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [KODE_KOTA] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[MST_CUSTOMER] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MST_CUSTOMER
-- ----------------------------
INSERT INTO [dbo].[MST_CUSTOMER] ([KODE_CUSTOMER], [NAMA_CUSTOMER], [ALAMAT_CUSTOMER], [JENIS_KELAMIN], [EMAIL_CUSTOMER], [KODE_KOTA]) VALUES (N'C002', N'Nama Costumer 1', N'Alamat Costumer 1', N'Pria', N'costumer1@gmail.com', N'K001')
GO

INSERT INTO [dbo].[MST_CUSTOMER] ([KODE_CUSTOMER], [NAMA_CUSTOMER], [ALAMAT_CUSTOMER], [JENIS_KELAMIN], [EMAIL_CUSTOMER], [KODE_KOTA]) VALUES (N'C003', N'Nama Costumer 2', N'Alamat Costumer 2', N'Wanita', N'costumer2@gmail.com', N'K002')
GO


-- ----------------------------
-- Table structure for MST_KARYAWAN
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MST_KARYAWAN]') AND type IN ('U'))
	DROP TABLE [dbo].[MST_KARYAWAN]
GO

CREATE TABLE [dbo].[MST_KARYAWAN] (
  [KODE_KARYAWAN] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [NAMA_KARYAWAN] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [USERNAME] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [PASSWORD] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[MST_KARYAWAN] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MST_KARYAWAN
-- ----------------------------
INSERT INTO [dbo].[MST_KARYAWAN] ([KODE_KARYAWAN], [NAMA_KARYAWAN], [USERNAME], [PASSWORD]) VALUES (N'K001', N'Karyawan 1', N'karyawan1', N'karyawan1')
GO

INSERT INTO [dbo].[MST_KARYAWAN] ([KODE_KARYAWAN], [NAMA_KARYAWAN], [USERNAME], [PASSWORD]) VALUES (N'K002', N'Karyawan 2', N'karyawan2', N'karyawan2')
GO

INSERT INTO [dbo].[MST_KARYAWAN] ([KODE_KARYAWAN], [NAMA_KARYAWAN], [USERNAME], [PASSWORD]) VALUES (N'K003', N'Karyawan 3', N'karyawan3', N'karyawan3')
GO


-- ----------------------------
-- Table structure for MST_KOTA
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MST_KOTA]') AND type IN ('U'))
	DROP TABLE [dbo].[MST_KOTA]
GO

CREATE TABLE [dbo].[MST_KOTA] (
  [KODE_KOTA] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [NAMA_KOTA] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [KODE_PROVINSI] varchar(50) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MST_KOTA] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MST_KOTA
-- ----------------------------
INSERT INTO [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K001', N'Jakarta', N'P001')
GO

INSERT INTO [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K002', N'Malang', N'P002')
GO

INSERT INTO [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K003', N'Semarang', N'P002')
GO

INSERT INTO [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K004', N'Bekasi', N'P003')
GO

INSERT INTO [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K005', N'Bandung', N'P003')
GO

INSERT INTO [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K006', N'Depok', N'P003')
GO


-- ----------------------------
-- Table structure for MST_PROVINSI
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MST_PROVINSI]') AND type IN ('U'))
	DROP TABLE [dbo].[MST_PROVINSI]
GO

CREATE TABLE [dbo].[MST_PROVINSI] (
  [KODE_PROVINSI] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [NAMA_PROVINSI] varchar(50) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MST_PROVINSI] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MST_PROVINSI
-- ----------------------------
INSERT INTO [dbo].[MST_PROVINSI] ([KODE_PROVINSI], [NAMA_PROVINSI]) VALUES (N'P001', N'DKI JAKARTA')
GO

INSERT INTO [dbo].[MST_PROVINSI] ([KODE_PROVINSI], [NAMA_PROVINSI]) VALUES (N'P002', N'JAWA TENGAH')
GO

INSERT INTO [dbo].[MST_PROVINSI] ([KODE_PROVINSI], [NAMA_PROVINSI]) VALUES (N'P003', N'JAWA BARAT')
GO


-- ----------------------------
-- Table structure for MST_SUPPLIER
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MST_SUPPLIER]') AND type IN ('U'))
	DROP TABLE [dbo].[MST_SUPPLIER]
GO

CREATE TABLE [dbo].[MST_SUPPLIER] (
  [KODE_SUPPLIER] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [NAMA_SUPPLIER] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [ALAMAT_SUPPLIER] varchar(100) COLLATE Latin1_General_CI_AS  NULL,
  [TELP_SUPPLIER] varchar(20) COLLATE Latin1_General_CI_AS  NULL,
  [EMAIL_SUPPLIER] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [KODE_KOTA] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[MST_SUPPLIER] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MST_SUPPLIER
-- ----------------------------
INSERT INTO [dbo].[MST_SUPPLIER] ([KODE_SUPPLIER], [NAMA_SUPPLIER], [ALAMAT_SUPPLIER], [TELP_SUPPLIER], [EMAIL_SUPPLIER], [KODE_KOTA]) VALUES (N'S001', N'Supplier 1', N'Jalan Supplier 1', N'07126893719', N'supplier1@gmail.com', N'K001')
GO

INSERT INTO [dbo].[MST_SUPPLIER] ([KODE_SUPPLIER], [NAMA_SUPPLIER], [ALAMAT_SUPPLIER], [TELP_SUPPLIER], [EMAIL_SUPPLIER], [KODE_KOTA]) VALUES (N'S002', N'Supplier 2', N'Jalan Supplier 2 ', N'08181819289', N'supplier2@gmail.com', N'K005')
GO


-- ----------------------------
-- Table structure for TR_DETAIL_PENJUALAN
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TR_DETAIL_PENJUALAN]') AND type IN ('U'))
	DROP TABLE [dbo].[TR_DETAIL_PENJUALAN]
GO

CREATE TABLE [dbo].[TR_DETAIL_PENJUALAN] (
  [KODE_DETAIL] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [QTY] int  NULL,
  [SUBTOTAL] int  NULL,
  [DISKON] int  NULL,
  [HARGA_SATUAN] int  NULL,
  [KODE_BARANG] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [NO_NOTA] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TR_DETAIL_PENJUALAN] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TR_DETAIL_PENJUALAN
-- ----------------------------
INSERT INTO [dbo].[TR_DETAIL_PENJUALAN] ([KODE_DETAIL], [QTY], [SUBTOTAL], [DISKON], [HARGA_SATUAN], [KODE_BARANG], [NO_NOTA]) VALUES (N'D001', N'1', N'90000', N'10', N'100000', N'B002', N'TR001')
GO


-- ----------------------------
-- Table structure for TR_HEADER_PENJUALAN
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TR_HEADER_PENJUALAN]') AND type IN ('U'))
	DROP TABLE [dbo].[TR_HEADER_PENJUALAN]
GO

CREATE TABLE [dbo].[TR_HEADER_PENJUALAN] (
  [NO_NOTA] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [TANGGAL_TRANSAKSI] date  NULL,
  [HARGA_TOTAL] int  NULL,
  [GLOBAL_DISKON] int  NULL,
  [KODE_CUSTOMER] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [KODE_KARYAWAN] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TR_HEADER_PENJUALAN] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TR_HEADER_PENJUALAN
-- ----------------------------
INSERT INTO [dbo].[TR_HEADER_PENJUALAN] ([NO_NOTA], [TANGGAL_TRANSAKSI], [HARGA_TOTAL], [GLOBAL_DISKON], [KODE_CUSTOMER], [KODE_KARYAWAN]) VALUES (N'TR001', N'2013-03-12', N'194400', N'20', N'C002', N'k001')
GO


-- ----------------------------
-- Primary Key structure for table MST_BARANG
-- ----------------------------
ALTER TABLE [dbo].[MST_BARANG] ADD CONSTRAINT [PK_MST_BARANG] PRIMARY KEY CLUSTERED ([KODE_BARANG])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MST_CUSTOMER
-- ----------------------------
ALTER TABLE [dbo].[MST_CUSTOMER] ADD CONSTRAINT [PK_MST_CUSTOMER] PRIMARY KEY CLUSTERED ([KODE_CUSTOMER])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MST_KARYAWAN
-- ----------------------------
ALTER TABLE [dbo].[MST_KARYAWAN] ADD CONSTRAINT [PK_MST_KARYAWAN] PRIMARY KEY CLUSTERED ([KODE_KARYAWAN])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MST_KOTA
-- ----------------------------
ALTER TABLE [dbo].[MST_KOTA] ADD CONSTRAINT [PK_MST_KOTA] PRIMARY KEY CLUSTERED ([KODE_KOTA])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MST_PROVINSI
-- ----------------------------
ALTER TABLE [dbo].[MST_PROVINSI] ADD CONSTRAINT [PK_MST_PROVINSI] PRIMARY KEY CLUSTERED ([KODE_PROVINSI])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MST_SUPPLIER
-- ----------------------------
ALTER TABLE [dbo].[MST_SUPPLIER] ADD CONSTRAINT [PK_MST_SUPPLIER] PRIMARY KEY CLUSTERED ([KODE_SUPPLIER])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TR_DETAIL_PENJUALAN
-- ----------------------------
ALTER TABLE [dbo].[TR_DETAIL_PENJUALAN] ADD CONSTRAINT [PK_TR_DETAIL_PENJUALAN] PRIMARY KEY CLUSTERED ([KODE_DETAIL])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TR_HEADER_PENJUALAN
-- ----------------------------
ALTER TABLE [dbo].[TR_HEADER_PENJUALAN] ADD CONSTRAINT [PK_TR_HEADER_PENJUALAN] PRIMARY KEY CLUSTERED ([NO_NOTA])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

