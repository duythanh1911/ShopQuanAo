CREATE DATABASE [ShopQuanAo]
GO
USE [ShopQuanAo]
GO
/****** Object:  Table [dbo].[category]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[metakey] [nvarchar](150) NULL,
	[metadesc] [nvarchar](150) NULL,
	[created_at] [smalldatetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](15) NULL,
	[title] [nvarchar](255) NULL,
	[detail] [ntext] NULL,
	[created_at] [smalldatetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[link](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[slug] [varchar](max) NULL,
	[tableId] [int] NULL,
	[type] [varchar](200) NULL,
	[parentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[link] [varchar](255) NULL,
	[tableid] [int] NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[position] [varchar](255) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[userid] [int] NOT NULL,
	[created_ate] [smalldatetime] NOT NULL,
	[exportdate] [smalldatetime] NULL,
	[deliveryaddress] [nvarchar](255) NOT NULL,
	[deliveryname] [nvarchar](100) NOT NULL,
	[deliveryphone] [varchar](255) NOT NULL,
	[deliveryemail] [varchar](255) NOT NULL,
	[deliveryPaymentMethod] [nvarchar](255) NOT NULL,
	[StatusPayment] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordersdetail]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordersdetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[priceSale] [int] NOT NULL,
	[amount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[topid] [int] NULL,
	[title] [nvarchar](max) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[detail] [ntext] NULL,
	[img] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[metakey] [nvarchar](150) NOT NULL,
	[metadesc] [nvarchar](150) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[catid] [int] NOT NULL,
	[Submenu] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[slug] [nvarchar](255) NOT NULL,
	[img] [varchar](100) NOT NULL,
	[detail] [ntext] NOT NULL,
	[number] [int] NOT NULL,
	[price] [float] NOT NULL,
	[pricesale] [float] NOT NULL,
	[metakey] [nvarchar](150) NULL,
	[metadesc] [nvarchar](max) NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
	[sold] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[accessName] [varchar](255) NOT NULL,
	[description] [nvarchar](225) NULL,
	[GropID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[url] [varchar](255) NOT NULL,
	[position] [varchar](100) NOT NULL,
	[img] [varchar](100) NOT NULL,
	[orders] [int] NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[metakey] [varchar](150) NULL,
	[metadesc] [nvarchar](max) NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 10/22/2020 1:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[username] [varchar](225) NOT NULL,
	[password] [varchar](64) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gender] [nvarchar](5) NULL,
	[phone] [varchar](20) NULL,
	[img] [varchar](100) NULL,
	[access] [int] NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Yammaha', N'yammaha', 0, 1, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-04T14:32:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'Nữ', N'c-nu', 0, 2, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Phụ Kiện', N'phu-kien', 0, 3, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Hon da', N'hon-da', 0, 4, N'ererhhh', N'dsfsd', CAST(N'2020-05-21T20:56:00' AS SmallDateTime), 1, CAST(N'2020-09-04T14:32:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Em Bé', N'em-be', 0, 6, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (9, N'Áo Sơ Mi Nam', N'ao-so-mi-nam', 0, 9, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (10, N'Áo Khoác Nam', N'ao-khoac-nam', 0, 10, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Quần Jeans Nam', N'quan-jeans-nam', 0, 11, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (12, N'Áo Phông Nữ', N'ao-phong-nu', 2, 12, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (13, N'Áo Sơ Mi Nữ', N'ao-so-mi-nu', 2, 13, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-04T14:32:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (14, N'Áo Khoác Nữ', N'ao-khoac-nu', 2, 14, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (15, N'Chân Váy', N'chan-vay', 2, 15, N'erer', N'dsfsd', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-14T09:42:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[contact] ON 

INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'nguyen van hung', N'vanhung3339@gmail.com', N'0975271384', N'Làm thế nào để có nó?', N'Có rất nhiều biến thể của Lorem Ipsum mà bạn có thể tìm thấy, nhưng đa số được biến đổi bằng cách thêm các yếu tố hài hước, các từ ngẫu nhiên có khi không có vẻ gì là có ý nghĩa. Nếu bạn định sử dụng một đoạn Lorem Ipsum, bạn nên kiểm tra kĩ để chắn chắn là không có gì nhạy cảm được giấu ở giữa đoạn văn bản. Tất cả các công cụ sản xuất văn bản mẫu Lorem Ipsum đều được làm theo cách lặp đi lặp lại các đoạn chữ cho tới đủ thì thôi, khiến cho lipsum.com trở thành công cụ sản xuất Lorem Ipsum đáng giá nhất trên mạng. Trang web này sử dụng hơn 200 từ la-tinh, kết hợp thuần thục nhiều cấu trúc câu để tạo ra văn bản Lorem Ipsum trông có vẻ thật sự hợp lí. Nhờ thế, văn bản Lorem Ipsum được tạo ra mà không cần một sự lặp lại nào, cũng không cần chèn thêm các từ ngữ hóm hỉnh hay thiếu trật tự.', CAST(N'2019-11-26T11:44:00' AS SmallDateTime), NULL, CAST(N'2019-11-26T12:15:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'ád', N'ád', N'12312312', N'tôi muôn mua @@2', N'nhưng tui k có tiền', CAST(N'2019-11-26T00:00:00' AS SmallDateTime), 1, CAST(N'2019-11-26T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'nguyen van hhhh', N'anh4docganh@gmail.com', N'09747328372', N'0650320203205', N'fSSSSSSSSSSSSSSSSSSSSSSSSSS', CAST(N'2020-04-11T09:43:00' AS SmallDateTime), NULL, CAST(N'2020-07-10T17:44:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (7, N'nguyen van hhhh', N'vanhung3339@gmail.com', N'09747328372', N'0650320203205', N'dddddddddddddddddddddddddddddddd', CAST(N'2020-04-29T23:31:00' AS SmallDateTime), NULL, CAST(N'2020-05-07T08:51:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'nguyen van hhhh', N'vanhung3339@gmail.com', N'09747328372', N'0650320203205', N'?dasdasdadddddddddddddddddddddddddddddddddddddddddddd', CAST(N'2020-04-29T23:34:00' AS SmallDateTime), NULL, CAST(N'2020-05-07T08:51:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[contact] OFF
SET IDENTITY_INSERT [dbo].[link] ON 

INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (1, N'ao-so-mi-03', 1, N'ProductDetail', 3)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (2, N'ao-so-mi-04', 1, N'ProductDetail', 4)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (3, N'ao-so-mi-05', 1, N'ProductDetail', 5)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (4, N'ao-so-mi-06', 1, N'ProductDetail', 6)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (5, N'ao-so-mi-07', 1, N'ProductDetail', 7)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (6, N'ao-so-mi-08', 1, N'ProductDetail', 8)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (7, N'ao-so-mi-09', 1, N'ProductDetail', 9)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (8, N'ao-so-mi-10', 1, N'ProductDetail', 10)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (9, N'ao-so-mi-11', 1, N'ProductDetail', 11)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (10, N'ao-so-mi-12', 1, N'ProductDetail', 12)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (11, N'ao-so-mi-13', 1, N'ProductDetail', 13)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (12, N'ao-so-mi-14', 1, N'ProductDetail', 14)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (13, N'ao-so-mi-15', 1, N'ProductDetail', 15)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (14, N'ao-so-mi-16', 1, N'ProductDetail', 16)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (15, N'ao-so-mi-17', 1, N'ProductDetail', 17)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (16, N'ao-so-mi-18', 1, N'ProductDetail', 18)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (17, N'ao-so-mi-21', 1, N'ProductDetail', 21)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (18, N'ao-so-mi-22', 1, N'ProductDetail', 22)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (19, N'ao-khoac-nam-01', 1, N'ProductDetail', 23)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (20, N'ao-khoac-nam-02', 1, N'ProductDetail', 24)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (21, N'ao-khoac-nam-03', 1, N'ProductDetail', 25)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (22, N'ao-khoac-nam-04', 1, N'ProductDetail', 26)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (23, N'ao-khoac-nam-05', 1, N'ProductDetail', 27)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (24, N'ao-khoac-nam-06', 1, N'ProductDetail', 28)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (25, N'ao-khoac-nam-07', 1, N'ProductDetail', 29)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (26, N'ao-khoac-nam-08', 1, N'ProductDetail', 30)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (27, N'ao-khoac-nam-09', 1, N'ProductDetail', 31)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (28, N'ao-khoac-nam-10', 1, N'ProductDetail', 32)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (29, N'ao-khoac-nam-11', 1, N'ProductDetail', 33)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (30, N'ao-khoac-nam-12', 1, N'ProductDetail', 34)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (31, N'ao-khoac-nam-13', 1, N'ProductDetail', 35)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (32, N'ao-khoac-nam-15', 1, N'ProductDetail', 37)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (33, N'ao-khoac-nam-16', 1, N'ProductDetail', 38)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (34, N'ao-khoac-nam-17', 1, N'ProductDetail', 39)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (35, N'ao-khoac-nam-18', 1, N'ProductDetail', 40)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (36, N'ao-khoac-nam-19', 1, N'ProductDetail', 41)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (37, N'ao-khoac-nam-20', 1, N'ProductDetail', 42)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (38, N'ao-khoac-nam-21', 1, N'ProductDetail', 43)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (39, N'Quan-jean-nam-01', 1, N'ProductDetail', 45)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (40, N'Quan-jean-nam-02', 1, N'ProductDetail', 46)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (41, N'Quan-jean-nam-03', 1, N'ProductDetail', 47)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (42, N'Quan-jean-nam-04', 1, N'ProductDetail', 48)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (43, N'Quan-jean-nam-05', 1, N'ProductDetail', 49)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (44, N'Quan-jean-nam-06', 1, N'ProductDetail', 50)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (45, N'Quan-jean-nam-07', 1, N'ProductDetail', 51)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (46, N'Quan-jean-nam-08', 1, N'ProductDetail', 52)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (47, N'ao-so-mi-nu-01', 1, N'ProductDetail', 53)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (48, N'ao-so-mi-nu-02', 1, N'ProductDetail', 54)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (49, N'ao-so-mi-nu-03', 1, N'ProductDetail', 55)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (50, N'ao-so-mi-nu-04', 1, N'ProductDetail', 56)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (51, N'ao-so-mi-nu-05', 1, N'ProductDetail', 57)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (52, N'ao-so-mi-nu-06', 1, N'ProductDetail', 58)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (53, N'ao-so-mi-nu-07', 1, N'ProductDetail', 59)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (54, N'ao-so-mi-nu-08', 1, N'ProductDetail', 60)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (55, N'ao-so-mi-nu-09', 1, N'ProductDetail', 61)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (56, N'ao-so-mi-nu-10', 1, N'ProductDetail', 62)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (57, N'ao-so-mi-nu-11', 1, N'ProductDetail', 63)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (58, N'ao-so-mi-nu-12', 1, N'ProductDetail', 64)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (59, N'ao-so-mi-nu-13', 1, N'ProductDetail', 65)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (60, N'ao-khoat-nu-01', 1, N'ProductDetail', 66)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (61, N'ao-khoat-nu-02', 1, N'ProductDetail', 67)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (62, N'ao-khoat-nu-03', 1, N'ProductDetail', 68)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (63, N'ao-khoat-nu-04', 1, N'ProductDetail', 69)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (64, N'ao-khoat-nu-05', 1, N'ProductDetail', 70)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (65, N'ao-khoat-nu-06', 1, N'ProductDetail', 71)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (66, N'ao-khoat-nu-07', 1, N'ProductDetail', 72)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (67, N'ao-khoat-nu-08', 1, N'ProductDetail', 73)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (68, N'ao-khoat-nu-04', 1, N'ProductDetail', 74)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (69, N'ao-khoat-nu-05', 1, N'ProductDetail', 75)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (70, N'ao-khoat-nu-06', 1, N'ProductDetail', 76)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (71, N'ao-khoat-nu-07', 1, N'ProductDetail', 77)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (72, N'ao-khoat-nu-06', 1, N'ProductDetail', 78)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (73, N'ao-khoat-nu-07', 1, N'ProductDetail', 79)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (74, N'ao-khoat-nu-08', 1, N'ProductDetail', 80)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (75, N'ao-khoat-nu-04', 1, N'ProductDetail', 81)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (76, N'ao-khoat-nu-05', 1, N'ProductDetail', 82)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (77, N'ao-khoat-nu-06', 1, N'ProductDetail', 83)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (78, N'ao-khoat-nu-07', 1, N'ProductDetail', 84)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (79, N'ao-khoat-nu-08', 1, N'ProductDetail', 85)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (80, N'ao-khoat-nu-08', 1, N'ProductDetail', 86)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (81, N'ao-phong-nu-01', 1, N'ProductDetail', 87)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (82, N'ao-phong-nu-02', 1, N'ProductDetail', 88)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (83, N'ao-phong-nu-03', 1, N'ProductDetail', 89)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (84, N'ao-phong-nu-04', 1, N'ProductDetail', 90)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (85, N'ao-phong-nu-05', 1, N'ProductDetail', 91)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (86, N'ao-phong-nu-06', 1, N'ProductDetail', 92)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (87, N'ao-phong-nu-07', 1, N'ProductDetail', 93)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (88, N'ao-phong-nu-08', 1, N'ProductDetail', 94)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (89, N'ao-phong-nu-04', 1, N'ProductDetail', 95)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (90, N'ao-phong-nu-05', 1, N'ProductDetail', 96)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (91, N'ao-phong-nu-06', 1, N'ProductDetail', 97)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (92, N'ao-phong-nu-07', 1, N'ProductDetail', 98)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (93, N'ao-phong-nu-06', 1, N'ProductDetail', 99)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (94, N'ao-phong-nu-07', 1, N'ProductDetail', 100)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (95, N'ao-phong-nu-08', 1, N'ProductDetail', 101)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (96, N'ao-phong-nu-04', 1, N'ProductDetail', 102)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (97, N'ao-phong-nu-05', 1, N'ProductDetail', 103)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (98, N'ao-phong-nu-06', 1, N'ProductDetail', 104)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (99, N'ao-phong-nu-07', 1, N'ProductDetail', 105)
GO
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (100, N'ao-phong-nu-08', 1, N'ProductDetail', 106)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (101, N'chan-vay-nu-01', 1, N'ProductDetail', 107)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (102, N'chan-vay-nu-02', 1, N'ProductDetail', 108)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (103, N'chan-vay-nu-03', 1, N'ProductDetail', 109)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (104, N'chan-vay-nu-04', 1, N'ProductDetail', 110)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (105, N'chan-vay-nu-05', 1, N'ProductDetail', 111)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (106, N'chan-vay-nu-06', 1, N'ProductDetail', 112)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (107, N'chan-vay-nu-07', 1, N'ProductDetail', 113)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (108, N'chan-vay-nu-08', 1, N'ProductDetail', 114)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (109, N'chan-vay-nu-09', 1, N'ProductDetail', 115)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (110, N'em-be-01', 1, N'ProductDetail', 116)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (111, N'em-be-02', 1, N'ProductDetail', 117)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (112, N'em-be-03', 1, N'ProductDetail', 118)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (113, N'em-be-04', 1, N'ProductDetail', 119)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (114, N'em-be-05', 1, N'ProductDetail', 120)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (115, N'em-be-06', 1, N'ProductDetail', 121)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (116, N'em-be-07', 1, N'ProductDetail', 122)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (117, N'em-be-08', 1, N'ProductDetail', 123)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (118, N'em-be-09', 1, N'ProductDetail', 124)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (119, N'em-be-10', 1, N'ProductDetail', 125)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (120, N'em-be-11', 1, N'ProductDetail', 126)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (121, N'em-be-12', 1, N'ProductDetail', 127)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (122, N'em-be-13', 1, N'ProductDetail', 128)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (123, N'em-be-14', 1, N'ProductDetail', 129)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (124, N'em-be-15', 1, N'ProductDetail', 130)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (125, N'em-be-16', 1, N'ProductDetail', 131)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (126, N'em-be-17', 1, N'ProductDetail', 132)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (127, N'em-be-18', 1, N'ProductDetail', 133)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (128, N'em-be-19', 1, N'ProductDetail', 134)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (129, N'em-be-20', 1, N'ProductDetail', 135)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (130, N'phu-kien-01', 1, N'ProductDetail', 136)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (131, N'phu-kien-02', 1, N'ProductDetail', 137)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (132, N'phu-kien-03', 1, N'ProductDetail', 138)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (133, N'phu-kien-04', 1, N'ProductDetail', 139)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (134, N'phu-kien-05', 1, N'ProductDetail', 140)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (135, N'phu-kien-06', 1, N'ProductDetail', 141)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (136, N'phu-kien-07', 1, N'ProductDetail', 142)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (137, N'phu-kien-08', 1, N'ProductDetail', 143)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (138, N'phu-kien-09', 1, N'ProductDetail', 144)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (139, N'be-trai-01', 1, N'ProductDetail', 145)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (140, N'be-trai-02', 1, N'ProductDetail', 146)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (141, N'be-trai-03', 1, N'ProductDetail', 147)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (142, N'be-trai-04', 1, N'ProductDetail', 148)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (143, N'be-trai-05', 1, N'ProductDetail', 149)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (144, N'be-trai-06', 1, N'ProductDetail', 150)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (145, N'be-trai-07', 1, N'ProductDetail', 151)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (146, N'be-trai-08', 1, N'ProductDetail', 152)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (147, N'be-trai-09', 1, N'ProductDetail', 153)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (148, N'be-trai---10', 1, N'ProductDetail', 154)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (149, N'be-gai---01', 1, N'ProductDetail', 155)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (150, N'be-gai---02', 1, N'ProductDetail', 156)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (151, N'be-gai---03', 1, N'ProductDetail', 157)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (152, N'be-gai---04', 1, N'ProductDetail', 158)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (153, N'c-nam', 2, N'category', 1)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (154, N'c-nu', 2, N'category', 2)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (155, N'phu-kien', 2, N'category', 3)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (156, N'be-trai', 2, N'category', 4)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (157, N'em-be', 2, N'category', 6)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (158, N'ao-so-mi-nam', 2, N'category', 9)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (159, N'ao-khoac-nam', 2, N'category', 10)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (160, N'quan-jeans-nam', 2, N'category', 11)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (161, N'ao-phong-nu', 2, N'category', 12)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (162, N'ao-so-mi-nu', 2, N'category', 13)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (163, N'ao-khoac-nu', 2, N'category', 14)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (188, N'gioi-thieu', 3, N'topic', 1)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (189, N'thoi-su', 3, N'topic', 2)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (190, N'the-gioi', 3, N'topic', 3)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (191, N'khinh-doanh', 3, N'topic', 4)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (192, N'am-nhac', 3, N'topic', 5)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (193, N'giai-tri', 3, N'topic', 6)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (194, N'thoi-trang', 3, N'topic', 7)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (195, N'phim-anh', 3, N'topic', 8)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (196, N'cong-nghe', 3, N'topic', 9)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (197, N'am-thuc', 3, N'topic', 10)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (198, N'the-thao', 3, N'topic', 11)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (199, N'du-lich', 3, N'topic', 12)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (200, N'suc-khoe', 3, N'topic', 13)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (201, N'slug-1', 4, N'PostDetail', 1)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (202, N'slug-3', 4, N'PostDetail', 3)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (203, N'slug-4', 4, N'PostDetail', 4)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (204, N'slug-5', 4, N'PostDetail', 5)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (205, N'slug-6', 4, N'PostDetail', 6)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (206, N'slug-7', 4, N'PostDetail', 7)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (207, N'slug-8', 4, N'PostDetail', 8)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (208, N'slug-9', 4, N'PostDetail', 9)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (209, N'slug-10', 4, N'PostDetail', 10)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (210, N'slug-11', 4, N'PostDetail', 11)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (211, N'slug-12', 4, N'PostDetail', 12)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (212, N'slug-13', 4, N'PostDetail', 13)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (213, N'slug-14', 4, N'PostDetail', 14)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (214, N'slug-15', 4, N'PostDetail', 15)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (215, N'slug-16', 4, N'PostDetail', 16)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (216, N'slug-17', 4, N'PostDetail', 17)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (217, N'slug-18', 4, N'PostDetail', 18)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (218, N'-tieng-set-trong-mua--tap-45:-hai-sang-tu-dung-chuyen-ngu-voi-hang-xom', 4, N'PostDetail', 19)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (219, N'-nhung-khoanh-khac-quyen-ru-cua-angelina-jolie-tren-man-anh', 4, N'PostDetail', 20)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (220, N'lich-su-phat-tuyen-trang-web-thuong-mai-dien-tu-so-1-viet-nam-hungshop', 4, N'PostDetail', 26)
SET IDENTITY_INSERT [dbo].[link] OFF
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Trang Chủ', N'menu', N'', 2, 0, 1, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-05T13:03:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Liên Hệ', N'page', N'lien-he', 2, 0, 3, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Sản Phẩm', N'menu', N'san-pham', 2, 0, 4, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'Bài Viết', N'menu', N'bai-viet', 2, 0, 5, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Tất Cả Sản Phẩm', N'menu', N'sanpham', 2, 4, 10, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-03T22:32:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (7, N'Em bé', N'menu', N'em-be', 2, 4, 13, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-05T22:39:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Nữ', N'menu', N'c-nu', 2, 4, 14, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-05T22:40:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (10, N'Phu-Kien', N'menu', N'phu-kien', 2, 4, 12, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-04T11:19:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (25, N'Áo Sơ Mi Nam', N'menu', N'ao-so-mi-nam', 2, 0, 1, N'mainmenu', CAST(N'2020-05-06T11:31:00' AS SmallDateTime), 1, CAST(N'2020-05-06T11:31:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (26, N'Áo Khoác Nữ', N'menu', N'ao-khoac-nu', 2, 0, 1, N'mainmenu', CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[menu] OFF
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (9, N'e3947841-58bf-4d7d-bcfe-26e0439f9a77', 1, CAST(N'2020-10-22T12:01:00' AS SmallDateTime), CAST(N'2020-10-22T12:01:00' AS SmallDateTime), N'adadadadad', N'ddddddddddddddddddddddd', N'0975271384', N'vadadas@gmial.com', N'Cổng thanh toán MOMO', 1, CAST(N'2020-10-22T12:01:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (10, N'4783010/22/2020 12:02:19 PM', 1, CAST(N'2020-10-22T12:02:00' AS SmallDateTime), CAST(N'2020-10-22T12:02:00' AS SmallDateTime), N'adadadadad', N'dddddddddddd', N'0975271384', N'vadadas@gmial.com', N'Cổng thanh toán Ngân Lượng', 1, CAST(N'2020-10-22T12:02:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (11, N'5798510/22/2020 12:04:02 PM', 1, CAST(N'2020-10-22T12:04:00' AS SmallDateTime), CAST(N'2020-10-22T12:04:00' AS SmallDateTime), N'adadadadad', N'ddddddddddddddddddddddd', N'0975271384', N'd3339@gmial.com', N'ATM Online qua ngân lượng', 1, CAST(N'2020-10-22T12:04:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (8, N'c1f895ff-058a-446d-9251-06d2063aaf74', 1, CAST(N'2020-10-22T11:58:00' AS SmallDateTime), CAST(N'2020-10-22T11:58:00' AS SmallDateTime), N'cat minh phu cay', N'sdasdas', N'0975271384', N'vanhung3339@gmail.com', N'Cổng thanh toán MOMO', 1, CAST(N'2020-10-22T11:58:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[order] OFF
SET IDENTITY_INSERT [dbo].[ordersdetail] ON 

INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (1, 1, 4, 130000, 1, 0, 130000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (9, 9, 4, 130000, 2, 0, 260000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (93, 81, 3, 120000, 1, 0, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (94, 81, 57, 150000, 1, 20, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (95, 81, 58, 160000, 1, 50, 80000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (96, 82, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (97, 82, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (98, 82, 5, 120000, 1, 0, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (99, 83, 14, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (100, 84, 31, 130000, 2, 20, 78000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (101, 84, 5, 120000, 1, 0, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (102, 84, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (103, 85, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (104, 85, 31, 130000, 6, 20, -26000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (105, 85, 14, 130000, 7, 20, -52000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (106, 86, 14, 130000, 4, 20, 26000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (107, 86, 5, 120000, 4, 0, 480000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (108, 86, 30, 160000, 12, 20, -224000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (109, 87, 155, 150000, 1, 0, 150000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (110, 88, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (111, 90, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (112, 91, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (113, 92, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (114, 93, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (115, 94, 51, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (116, 95, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (117, 96, 31, 130000, 2, 20, 78000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (118, 96, 32, 50000, 1, 50, 25000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (119, 96, 155, 150000, 1, 0, 150000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (120, 1, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (121, 2, 51, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (122, 2, 156, 150000, 1, 0, 150000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (123, 3, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (124, 4, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (125, 5, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (126, 6, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (127, 8, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (128, 9, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (129, 10, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (130, 11, 14, 10000, 1, 20, 8000)
SET IDENTITY_INSERT [dbo].[ordersdetail] OFF
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, 5, N'Bảo Thy đáp trả khi bị nhắc nhở nên lịch sự nơi công cộng', N'slug-1', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'amnhac/am1.jpg', N'post', N'metakey', N'metadesc', CAST(N'2020-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-26T13:02:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, 5, N'Đinh Mạnh Ninh: ''Vẫn chưa thể cân bằng sau 2 năm chia tay người yêu''', N'slug-2', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'amnhac/am2.jpg', N'post', N'metakey', N'metadesc', CAST(N'2020-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-27T20:53:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, 5, N'Sau live show cháy vé, MV của Đen Vâu đe dọa vị trí của Jack', N'slug-3', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'amnhac/am3.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, 5, N'Đinh Mạnh Ninh: ''Vẫn chưa thể cân bằng sau 2 năm chia tay người yêu''', N'slug-4', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'amnhac/am4.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, 5, N'MV với dàn khách mời nghệ sĩ của Amee lọt top được nghe nhiều nhất', N'slug-5', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'amnhac/am5.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, 6, N'Dự kiến bổ sung một ngày nghỉ lễ trong năm là ngày Gia đình Việt Nam', N'slug-6', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'giaitri/gt1.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (7, 6, N'Dự kiến bổ sung một ngày nghỉ lễ trong năm là ngày Gia đình Việt Nam', N'slug-7', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'giaitri/gt2.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, 6, N'Dự kiến bổ sung một ngày nghỉ lễ trong năm là ngày Gia đình Việt Nam', N'slug-8', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'giaitri/gt3.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (9, 6, N'Dự kiến bổ sung một ngày nghỉ lễ trong năm là ngày Gia đình Việt Nam', N'slug-9', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'giaitri/gt4.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (10, 6, N'Dự kiến bổ sung một ngày nghỉ lễ trong năm là ngày Gia đình Việt Nam', N'slug-10', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'giaitri/gt5.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, 7, N'3 mẫu giày Nike lấy cảm hứng từ người chết sẽ ra mắt ngày 25/10', N'slug-11', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'thoitrang/tt1.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (12, 7, N'Lisa luôn biết cách diện áo crop top khoe eo thon chưa đến 50 cm', N'slug-12', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'thoitrang/tt2.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (13, 7, N'Miranda Kerr tiết lộ bí quyết luôn trẻ đẹp cho các bà bầu', N'slug-13', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'thoitrang/tt3.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (14, 7, N'Mặc đồ hở sexy là chiến lược của Á hậu Kiều Loan ở cuộc thi quốc tế?', N'slug-14', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'thoitrang/tt4.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (15, 7, N'Đông Nhi và Ông Cao Thắng mặc đẹp đôi trước đám cưới cổ tích', N'slug-15', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'thoitrang/tt5.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (16, 8, N'Những câu chuyện song trùng nổi tiếng trên màn ảnh', N'slug-16', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'phimanh/pa1.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (17, 8, N'Dự kiến bổ sung một ngày nghỉ lễ trong năm là ngày Gia đình Việt Nam', N'slug-17', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'phimanh/pa2.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (18, 8, N'Tổ chức muốn thanh lọc con người trong ‘Hobbs & Shaw’ sẽ còn trở lại', N'slug-18', N'Trước nhiều ý kiến của đại biểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'phimanh/pa3.jpg', N'post', N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (19, 8, N'''Tiếng sét trong mưa'' tập 45: Hai Sáng tự dựng chuyện ngủ với hàng xóm', N'-tieng-set-trong-mua--tap-45:-hai-sang-tu-dung-chuyen-ngu-voi-hang-xom', N'<u><b>Trước nhiều ý kiến của đại biểu Quốc hội về vi</b></u>ệc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.', N'phimanh/pa4.jpg', NULL, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-05-06T21:01:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (20, 8, N' Những khoảnh khắc quyến rũ của Angelina Jolie trên màn ảnh', N'-nhung-khoanh-khac-quyen-ru-cua-angelina-jolie-tren-man-anh', N'Trước nhiều ý kiến của đại b<span style="background-color: rgb(255, 255, 0);"><b><u>iểu Quốc hội về việc thêm một ngày nghỉ lễ, có 2 phương án trình ra Quốc hội là giữ nguyên như hiện hành hoặc bổ sung thêm ngày Gia đình Việt Nam.</u></b></span>', N'phimanh/pa5.jpg', NULL, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-05-06T20:54:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (26, 1, N'Lịch Sử Phát Tuyển Trang web thương mại điện tử số 1 việt nam HUNGSHOP', N'lich-su-phat-tuyen-trang-web-thuong-mai-dien-tu-so-1-viet-nam-hungshop', N'<div data-v-bfbcefa4="" class="top-img" style="outline: none; word-break: break-word; font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, sans-serif; font-size: 15px;"><h1 style="margin-bottom: 10px; font-family: Roboto, Helvetica, Arial, sans-serif; font-weight: 700; line-height: 28px; color: rgb(68, 68, 68); font-size: 17px; padding-top: 15px; padding-bottom: 5px; border-bottom: 2px solid rgb(221, 221, 221);"><div class="mui-zebra-module" id="J_icms-5019644-1526365812889" data-module-id="icms-5019644-1526365812889" data-rmc-id="icms-5019644-1526365812889" data-id="35170" data-name="lzdmod-lzd-act-richtext" data-version="5.0.9" data-cfg-id="undefined" data-spm="icms-5019644-1526365812889" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-richtext" data-spm-anchor-id="a2o4n.11531481.icms-5019644-1526365812889.i0.db802f244ZupyU" style="margin-top: 8px; padding: 8px; overflow-wrap: break-word; word-break: keep-all; overflow: hidden; font-family: Arial, Verdana, sans-serif !important; line-height: normal !important;"><div class="inner-content" style="margin-right: auto; margin-left: auto; width: 1188px; overflow: hidden;"><p style="clear: both; text-align: justify; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="color: rgb(243, 121, 52); font-size: 24px; font-family: Arial, sans-serif;"><span data-spm-anchor-id="a2o4n.11531481.icms-5019644-1526365812889.i2.db802f244ZupyU" style="font-weight: bolder;">About Lazada Group</span></span><span style="color: rgb(243, 121, 52); font-size: 24px;"><span style="font-weight: bolder;"></span></span></p><p style="clear: both; text-align: justify; margin-top: 12px !important; margin-bottom: 12px !important;"><span data-spm-anchor-id="a2o4n.11531481.icms-5019644-1526365812889.i1.db802f244ZupyU" style="color: rgb(25, 31, 37); font-family: Arial, sans-serif;">Founded in 2012, Lazada Group is the leading eCommerce platform in Southeast Asia. We are accelerating progress in Indonesia, Malaysia, the Philippines, Singapore, Thailand and Vietnam through commerce and technology. With the largest logistics and payments networks in the region, Lazada is a part of our consumers’ daily lives in the region and we aim to serve 300 million shoppers by 2030. Since 2016, Lazada is the Southeast Asia flagship platform of the Alibaba Group powered by its cutting-edge technology infrastructure.</span></p><p style="clear: both; text-align: justify; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">Lazada Vietnam Chief Executive Officer Profile:</span>&nbsp;</p><p style="clear: both; text-align: justify; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-size: 12pt; font-family: Arial, sans-serif;"><span style="font-weight: bolder;">JAMES DONG, CHIEF EXECUTIVE OFFICER, LAZADA VIETNAM</span></span><span style="font-weight: bolder;"></span></p><img src="https://laz-img-cdn.alicdn.com/images/ims-web/TB1zzL8a8r0gK0jSZFnXXbRRXXa.jpg" alt="undefined" style="display: block; border-width: initial; border-color: initial; border-image: initial; margin-right: auto; margin-left: auto; max-width: 100%; float: none; height: auto; width: auto;"><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">James Dong is the Chief Executive Officer of Lazada Vietnam and Lazada Thailand. James joined Lazada in June 2018 as the CEO of Lazada Thailand and was appointed CEO of Lazada Vietnam one year later, in addition to his existing role. Prior to joining Lazada, he was the Head of Alibaba Group Globalization Corporate Development and Business Assistant to Group Chief Executive Officer, Daniel Zhang.&nbsp;</span>&nbsp;</p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">James has been driving eCommerce globalisation strategy and portfolio management, including Lazada integration. He has also been coordinating Alibaba Group level collaboration with its top 10 global partners. Before joining Alibaba Group, James was Associate Partner of McKinsey’s Digital Practice.&nbsp;</span>&nbsp;</p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">James graduated with a MBA degree from Cambridge University.</span>&nbsp;</p></div></div></div></h1><h3 class="inner-content" style="margin-right: auto; margin-bottom: 0px; margin-left: auto; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 22px; line-height: 60px; font-family: Roboto-Medium; width: 1188px; overflow: hidden; height: 60px; position: relative;"><span class="title J_act_floor" data-title="MORE FROM LAZADA" style="padding-left: 12px; display: inline-block; height: 60px; width: 548px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">MORE FROM LAZADA</span></h3><h1 style="margin-bottom: 10px; font-family: Roboto, Helvetica, Arial, sans-serif; font-weight: 700; line-height: 28px; color: rgb(68, 68, 68); font-size: 17px; padding-top: 15px; padding-bottom: 5px; border-bottom: 2px solid rgb(221, 221, 221);"><div class="mui-zebra-module" id="J_icms-5019644-1526365871750" data-module-id="icms-5019644-1526365871750" data-rmc-id="icms-5019644-1526365871750" data-id="35276" data-name="lzdmod-lzd-act-title" data-version="5.0.14" data-cfg-id="undefined" data-spm="icms-5019644-1526365871750" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-title" style="margin-top: 12px; color: rgb(255, 120, 0); background-size: cover;"></div></div><div class="mui-zebra-module" id="J_icms-5019644-1526365901767" data-module-id="icms-5019644-1526365901767" data-rmc-id="icms-5019644-1526365901767" data-id="34175" data-name="lzdmod-lzd-act-banner" data-version="5.0.17" data-cfg-id="undefined" data-spm="icms-5019644-1526365901767" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-banner" data-mod-name="@ali/lzdmod-lzd-act-banner/template/index" style="margin-top: 12px;"><div class="J_renderBox inner-content" data-terminal="desktop" style="margin-right: auto; margin-left: auto; width: 1188px; overflow: hidden;"><ul class="clearfix flex-grid-col3" style="margin-top: -12px; margin-bottom: 0px; margin-left: -12px; list-style: none; position: relative; width: 1200px; overflow: hidden;"><li class="flex-item" style="margin-top: 12px; margin-left: 12px; list-style: none; float: left; width: 388px;"><a class="thumb-bx" href="https://pages.lazada.vn/wow/i/vn/corp/medialibrary?hybrid=1&amp;scm=1003.4.icms-zebra-5019643-2738546.OTHER_5278277607_2396077" style="color: rgb(0, 0, 0); -webkit-tap-highlight-color: transparent; display: block; position: relative; overflow: hidden; height: 155px;"><img class="thumb" src="https://laz-img-cdn.alicdn.com/images/ims-web/TB187CqbgZC2uNjSZFnXXaxZpXa.jpg_490x490q75.jpg_.webp" title="" style="display: block; border-width: initial; border-color: initial; border-image: initial; width: 388px; height: 155px;"></a></li><li class="flex-item" style="margin-top: 12px; margin-left: 12px; list-style: none; float: left; width: 388px;"><a class="thumb-bx" href="https://pages.lazada.vn/wow/i/vn/corp/ourannouncements_2018?hybrid=1&amp;scm=1003.4.icms-zebra-5019643-2738546.OTHER_5278277608_2396077" style="color: rgb(0, 0, 0); -webkit-tap-highlight-color: transparent; display: block; position: relative; overflow: hidden; height: 155px;"><img class="thumb" src="https://laz-img-cdn.alicdn.com/images/ims-web/TB1pd3XfQomBKNjSZFqXXXtqVXa.jpg_490x490q75.jpg_.webp" title="" style="display: block; border-width: initial; border-color: initial; border-image: initial; width: 388px; height: 155px;"></a></li><li class="flex-item" style="margin-top: 12px; margin-left: 12px; list-style: none; float: left; width: 388px;"><a class="thumb-bx" href="https://pages.lazada.vn/wow/i/vn/corp/news?hybrid=1&amp;scm=1003.4.icms-zebra-5019643-2738546.OTHER_5278278609_2396077" style="color: rgb(0, 0, 0); -webkit-tap-highlight-color: transparent; display: block; position: relative; overflow: hidden; height: 155px;"><img class="thumb" src="https://laz-img-cdn.alicdn.com/images/ims-web/TB1bMWOf8jTBKNjSZFuXXb0HFXa.jpg_490x490q75.jpg_.webp" title="" style="display: block; border-width: initial; border-color: initial; border-image: initial; width: 388px; height: 155px;"></a></li></ul></div></div></div><div class="mui-zebra-module" id="J_icms-5019644-1526525786772" data-module-id="icms-5019644-1526525786772" data-rmc-id="icms-5019644-1526525786772" data-id="35170" data-name="lzdmod-lzd-act-richtext" data-version="5.0.9" data-cfg-id="undefined" data-spm="icms-5019644-1526525786772" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-richtext" style="margin-top: 8px; padding: 8px; overflow-wrap: break-word; word-break: keep-all; overflow: hidden; font-family: Arial, Verdana, sans-serif !important; line-height: normal !important;"><div class="inner-content" style="margin-right: auto; margin-left: auto; width: 1188px; overflow: hidden;"><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="color: rgb(243, 121, 52); font-size: 24px;"><span style="font-weight: bolder;">Contact us:</span></span></p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-size: 11pt; font-family: Arial, sans-serif;">For press enquiries, kindly contact:&nbsp;</span>&nbsp;</p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">Ms. Luu Hanh</span>&nbsp;</p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">Head of Public Relations</span>&nbsp;</p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">Lazada Vietnam</span><br><span style="font-family: Arial, sans-serif;">Email:&nbsp;</span><a href="mailto:hanh.luu@lazada.vn" target="_self" style="-webkit-tap-highlight-color: transparent; color: rgb(0, 0, 238) !important; text-decoration-line: underline !important;"><span style="font-size: 12pt; font-family: Arial, sans-serif;">hanh.luu@lazada.vn</span></a>&nbsp;</p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="color: rgb(85, 85, 85); font-size: 14px; font-family: Arial, sans-serif;">Mr. Vu Nguyen Quan&nbsp;</span>&nbsp;</p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">Public Relations Department</span>&nbsp;</p><p style="clear: both; margin-top: 12px !important; margin-bottom: 12px !important;"><span style="font-family: Arial, sans-serif;">Lazada Vietnam</span><br><span style="font-family: Arial, sans-serif;">Email:&nbsp;</span><a href="mailto:quan.vu@lazada.vn" target="_self" style="-webkit-tap-highlight-color: transparent; color: rgb(0, 0, 238) !important; text-decoration-line: underline !important;"><span style="color: blue; font-size: 11pt; font-family: Arial, sans-serif;">quan.vu@lazada.vn</span></a>&nbsp;&nbsp;</p></div></div></div></h1></div>', N'gioithieu/gt1.png', NULL, N'metakey', N'metadesc', CAST(N'2019-02-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-10-22T13:04:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (28, 1, N'Giới thiệu', N'bai-viet/gioi-thieu', N'Nếu bạn cho rằng thương mại điện tử đơn thuần là việc bán hàng trên internet. Thì đúng theo một góc độ nào đó nhưng vẫn chưa đủ nói lên được phạm vi rộng lớn của thương mại điện tử.

shutterstock_208664602
1. Thương mại điện tử (E-Commerce) là gì?
Thương mại điện tử, hay còn gọi là e-commerce, là sự mua bán sản phẩm hay dịch vụ trên các hệ thống điện tử như Internet và các mạng máy tính.

Thương mại điện tử dựa trên một số công nghệ như chuyển tiền điện tử, quản lý chuỗi dây chuyền cung ứng, tiếp thị Internet, quá trình giao dịch trực tuyến, trao đổi dữ liệu điện tử (EDI), các hệ thống quản lý hàng tồn kho, và các hệ thống tự động thu thập dữ liệu.

Thương mại điện tử hiện đại thường sử dụng mạng World Wide Web là một điểm ít nhất phải có trong chu trình giao dịch, mặc dù nó có thể bao gồm một phạm vi lớn hơn về mặt công nghệ như email, các thiết bị di động cũng như điện thoại.

2. Lịch sử hình thành
Tiền thân của Thương mại điện tử là EFT (Electronic Fund Transfer: chuyển tiền điện tử) giữa các tổ chức, được phát triển vào những năm 70 của thế kỷ trước. Tiếp theo là EDI (Electronic Data Interchange: trao đổi dữ liệu điện tử) – công nghệ dùng để chuyển văn bản, dữ liệu giữa các doanh nghiệp lớn.
Rồi đến lượt Internet ra đời vào năm 1969, ban đầu chỉ dùng trong chính phủ Mỹ, sau đó là đến các trường đại học, viện nghiên cứu, sau đó Internet được thương mại hóa dẫn đến sự ra đời của World Wide Web vào những năm đầu 1990 và hình thành tên gọi Thương mại điện tử.

Ở Việt Nam, Internet có mặt vào năm 1997, và trở nên phổ dụng vào năm 2000. Khái niệm Thương mại điện tử vẫn còn xa lạ với nhiều người trong những năm 2000 – 2003. Từ năm 2004, Thương mại điện tử dần trở nên phổ biến hơn.

3. Lịch sử phát triển E-Commerce
Cách phân chia thứ nhất: 6 cấp độ phát triển E-Commerce
– Cấp độ 1 – hiện diện trên mạng: doanh nghiệp có website trên mạng. Ở mức độ này, website rất đơn giản, chỉ là cung cấp một thông tin về doanh nghiệp và sản phẩm mà không có các chức năng phức tạp khác.

– Cấp độ 2 – có website chuyên nghiệp: website của doanh nghiệp có cấu trúc phức tạp hơn, có nhiều chức năng tương tác với người xem, hỗ trợ người xem, người xem có thể liên lạc với doanh nghiệp một cách thuận tiện.

– Cấp độ 3 – chuẩn bị E-commerce: doanh nghiệp bắt đầu triển khai bán hàng hay dịch vụ qua mạng. Tuy nhiên, doanh nghiệp chưa có hệ thống cơ sở dữ liệu nội bộ để phục vụ các giao dịch trên mạng. Các giao dịch còn chậm và không an toàn.

– Cấp độ 4 – áp dụng E-Commerce: website của DN liên kết trực tiếp với dữ liệu trong mạng nội bộ của DN, các hoạt động truyền dữ liệu được tự động hóa, hạn chế sự can thiệp của con người và vì thế làm giảm đáng kể chi phí hoạt động và tăng hiệu quả.

– Cấp độ 5 – E-Commerce không dây: doanh nghiệp áp dụng TMĐT trên các thiết bị không dây như điện thoại di động, pocket PC (máy tính bỏ túi) v.v… sử dụng giao thức truyền không dây WAP (Wireless Application Protocal).

– Cấp độ 6 – cả thế giới trong một máy tính: chỉ với một thiết bị điện tử, người ta có thể truy cập vào một nguồn thông tin khổng lồ, mọi lúc, mọi nơi và mọi loại thông tin (hình ảnh, âm thanh, phim, v.v…) và thực hiện các loại giao dịch.

online-shopping
Cách phân chia thứ hai: 3 cấp độ phát triển
– Cấp độ 1 – thương mại thông tin (I-commerce) doanh nghiệp có website trên mạng để cung cấp thông tin về sản phẩm, dịch vụ… Các hoạt động mua bán vẫn thực hiện theo cách truyền thống.

– Cấp độ 2 – thương mại giao dịch (T-commerce): doanh nghiệp cho phép thực hiện giao dịch đặt hàng, mua hàng qua website trên mạng, có thể bao gồm cả thanh toán trực tuyến.

– Cấp độ 3 – thương mại tích hợp (C-business): website của doanh nghiệp liên kết trực tiếp với dữ liệu trong mạng nội bộ của doanh nghiệp, mọi hoạt động truyền dữ liệu được tự động hóa, hạn chế sự can thiệp của con người và vì thế làm giảm đáng kể chi phí hoạt động và tăng hiệu quả.

4. Thế giới và sự phát triển của E-Commerce
Alibaba là công ty thương mại trực tuyến lớn nhất của Trung Quốc.. Là một công ty thương mại điện tử nhưng Alibaba không sở hữu bất kỳ hàng hóa nào cả. Họ tạo ra môi trường kinh doanh cho các doanh nghiệp: Các doanh nghiệp thuê các gian hàng trên website để bán sản phẩm. Doanh thu chủ yếu của Alibaba đến từ quảng cáo, bán dịch vụ thanh toán. Công ty sở hữu 3 trang thương mại điện tử chính – Taobao, Tmall và Alibaba.com. Alibaba xử lý các giao dịch thương mại trực tuyến lớn hơn bất kỳ một công ty cùng ngành đạt được.', N'gioithieu/d-da-dada.png', N'page', N' áda  ad ád', N'a dád a da a', CAST(N'2019-11-27T20:42:00' AS SmallDateTime), 1, CAST(N'2019-12-19T11:04:00' AS SmallDateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[post] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (1, 9, 1, N'Áo Sơ Mi 01', N'ao-so-mi-01', N'aosominam/asm1.jpg', N'detail', 50, 150000, 22, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-21T15:32:00' AS SmallDateTime), 1, 2, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (2, 9, 1, N'Áo Sơ Mi 02', N'ao-so-mi-02', N'aosominam/asm2.jpg', N'detail', 50, 150000, 33, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-26T13:01:00' AS SmallDateTime), 1, 2, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (3, 9, 1, N'Áo Sơ Mi 03', N'ao-so-mi-03', N'aosominam/asm3.jpg', N'detail', 40, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-18T22:51:00' AS SmallDateTime), 1, 1, 22)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (4, 9, 1, N'Áo Sơ Mi 04', N'ao-so-mi-04', N'aosominam/asm4.jpg', N'detail', 35, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-18T22:37:00' AS SmallDateTime), 1, 1, 19)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (5, 9, 1, N'Áo Sơ Mi 05', N'ao-so-mi-05', N'aosominam/asm5.jpg', N'detail', 38, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 6)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (6, 9, 1, N'Áo Sơ Mi 06', N'ao-so-mi-06', N'aosominam/asm6.jpg', N'detail', 49, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 1)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (7, 9, 1, N'Áo Sơ Mi 07', N'ao-so-mi-07', N'aosominam/asm7.jpg', N'detail', 48, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (8, 9, 1, N'Áo Sơ Mi 08', N'ao-so-mi-08', N'aosominam/asm8.jpg', N'detail', 39, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (9, 9, 1, N'Áo Sơ Mi 09', N'ao-so-mi-09', N'aosominam/asm9.jpg', N'detail', 41, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 1)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (10, 9, 1, N'Áo Sơ Mi 10', N'ao-so-mi-10', N'aosominam/asm10.jpg', N'detail', 46, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (11, 9, 1, N'Áo Sơ Mi 11', N'ao-so-mi-11', N'aosominam/asm11.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (12, 9, 1, N'Áo Sơ Mi 12', N'ao-so-mi-12', N'aosominam/asm12.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (13, 9, 1, N'Áo Sơ Mi 13', N'ao-so-mi-13', N'aosominam/asm13.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 1)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (14, 9, 1, N'Áo Sơ Mi 14', N'ao-so-mi-14', N'aosominam/asm14.jpg', N'detail', 33, 10000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-10-22T11:54:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (15, 9, 1, N'Áo Sơ Mi 15', N'ao-so-mi-15', N'aosominam/asm15.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (16, 9, 1, N'Áo Sơ Mi 16', N'ao-so-mi-16', N'aosominam/asm16.jpg', N'detail', 50, 170000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 3)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (17, 9, 1, N'Áo Sơ Mi 17', N'ao-so-mi-17', N'aosominam/asm17.jpg', N'detail', 50, 190000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 4)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (18, 9, 1, N'Áo Sơ Mi 18', N'ao-so-mi-18', N'aosominam/asm18.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 5)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (21, 9, 1, N'Áo Sơ Mi 21', N'ao-so-mi-21', N'aosominam/asm21.jpg', N'detail', 50, 111000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 6)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (22, 9, 1, N'Áo Sơ Mi 22', N'ao-so-mi-22', N'aosominam/asm22.jpg', N'detail', 50, 159000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (23, 10, 1, N'Áo Khoác  01', N'ao-khoac-nam-01', N'aokhoatnam/akn1.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (24, 10, 1, N'Áo Khoác  02', N'ao-khoac-nam-02', N'aokhoatnam/akn2.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (25, 10, 1, N'Áo Khoác  03', N'ao-khoac-nam-03', N'aokhoatnam/akn3.jpg', N'detail', 50, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (26, 10, 1, N'Áo Khoác  04', N'ao-khoac-nam-04', N'aokhoatnam/akn4.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (27, 10, 1, N'Áo Khoác  05', N'ao-khoac-nam-05', N'aokhoatnam/akn5.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (28, 10, 1, N'Áo Khoác  06', N'ao-khoac-nam-06', N'aokhoatnam/akn6.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (29, 10, 1, N'Áo Khoác  07', N'ao-khoac-nam-07', N'aokhoatnam/akn7.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (30, 10, 1, N'Áo Khoác  08', N'ao-khoac-nam-08', N'aokhoatnam/akn8.jpg', N'detail', 31, 160000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (31, 10, 1, N'Áo Khoác  09', N'ao-khoac-nam-09', N'aokhoatnam/akn9.jpg', N'detail', 33, 130000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (32, 10, 1, N'Áo Khoác  10', N'ao-khoac-nam-10', N'aokhoatnam/akn10.jpg', N'detail', 49, 50000, 50, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (33, 10, 1, N'Áo Khoác  11', N'ao-khoac-nam-11', N'aokhoatnam/akn11.jpg', N'detail', 5, 1350000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (34, 10, 1, N'Áo Khoác  12', N'ao-khoac-nam-12', N'aokhoatnam/akn12.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (35, 10, 1, N'Áo Khoác  13', N'ao-khoac-nam-13', N'aokhoatnam/akn13.jpg', N'detail', 5, 180000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (37, 10, 1, N'Áo Khoác  15', N'ao-khoac-nam-15', N'aokhoatnam/akn15.jpg', N'detail', 50, 100000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (38, 10, 1, N'Áo Khoác  16', N'ao-khoac-nam-16', N'aokhoatnam/akn16.jpg', N'detail', 5, 170000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (39, 10, 1, N'Áo Khoác  17', N'ao-khoac-nam-17', N'aokhoatnam/akn17.jpg', N'detail', 50, 190000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (40, 10, 1, N'Áo Khoác  18', N'ao-khoac-nam-18', N'aokhoatnam/akn18.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (41, 10, 1, N'Áo Khoác  19', N'ao-khoac-nam-19', N'aokhoatnam/akn19.jpg', N'detail', 5, 100000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (42, 10, 1, N'Áo Khoác  20', N'ao-khoac-nam-20', N'aokhoatnam/akn20.jpg', N'detail', 50, 110000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (43, 10, 1, N'Áo Khoác  21', N'ao-khoat-nam-21', N'aokhoatnam/akn21.jpg', N'detail', 50, 111000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (45, 11, 1, N'Quần Jean Nam 01', N'Quan-jean-nam-01', N'quanjeannam/qj1.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (46, 11, 1, N'Quần Jean Nam 02', N'Quan-jean-nam-02', N'quanjeannam/qj2.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (47, 11, 1, N'Quần Jean Nam 02', N'Quan-jean-nam-03', N'quanjeannam/qj3.jpg', N'detail', 50, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (48, 11, 1, N'Quần Jean Nam 03', N'Quan-jean-nam-04', N'quanjeannam/qj4.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (49, 11, 1, N'Quần Jean Nam 04', N'Quan-jean-nam-05', N'quanjeannam/qj5.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (50, 11, 1, N'Quần Jean Nam 05', N'Quan-jean-nam-06', N'quanjeannam/qj6.jpg', N'detail', 50, 160000, 50, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (51, 11, 1, N'Quần Jean Nam 06', N'Quan-jean-nam-07', N'quanjeannam/qj7.jpg', N'detail', 48, 130000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (52, 11, 1, N'Quần Jean Nam 07', N'Quan-jean-nam-08', N'quanjeannam/qj8.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (53, 13, 2, N'Áo Sơ Mi Nữ 01', N'ao-so-mi-nu-01', N'aosominu/asmn1.jpg', N'detail', 49, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (54, 13, 2, N'Áo Sơ Mi Nữ 02', N'ao-so-mi-nu-02', N'aosominu/asmn2.jpg', N'detail', 49, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (55, 13, 2, N'Áo Sơ Mi Nữ 03', N'ao-so-mi-nu-03', N'aosominu/asmn3.jpg', N'detail', 47, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 5)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (56, 13, 2, N'Áo Sơ Mi Nữ 04', N'ao-so-mi-nu-04', N'aosominu/asmn4.jpg', N'detail', 49, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (57, 13, 2, N'Áo Sơ Mi Nữ 05', N'ao-so-mi-nu-05', N'aosominu/asmn5.jpg', N'detail', 42, 150000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (58, 13, 2, N'Áo Sơ Mi Nữ 06', N'ao-so-mi-nu-06', N'aosominu/asmn6.jpg', N'detail', 43, 160000, 50, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (59, 13, 2, N'Áo Sơ Mi Nữ 07', N'ao-so-mi-nu-07', N'aosominu/asmn7.jpg', N'detail', 48, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 1)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (60, 13, 2, N'Áo Sơ Mi Nữ 08', N'ao-so-mi-nu-08', N'aosominu/asmn8.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (61, 13, 2, N'Áo Sơ Mi Nữ 04', N'ao-so-mi-nu-09', N'aosominu/asmn9.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (62, 13, 2, N'Áo Sơ Mi Nữ 05', N'ao-so-mi-nu-10', N'aosominu/asmn10.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (63, 13, 2, N'Áo Sơ Mi Nữ 06', N'ao-so-mi-nu-11', N'aosominu/asmn11.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (64, 13, 2, N'Áo Sơ Mi Nữ 07', N'ao-so-mi-nu-12', N'aosominu/asmn12.jpg', N'detail', 5, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (65, 13, 2, N'Áo Sơ Mi Nữ 08', N'ao-so-mi-nu-13', N'aosominu/asmn13.jpg', N'detail', 5, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (66, 14, 2, N'Áo Khoát Nữm 01', N'ao-khoat-nu-01', N'aokhoatnu/aknu1.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (67, 14, 2, N'Áo Khoát Nữm 02', N'ao-khoat-nu-02', N'aokhoatnu/aknu2.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (68, 14, 2, N'Áo Khoát Nữm 03', N'ao-khoat-nu-03', N'aokhoatnu/aknu3.jpg', N'detail', 50, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (69, 14, 2, N'Áo Khoát Nữm 04', N'ao-khoat-nu-04', N'aokhoatnu/aknu4.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (70, 14, 2, N'Áo Khoát Nữm 05', N'ao-khoat-nu-05', N'aokhoatnu/aknu5.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (71, 14, 2, N'Áo Khoát Nữm 06', N'ao-khoat-nu-06', N'aokhoatnu/aknu6.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (72, 14, 2, N'Áo Khoát Nữm 07', N'ao-khoat-nu-07', N'aokhoatnu/aknu7.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (73, 14, 2, N'Áo Khoát Nữm 08', N'ao-khoat-nu-08', N'aokhoatnu/aknu8.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (74, 14, 2, N'Áo Khoát Nữm 09', N'ao-khoat-nu-04', N'aokhoatnu/aknu9.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (75, 14, 2, N'Áo Khoát Nữm 10', N'ao-khoat-nu-05', N'aokhoatnu/aknu10.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (76, 14, 2, N'Áo Khoát Nữm 11', N'ao-khoat-nu-06', N'aokhoatnu/aknu11.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (77, 14, 2, N'Áo Khoát Nữm 12', N'ao-khoat-nu-07', N'aokhoatnu/aknu12.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (78, 14, 2, N'Áo Khoát Nữm 13', N'ao-khoat-nu-06', N'aokhoatnu/aknu13.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (79, 14, 2, N'Áo Khoát Nữm 14', N'ao-khoat-nu-07', N'aokhoatnu/aknu14.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (80, 14, 2, N'Áo Khoát Nữm 15', N'ao-khoat-nu-08', N'aokhoatnu/aknu5.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (81, 14, 2, N'Áo Khoát Nữm 16', N'ao-khoat-nu-04', N'aokhoatnu/aknu16.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (82, 14, 2, N'Áo Khoát Nữm 17', N'ao-khoat-nu-05', N'aokhoatnu/aknu17.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (83, 14, 2, N'Áo Khoát Nữm 18', N'ao-khoat-nu-06', N'aokhoatnu/aknu18.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (84, 14, 2, N'Áo Khoát Nữm 19', N'ao-khoat-nu-07', N'aokhoatnu/aknu19.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (85, 14, 2, N'Áo Khoát Nữm 20', N'ao-khoat-nu-08', N'aokhoatnu/aknu20.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (86, 14, 2, N'Áo Khoát Nữm 21', N'ao-khoat-nu-08', N'aokhoatnu/aknu21.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (87, 12, 2, N'Áo Phông Nữ 01', N'ao-phong-nu-01', N'aophongnu/apn1.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (88, 12, 2, N'Áo Phông Nữ 02', N'ao-phong-nu-02', N'aophongnu/apn2.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (89, 12, 2, N'Áo Phông Nữ 03', N'ao-phong-nu-03', N'aophongnu/apn3.jpg', N'detail', 505, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (90, 12, 2, N'Áo Phông Nữ 04', N'ao-phong-nu-04', N'aophongnu/apn4.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (91, 12, 2, N'Áo Phông Nữ 05', N'ao-phong-nu-05', N'aophongnu/apn5.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (92, 12, 2, N'Áo Phông Nữ 06', N'ao-phong-nu-06', N'aophongnu/apn6.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (93, 12, 2, N'Áo Phông Nữ 07', N'ao-phong-nu-07', N'aophongnu/apn7.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (94, 12, 2, N'Áo Phông Nữ 08', N'ao-phong-nu-08', N'aophongnu/apn8.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (95, 12, 2, N'Áo Phông Nữ 09', N'ao-phong-nu-04', N'aophongnu/apn9.jpg', N'detail', 505, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (96, 12, 2, N'Áo Phông Nữ 10', N'ao-phong-nu-05', N'aophongnu/apn10.jpg', N'detail', 5, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (97, 12, 2, N'Áo Phông Nữ 11', N'ao-phong-nu-06', N'aophongnu/apn11.jpg', N'detail', 60, 160000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (98, 12, 2, N'Áo Phông Nữ 12', N'ao-phong-nu-07', N'aophongnu/apn12.jpg', N'detail', 40, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (99, 12, 2, N'Áo Phông Nữ 13', N'ao-phong-nu-06', N'aophongnu/apn13.jpg', N'detail', 4, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (100, 12, 2, N'Áo Phông Nữ 14', N'ao-phong-nu-07', N'aophongnu/apn14.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (101, 12, 2, N'Áo Phông Nữ 15', N'ao-phong-nu-08', N'aophongnu/apn15.jpg', N'detail', 30, 160000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (102, 12, 2, N'Áo Phông Nữ 16', N'ao-phong-nu-04', N'aophongnu/apn16.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (103, 12, 2, N'Áo Phông Nữ 17', N'ao-phong-nu-05', N'aophongnu/apn17.jpg', N'detail', 5, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
GO
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (104, 12, 2, N'Áo Phông Nữ 18', N'ao-phong-nu-06', N'aophongnu/apn18.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (105, 12, 2, N'Áo Phông Nữ 19', N'ao-phong-nu-07', N'aophongnu/apn19.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (106, 12, 2, N'Áo Phông Nữ 20', N'ao-phong-nu-08', N'aophongnu/apn20.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (107, 15, 2, N'Chân Váy 01', N'chan-vay-nu-01', N'chanvay/chanavay1.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (108, 15, 2, N'Chân Váy 02', N'chan-vay-nu-02', N'chanvay/chanavay2.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (109, 15, 2, N'Chân Váy 03', N'chan-vay-nu-03', N'chanvay/chanavay3.jpg', N'detail', 50, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (110, 15, 2, N'Chân Váy 04', N'chan-vay-nu-04', N'chanvay/chanavay4.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (111, 15, 2, N'Chân Váy 05', N'chan-vay-nu-05', N'chanvay/chanavay5.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (112, 15, 2, N'Chân Váy 06', N'chan-vay-nu-06', N'chanvay/chanavay6.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (113, 15, 2, N'Chân Váy 07', N'chan-vay-nu-07', N'chanvay/chanavay7.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (114, 15, 2, N'Chân Váy 08', N'chan-vay-nu-08', N'chanvay/chanavay8.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (115, 15, 2, N'Chân Váy 09', N'chan-vay-nu-09', N'chanvay/chanavay9.jpg', N'detail', 50, 130000, 20, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (116, 6, 0, N'Em bé  01', N'em-be-01', N'embe/embe1.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (117, 6, 0, N'Em bé  02', N'em-be-02', N'embe/embe2.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (118, 6, 0, N'Em bé  03', N'em-be-03', N'embe/embe3.jpg', N'detail', 50, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (119, 6, 0, N'Em bé  04', N'em-be-04', N'embe/embe4.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (120, 6, 0, N'Em bé  05', N'em-be-05', N'embe/embe5.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (121, 6, 0, N'Em bé  06', N'em-be-06', N'embe/embe6.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (122, 6, 0, N'Em bé  07', N'em-be-07', N'embe/embe7.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (123, 6, 0, N'Em bé  08', N'em-be-08', N'embe/embe8.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (124, 6, 0, N'Em bé  09', N'em-be-09', N'embe/embe9.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (125, 6, 0, N'Em bé  10', N'em-be-10', N'embe/embe10.jpg', N'detail', 50, 50000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (126, 6, 0, N'Em bé  11', N'em-be-11', N'embe/embe11.jpg', N'detail', 50, 1350000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (127, 6, 0, N'Em bé  12', N'em-be-12', N'embe/embe12.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (128, 6, 0, N'Em bé  13', N'em-be-13', N'embe/embe13.jpg', N'detail', 50, 180000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (129, 6, 0, N'Em bé  14', N'em-be-14', N'embe/embe14.jpg', N'detail', 50, 190000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (130, 6, 0, N'Em bé  15', N'em-be-15', N'embe/embe15.jpg', N'detail', 505, 100000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (131, 6, 0, N'Em bé  16', N'em-be-16', N'embe/embe16.jpg', N'detail', 50, 170000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (132, 6, 0, N'Em bé  17', N'em-be-17', N'embe/embe17.jpg', N'detail', 50, 190000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (133, 6, 0, N'Em bé  18', N'em-be-18', N'embe/embe18.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (134, 6, 0, N'Em bé  19', N'em-be-19', N'embe/embe19.jpg', N'detail', 50, 100000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (135, 6, 0, N'Em bé  20', N'em-be-20', N'embe/embe20.jpg', N'detail', 50, 110000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (136, 3, 0, N'Phụ Kiện  01', N'phu-kien-01', N'phukien/pk1.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (137, 3, 0, N'Phụ Kiện  02', N'phu-kien-02', N'phukien/pk2.jpg', N'detail', 48, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (138, 3, 0, N'Phụ Kiện  03', N'phu-kien-03', N'phukien/pk3.jpg', N'detail', 50, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (139, 3, 0, N'Phụ Kiện  04', N'phu-kien-04', N'phukien/pk4.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (140, 3, 0, N'Phụ Kiện  05', N'phu-kien-05', N'phukien/pk5.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (141, 3, 0, N'Phụ Kiện  06', N'phu-kien-06', N'phukien/pk6.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (142, 3, 0, N'Phụ Kiện  07', N'phu-kien-07', N'phukien/pk7.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (143, 3, 0, N'Phụ Kiện  08', N'phu-kien-08', N'phukien/pk8.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (144, 3, 0, N'Phụ Kiện  09', N'phu-kien-09', N'phukien/pk9.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (145, 4, 0, N'Bé Trai   01', N'be-trai-01', N'betrai/pt1.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (146, 4, 0, N'Bé Trai   02', N'be-trai-02', N'betrai/pt2.jpg', N'detail', 5, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (147, 4, 0, N'Bé Trai   03', N'be-trai-03', N'betrai/pt3.jpg', N'detail', 50, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (148, 4, 0, N'Bé Trai   04', N'be-trai-04', N'betrai/pt4.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (149, 4, 0, N'Bé Trai   05', N'be-trai-05', N'betrai/pt5.jpg', N'detail', 50, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (150, 4, 0, N'Bé Trai   06', N'be-trai-06', N'betrai/pt6.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (151, 4, 0, N'Bé Trai   07', N'be-trai-07', N'betrai/pt7.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (152, 4, 0, N'Bé Trai   08', N'be-trai-08', N'betrai/pt8.jpg', N'detail', 50, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (153, 4, 0, N'Bé Trai   09', N'be-trai-09', N'betrai/pt9.jpg', N'detail', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (154, 4, 1, N'Bé Trai   10', N'be-trai---10', N'betrai/pt10.jpg', N'detail', 50, 50000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-05-06T23:17:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (155, 3, 2, N'Bé Gái   01', N'be-gai---01', N'begai/bg1.jpg', N'<a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-1" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); outline: none; line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">MÔ TẢ</a><div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Váy liền chất liệu cotton.<br>Dáng xuông, cổ tròn, tay xòe hơi bèo.Phù hợp mặc mùa hè. Phong cách đơn giản, nữ tính, kết hợp giày bệt, sneaker,...</div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-2" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">CHẤT LIỆU</a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="font-weight: bolder; color: rgb(46, 46, 46);">100% cotton</span></div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-3" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">HƯỚNG DẪN SỬ DỤNG</a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div>', 3, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-05-06T23:17:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (156, 3, 2, N'Bé Gái   02', N'be-gai---02', N'begai/bg2.jpg', N'<a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-1" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); outline: none; line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">MÔ TẢ</a><div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Váy liền chất liệu cotton.<br>Dáng xuông, cổ tròn, tay xòe hơi bèo.Phù hợp mặc mùa hè. Phong cách đơn giản, nữ tính, kết hợp giày bệt, sneaker,...</div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-2" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">CHẤT LIỆU</a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="font-weight: bolder; color: rgb(46, 46, 46);">100% cotton</span></div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-3" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">HƯỚNG DẪN SỬ DỤNG</a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div>', 49, 150000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-05-06T23:17:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (157, 3, 2, N'Bé Gái   03', N'be-gai---03', N'begai/bg3.jpg', N'detail', 50, 120000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-05-06T23:16:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (158, 3, 2, N'hon da 1000 phan khoi', N'hon-da-1000-phan-khoi', N'begai/bg4.jpg', N'<a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-1" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); outline: none; line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">MÔ TẢ</a><div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Váy liền chất liệu cotton.<br>Dáng xuông, cổ tròn, tay xòe hơi bèo.Phù hợp mặc mùa hè. Phong cách đơn giản, nữ tính, kết hợp giày bệt, sneaker,...</div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-2" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">CHẤT LIỆU</a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="font-weight: bolder; color: rgb(46, 46, 46);">100% cotton</span></div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-3" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">HƯỚNG DẪN SỬ DỤNG</a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div>', 50, 130000, 0, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-09-29T14:05:00' AS SmallDateTime), 1, 0, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (161, 3, 2, N'Xe moto honha njnzah2 scloool', N'xe-moto-honha-njnzah2-scloool', N'begai/be-gai---50.png', N'<a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-1" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); outline: none; line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">MÔ TẢ</a><div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Váy liền chất liệu cotton.<br>Dáng xuông, cổ tròn, tay xòe hơi bèo.Phù hợp mặc mùa hè. Phong cách đơn giản, nữ tính, kết hợp giày bệt, sneaker,...</div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-2" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">CHẤT LIỆU</a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="font-weight: bolder; color: rgb(46, 46, 46);">100% cotton</span></div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-3" class="product-detail-tab-label" style="margin-bottom: 12px; color: rgb(51, 63, 72); background-color: rgb(255, 255, 255); line-height: 13px; display: block; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;">HƯỚNG DẪN SỬ DỤNG</a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="margin-bottom: 30px; line-height: 19px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div>', 50, 130000, 20, N'metakey', N'metadesc', CAST(N'2019-11-21T14:25:00' AS SmallDateTime), 1, CAST(N'2020-09-14T12:37:00' AS SmallDateTime), 1, 0, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (162, 3, 1, N'Xe moto Z1000', N'xe-moto-z1000', N'begai/be-gai---09.png', N'<a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-1" class="product-detail-tab-label" style="outline: none; line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;"><font color="#000000" style="background-color: rgb(255, 255, 0);"><span style="font-family: Arial;">MÔ TẢ</span></font></a><div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="font-family: Arial;">Váy liền chất liệu cotton.</span><br><span style="font-family: Arial;">Dáng xuông, cổ tròn, tay xòe hơi bèo.Phù hợp mặc mùa hè. Phong cách đơn giản, nữ tính, kết hợp giày bệt, sneaker,...</span></div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-2" class="product-detail-tab-label" style="line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif;"><font color="#000000" style="background-color: rgb(255, 255, 0);"><span style="font-family: Arial;">CHẤT LIỆU</span></font></a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><b><span style="font-family: Arial;">100% cotton</span></b></div><a href="https://canifa.com/catalog/product/view/id/206445/s/vay-lien-nu-co-ban-6ds19c021/#product-detail-tab-content-3" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);"><span style="font-family: Arial;">HƯỚNG DẪN SỬ DỤNG</span></a><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="font-family: Arial;">Giặt máy ở nhiệt độ thường.</span><br><span style="font-family: Arial;">Không sử dụng hóa chất tẩy có chứa clo.</span><br><span style="font-family: Arial;">Phơi trong bóng mát.</span><br><span style="font-family: Arial;">Sấy khô ở nhiệt độ thấp.</span><br><span style="font-family: Arial;">Là ở nhiệt độ trung bình 150 độ c.</span><br><span style="font-family: Arial;">Giặt với sản phẩm cùng màu.</span><br><span style="font-family: Arial;">Không là lên chi tiết trang trí.</span></div>', 5, 160000, 0, N'metakey', N'metadesc', CAST(N'2019-11-21T14:47:00' AS SmallDateTime), 1, CAST(N'2020-09-14T12:37:00' AS SmallDateTime), 1, 0, 0)
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (1, 0, N'ADMIN', N'Quản trị viên Full quyền', N'ADMIN')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (2, 1, N'CUSTOMER', N'Khách hàng', N'CUSTOMER')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (3, 2, N'ACCOUNTANT', N'Kế toán, thống kê', N'ACCOUNTANT')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (7, 3, N'SALESMAN', N'Nhân viên bán hàng', N'SALESMAN')
SET IDENTITY_INSERT [dbo].[role] OFF
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Slider1', N'links', N'SliderShow', N'banner1.png', 3, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-11-21T15:34:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'Slider2', N'links', N'SliderShow', N'banner2.png', 2, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-11-21T16:04:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Slider3333', N'slider3333', N'SliderShow', N'banner3.png', 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-06T20:21:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'Slider2ddddd', N'slider2ddddd', N'SliderShow', N'slider2ddddd.png', 2, CAST(N'2019-11-21T16:11:00' AS SmallDateTime), 1, CAST(N'2019-11-23T08:27:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'á', N'a', N'SliderShow', N'a.', 3, CAST(N'2020-05-03T21:40:00' AS SmallDateTime), 1, CAST(N'2020-05-03T21:40:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (7, N'1', N'1', N'SliderShow', N'1.', 3, CAST(N'2020-05-03T21:48:00' AS SmallDateTime), 1, CAST(N'2020-05-03T21:48:00' AS SmallDateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[slider] OFF
SET IDENTITY_INSERT [dbo].[topic] ON 

INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Giới Thiệu', N'gioi-thieu', 0, 1, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-26T13:12:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'Thời Sự', N'thoi-su', 0, 11, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-26T12:26:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Thế Giới', N'the-gioi', 0, 12, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Kinh Doanh', N'khinh-doanh', 0, 13, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'Âm Nhạc', N'am-nhac', 0, 2, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Giải Trí', N'giai-tri', 0, 3, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (7, N'Thời Trang', N'thoi-trang', 0, 4, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Phim Ảnh', N'phim-anh', 0, 5, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (9, N'Công Nghệ', N'cong-nghe', 0, 6, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-08-20T10:06:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (10, N'Ẩm Thực', N'am-thuc', 0, 7, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Thể Thao', N'the-thao', 0, 8, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (12, N'Du Lịch', N'du-lich', 0, 9, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (13, N'Sức Khỏe', N'suc-khoe', 0, 10, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (15, N'dddddđ', N'dddddd', 0, 13, N'dddddd', N'dddddddddddd', CAST(N'2019-12-05T14:24:00' AS SmallDateTime), 1, CAST(N'2019-12-19T11:04:00' AS SmallDateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[topic] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Nguyễn Văn A', N'admin', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'0975271384', N'ádasd', 0, CAST(N'2020-05-10T15:45:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:25:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Nguyễn Văn A', N'khachhang1', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'333333333333333', N'bav', 1, CAST(N'2020-05-10T15:54:00' AS SmallDateTime), 6, CAST(N'2020-08-20T11:20:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Nguyễn Văn A', N'khachhang2', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'1231231231', N'ádasd', 1, CAST(N'2020-05-08T16:43:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:25:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Nguyễn Văn A', N'Accountant', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'nu', N'13212123', N'132121', 2, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:16:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (13, N'Nguyễn Văn A', N'Salesman', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'13212123', N'ádasd', 3, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:20:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (14, N'Nguyễn Văn A', N'khachhang123', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'0975271384', N'ádasd', 1, CAST(N'2020-05-08T16:49:00' AS SmallDateTime), 1, CAST(N'2020-05-08T16:49:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (15, N'Nguyễn Văn A', N'khachhang112', N'i5YoL5fbmnteeBT/9l4G1A==', N'abc@gmail.com', N'nam', N'0975271384', N'defalt.png', 1, CAST(N'2020-06-12T09:45:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:20:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[user] OFF
ALTER TABLE [dbo].[category] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [link]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [tableid]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [created_by]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [updated_by]
GO
ALTER TABLE [dbo].[ordersdetail] ADD  DEFAULT ((1)) FOR [priceSale]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [topid]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [detail]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('post') FOR [type]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (NULL) FOR [sold]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [orders]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT (NULL) FOR [updated_by]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('Nam') FOR [gender]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [status]
GO
