USE [master]
GO
CREATE DATABASE [Fashion_Website]
GO
USE [Fashion_Website]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/21/2025 11:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL,
	[Price] [decimal](18, 3) NULL,
	[Name] [varchar](50) NULL,
	[Image] [varchar](310) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/21/2025 11:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/21/2025 11:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NOT NULL,
	[TotalMoney] [decimal](18, 3) NULL,
	[OrderDate] [datetime] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK__Orders__C3905BAF8F74F7C7] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/21/2025 11:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Image] [varchar](255) NOT NULL,
	[Price] [decimal](18, 3) NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[Description] [varchar](255) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Sell_ID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (31, N'tri', N'123', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (32, N'hieu', N'123', 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (33, N'kien', N'123', 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Men_Fashion')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Women_Fashion')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Kids_Fashion')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Unisex_Fashion')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (2, N'Micah', CAST(1720.000 AS Decimal(18, 3)), CAST(N'2025-03-09T16:39:17.413' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (3, N'Micah', CAST(2020.000 AS Decimal(18, 3)), CAST(N'2025-03-09T16:40:03.573' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (8, N'Katell', CAST(860.000 AS Decimal(18, 3)), CAST(N'2025-03-09T21:30:55.307' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (9, N'Katell', CAST(850.000 AS Decimal(18, 3)), CAST(N'2025-03-09T21:30:59.737' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (10, N'tri', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-10T07:22:05.107' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (11, N'tri', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-10T07:22:10.363' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (19, N'hieu', CAST(1900.000 AS Decimal(18, 3)), CAST(N'2025-03-10T09:16:02.303' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (20, N'hieu', CAST(980.000 AS Decimal(18, 3)), CAST(N'2025-03-10T09:16:12.160' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (21, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-10T09:44:29.700' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (26, N'hieu', CAST(1110.000 AS Decimal(18, 3)), CAST(N'2025-03-11T10:29:56.860' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (27, N'hieu', CAST(1660.000 AS Decimal(18, 3)), CAST(N'2025-03-11T10:30:12.850' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (28, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-11T10:30:16.823' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (29, N'hieu', CAST(1110.000 AS Decimal(18, 3)), CAST(N'2025-03-13T00:05:54.767' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (40, N'hieu', CAST(540.000 AS Decimal(18, 3)), CAST(N'2025-03-16T21:40:37.227' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (41, N'hieu', CAST(1070.000 AS Decimal(18, 3)), CAST(N'2025-03-16T21:41:53.397' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (53, N'hieu', CAST(2610.000 AS Decimal(18, 3)), CAST(N'2025-03-17T08:59:19.143' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (54, N'hieu', CAST(1210.000 AS Decimal(18, 3)), CAST(N'2025-03-17T09:01:54.540' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (55, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T09:01:57.320' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (64, N'hieu', CAST(280.000 AS Decimal(18, 3)), CAST(N'2025-03-17T09:16:22.890' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (71, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T14:34:17.087' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (72, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T14:34:35.443' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (73, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T14:44:06.433' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (74, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T14:52:45.370' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (75, N'hieu', CAST(1800.000 AS Decimal(18, 3)), CAST(N'2025-03-17T14:54:01.227' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (76, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:00:46.093' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (77, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:00:54.437' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (78, N'hieu', CAST(3000.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:01:35.300' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (79, N'hieu', CAST(3000.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:02:00.960' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (80, N'hieu', CAST(3000.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:06:50.510' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (81, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:06:55.990' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (82, N'hieu', CAST(1500.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:07:07.460' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (83, N'hieu', CAST(600.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:07:29.190' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (84, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:10:01.920' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (85, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:11:14.847' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (86, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:11:32.497' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (87, N'hieu', CAST(600.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:11:40.657' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (88, N'hieu', CAST(600.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:11:45.850' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (89, N'hieu', CAST(600.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:11:51.933' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (90, N'hieu', CAST(600.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:11:57.020' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (91, N'hieu', CAST(1140.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:12:11.430' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (92, N'hieu', CAST(1140.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:12:16.290' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (93, N'hieu', CAST(1140.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:14:10.143' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (94, N'hieu', CAST(1800.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:14:17.507' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (95, N'hieu', CAST(1800.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:14:30.250' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (96, N'hieu', CAST(1800.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:14:35.400' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (97, N'hieu', CAST(1800.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:14:41.210' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (98, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:16:32.340' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (99, N'hieu', CAST(600.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:16:36.000' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (100, N'hieu', CAST(600.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:17:04.790' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (101, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:17:09.640' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (102, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:17:23.720' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (103, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:17:42.363' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (104, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:17:46.403' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (105, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:17:50.980' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (106, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:17:54.687' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (107, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:17:59.463' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (108, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:18:08.997' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (109, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:20:22.397' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (110, N'hieu', CAST(270.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:20:27.553' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (111, N'hieu', CAST(270.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:20:31.977' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (112, N'hieu', CAST(270.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:20:36.663' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (113, N'hieu', CAST(270.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:20:44.630' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (114, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:21:27.360' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (115, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:21:31.167' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (116, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:22:11.633' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (117, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:22:15.183' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (118, N'hieu', CAST(600.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:22:19.023' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (119, N'hieu', CAST(900.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:22:22.697' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (120, N'hieu', CAST(1200.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:22:26.610' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (121, N'hieu', CAST(2700.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:22:30.520' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (122, N'hieu', CAST(2700.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:22:45.863' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (123, N'hieu', CAST(270.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:23:05.203' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (124, N'hieu', CAST(540.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:23:08.810' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (125, N'hieu', CAST(810.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:23:11.980' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (126, N'hieu', CAST(1080.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:23:15.130' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (127, N'hieu', CAST(2430.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:23:18.750' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (128, N'hieu', CAST(2430.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:24:15.960' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (129, N'hieu', CAST(310.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:24:20.427' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (130, N'hieu', CAST(620.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:24:24.760' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (131, N'hieu', CAST(930.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:24:28.093' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (132, N'hieu', CAST(2480.000 AS Decimal(18, 3)), CAST(N'2025-03-17T15:24:32.013' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (133, N'hieu', CAST(2480.000 AS Decimal(18, 3)), CAST(N'2025-03-20T12:07:16.897' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (134, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-03-20T12:07:23.500' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (135, N'hieu', CAST(900.000 AS Decimal(18, 3)), CAST(N'2025-03-20T12:07:32.550' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (136, N'hieu', CAST(2400.000 AS Decimal(18, 3)), CAST(N'2025-03-20T12:07:36.340' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (137, N'hieu', CAST(2400.000 AS Decimal(18, 3)), CAST(N'2025-03-20T15:22:20.603' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (138, N'hieu', CAST(290.000 AS Decimal(18, 3)), CAST(N'2025-04-25T00:20:31.630' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (139, N'hieu', CAST(280.000 AS Decimal(18, 3)), CAST(N'2025-04-25T00:20:35.843' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (140, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-04-25T00:20:40.150' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (141, N'hieu', CAST(570.000 AS Decimal(18, 3)), CAST(N'2025-04-25T00:21:40.563' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (142, N'hieu', CAST(1190.000 AS Decimal(18, 3)), CAST(N'2025-04-25T00:22:01.743' AS DateTime), N'1')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (143, N'hieu', CAST(0.000 AS Decimal(18, 3)), CAST(N'2025-05-05T18:49:36.827' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (144, N'hieu', CAST(300.000 AS Decimal(18, 3)), CAST(N'2025-05-05T18:49:43.270' AS DateTime), N'0')
GO
INSERT [dbo].[Orders] ([OrderID], [user], [TotalMoney], [OrderDate], [status]) VALUES (145, N'hieu', CAST(290.000 AS Decimal(18, 3)), CAST(N'2025-05-05T18:49:47.807' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (25, N'
Couple outfit', N'https://cdn.prod.website-files.com/5f5e1d8a999a26ccc7a92019/618bf7a5b98ef379bb654f07_we-should-deconstruct-fashion-the-failures-of-unisex-clothing-project.jpg', CAST(300.000 AS Decimal(18, 3)), N'For every couple', N'Going out without seeing each other because we have Couple outfit', 4, 14)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (26, N'Ripped jeans', N'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lg4jzfsixsoa9b', CAST(270.000 AS Decimal(18, 3)), N'Ripped jeans', N'New style, a little torn but still stylish', 1, 20)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (27, N'Women''s reception clothes', N'https://bizweb.dktcdn.net/100/407/972/products/dong-phuc-le-tan-2.jpg?v=1721156240673', CAST(310.000 AS Decimal(18, 3)), N'New standard', N'
Experience in communicating or welcoming customers with professionalism', 2, 3)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (29, N'Children''s dress', N'https://i.ytimg.com/vi/Yw7hfrLVodg/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AHUBoAC4AOKAgwIABABGH8gNSg-MA8=&rs=AOn4CLBnXS9oz6SeYeshRvmGe0ahfXKX_g', CAST(350.000 AS Decimal(18, 3)), N'Super cute dress', N'
Put on the spirit and a fierce vitality like a swan with wings', 3, 17)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (33, N'Couple Farmer Overalls', N'https://youthincmag.com/wp-content/uploads/2019/11/Unisex-Dungarees-Pinterest.jpg', CAST(290.000 AS Decimal(18, 3)), N'The Farmers'' Army', N'The statue looks very old but exudes elegance, simplicity and carries a lot of meaning for the viewer.', 4, 11)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (36, N'Fur clothes for children', N'https://hthaostudio.com/wp-content/uploads/2018/05/Thoi-trang-con-nit-7.jpg', CAST(290.000 AS Decimal(18, 3)), N'Fur clothes for children', N'Warm, fur clothes for children bring comfort and don''t worry about being cold in the winter when going out', 3, 10)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (37, N'Couple shirts', N'https://www.umi1.co.uk/cdn/shop/articles/unisex-thumb_1200x1200.jpg?v=1631692978', CAST(230.000 AS Decimal(18, 3)), N'Couple shirts', N'T-shirts help keep you cool when worn in the winter', 4, 14)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (39, N'
Men''s shirt', N'https://product.hstatic.net/1000360022/product/ao-so-mi-cotton-nam-tay-dai-comfortable-stripe-form-regular__10__720c9aa1754c45619a1e1c1fc2991b44_1024x1024.jpg', CAST(250.000 AS Decimal(18, 3)), N'High quality men''s shirts', N'High quality, cool and elegant material', 1, 20)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (40, N'Women''s dress', N'https://savani.vn/images/image/2024/12/27/large/WVD002K4-3-N01-chan-vay%20%20(6).webp', CAST(320.000 AS Decimal(18, 3)), N'Elegant women''s dress', N'Modern, flattering design', 2, 3)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (41, N'Children''s plaid jacket', N'https://ardilla.com.vn/wp-content/uploads/2022/12/TB8903JK2_4.jpg', CAST(290.000 AS Decimal(18, 3)), N'Personality plaid jacket', N'Youthful and dynamic style', 3, 17)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (43, N'Hoodie unisex', N'https://down-vn.img.susercontent.com/file/563b0b7d03587cda2283cc3164676783', CAST(260.000 AS Decimal(18, 3)), N'Comfortable hoodie', N'Suitable for both men', 1, 1)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (44, N'Women Pant', N'https://images2.thanhnien.vn/528068263637045248/2023/12/14/quan-dai-lyp-1-1702519346107336386144.jpg', CAST(250.000 AS Decimal(18, 3)), N'Women', N'Good', 2, 1)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (46, N'Men ne', N'https://cbu01.alicdn.com/img/ibank/O1CN01F8379E1kSPIFRLGw5_!!2216695004682-0-cib.jpg', CAST(320.000 AS Decimal(18, 3)), N'MEn pans', N'Good for men. Very flexible', 1, 1)
GO
INSERT [dbo].[Product] ([ID], [Name], [Image], [Price], [Title], [Description], [CategoryID], [Sell_ID]) VALUES (48, N'Girl clothes', N'https://pos.nvncdn.com/4ef0bf-108661/ps/content/20241210_R78B4O2m.jpg', CAST(250.000 AS Decimal(18, 3)), N'Good', N'Beatifull like HOA', 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__OrderDat__4E88ABD4]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [Fashion_Website] SET  READ_WRITE 
GO
