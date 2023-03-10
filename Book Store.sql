USE [PRJ301_SP22]
GO
/****** Object:  Table [dbo].[Accounts_HE153629_SE1606]    Script Date: 10-Feb-23 13:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts_HE153629_SE1606](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories_HE153629_SE1606]    Script Date: 10-Feb-23 13:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories_HE153629_SE1606](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[describe] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers_HE153629_SE1606]    Script Date: 10-Feb-23 13:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_HE153629_SE1606](
	[CustomerID] [int] NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Username] [nvarchar](30) NULL,
	[Password] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails_HE153629_SE1606]    Script Date: 10-Feb-23 13:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails_HE153629_SE1606](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[productName] [nvarchar](255) NULL,
	[productPrice] [int] NULL,
	[id] [int] NULL,
 CONSTRAINT [PK_OrderDetails_HE153629_SE1606] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_HE153629_SE1606]    Script Date: 10-Feb-23 13:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_HE153629_SE1606](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[totalmoney] [float] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK__Orders__C3905BAFE67C87E9] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_HE153629_SE1606]    Script Date: 10-Feb-23 13:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_HE153629_SE1606](
	[ID] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[cat_ID] [varchar](6) NULL,
	[image] [varchar](100) NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[status] [nvarchar](20) NULL,
	[adddate] [datetime] NULL,
	[describe] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_HE153629_SE1606]    Script Date: 10-Feb-23 13:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_HE153629_SE1606](
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts_HE153629_SE1606] ON 

INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (1, N'nguyenha', N'123', 1)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (2, N'haquoc', N'abc1', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (3, N'haduy', N'1234', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (4, N'quocduy', N'123', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (5, N'halinh', N'abc4', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (6, N'nguyenlinh', N'abc5', 1)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (7, N'	hathanh', N'abc6', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (8, N'quocbao', N'abc7', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (13, N'a', N'123', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (15, N'duynguyen', N'duynguyen68', 2)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (16, N'duynguyen68', N'duynguyen68', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (17, N'abc', N'12345', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (18, N'abcabc', N'abc', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (19, N'duynguyen6868', N'abcabc', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (20, N'abcabcabc', N'1234567654321', 0)
INSERT [dbo].[Accounts_HE153629_SE1606] ([CustomerID], [Username], [Password], [isAdmin]) VALUES (21, N'duy', N'123', 0)
SET IDENTITY_INSERT [dbo].[Accounts_HE153629_SE1606] OFF
GO
INSERT [dbo].[Categories_HE153629_SE1606] ([ID], [name], [describe]) VALUES (N'TD', N'Sách Tư Duy', NULL)
INSERT [dbo].[Categories_HE153629_SE1606] ([ID], [name], [describe]) VALUES (N'TN', N'Truyện Ngắn', NULL)
INSERT [dbo].[Categories_HE153629_SE1606] ([ID], [name], [describe]) VALUES (N'TT', N'Tiểu Thuyết', NULL)
INSERT [dbo].[Categories_HE153629_SE1606] ([ID], [name], [describe]) VALUES (N'TTR', N'Truyện Tranh', NULL)
GO
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (1, N'Nguyễn Hà Quốc', N'nguyenha@gmail.com', N'Số Nhà 390', N'0123234445', N'nguyenha', N'abc')
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (2, N'Hà Quốc', N'haquoc@gmail.com', N'Đường Hoàng Hoa thám', N'0222222222', N'haquoc', N'abc1')
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (3, N'Hà Duy', N'haduy@gmail.com', N'Thị trấn Thắng', N'0333333333', N'haduy', N'abc2')
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (4, N'Quốc Duy', N'quocduy@gmail.com', N'Hiệp Hòa', N'042348747454', N'quocduy', N'abc3')
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (5, N'Hà Linh', N'halinh@gmail.com', N'Bắc Giang', N'0555555555', N'halinh', N'abc4')
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (6, N'Nguyễn Linh', N'nguyenlinh@gmail.com', N'Bắc giang', N'0666666666', N'nguyenlinh', N'abc5')
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (7, N'Hà Thanh', N'hathanh@gmail.com', N'Thị Trấn Thắng', N'0777777777', N'hathanh', N'abc6')
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (8, N'Quốc Bảo', N'quocbao@gmail.com', N'Hiệp Hòa', N'0888888888', N'quocbao', N'abc7')
INSERT [dbo].[Customers_HE153629_SE1606] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Username], [Password]) VALUES (15, N'Duy Nguyễn', N'haquocduy2016@gmail.com', N'Khu 5', N'0373807912', N'duynguyen', N'duynguyen68')
GO
INSERT [dbo].[OrderDetails_HE153629_SE1606] ([OrderID], [ProductID], [Quantity], [productName], [productPrice], [id]) VALUES (2, 24, 6, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails_HE153629_SE1606] ([OrderID], [ProductID], [Quantity], [productName], [productPrice], [id]) VALUES (3, 23, 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Orders_HE153629_SE1606] ON 

INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (2, 1, CAST(N'2021-03-06' AS Date), 1000000, NULL)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (3, 3, CAST(N'2021-06-05' AS Date), 500000, NULL)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (4, 2, CAST(N'2021-03-08' AS Date), 250000, NULL)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (5, 6, CAST(N'2021-02-03' AS Date), 600000, NULL)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (6, 5, CAST(N'2021-04-06' AS Date), 340000, NULL)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (7, 1, CAST(N'2022-03-21' AS Date), 763333, 2)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (8, 1, CAST(N'2022-03-21' AS Date), 763333, 3)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (9, 1, CAST(N'2022-03-21' AS Date), 763333, 4)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (10, 1, CAST(N'2022-03-21' AS Date), 763333, 5)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (11, 1, CAST(N'2022-03-21' AS Date), 763333, 6)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (12, 1, CAST(N'2022-03-21' AS Date), 763333, 7)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (13, 1, CAST(N'2022-03-21' AS Date), 763333, 8)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (14, 1, CAST(N'2022-03-21' AS Date), 763333, 9)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (15, 1, CAST(N'2022-03-21' AS Date), 763333, 10)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (16, 1, CAST(N'2022-03-21' AS Date), 763333, 11)
INSERT [dbo].[Orders_HE153629_SE1606] ([OrderID], [CustomerID], [OrderDate], [totalmoney], [shipping_id]) VALUES (17, 1, CAST(N'2022-03-21' AS Date), 763333, 12)
SET IDENTITY_INSERT [dbo].[Orders_HE153629_SE1606] OFF
GO
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (3, N'Sách-Hố-Louis Sachar', N'TD', N'https://salt.tikicdn.com/cache/w1200/ts/product/20/40/23/e1d59038c6706216680fc828fb29f698.jpg', 57111, 0, N'Còn Hàng', NULL, N'Ở trại Hồ Xanh – một vùng đất khô cằn - tất cả những đứa trẻ được cho là hư hỏng như Stanley phải đào những cái hồ từ ngày này sang ngày khác, báo lại tất cả những gì chúng tìm được. Quản giáo ở trại bảo rằng chúng phải đào để bồi dưỡng nhân cách. Nhưng mọi chuyện có phải chỉ đơn giản như vậy? Stanley dần nhận ra bên dưới những cái hố chứa đựng một sự thật đã được chôn giấu hơn trăm năm qua, từ những ngày Hồ Xanh còn đầy ắp nước trong veo…')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (4, N'Sống Sót Ở Berlin', N'TT', N'https://salt.tikicdn.com/cache/w1200/ts/product/f2/7d/60/ac201a8c84e7fd9610d82570830ec4f9.jpg', 148000, 5, N'Còn Hàng', NULL, N'Cuốn sách nói về lịch sử nước Đức ngày càng chìm sâu bóng tối sau thời khắc Trùm Phát xít Adofl Hitler trở thành Thủ tướng của Đế chế Đức vào năm 1933. Kể từ đó trở đi, nước Đức xảy ra bạo lực liên miên và nạn phân biệt chủng tộc, đặc biệt đối với người Do Thái, Hitler quan ngại với người Do Thái bởi chính sự tài năng của nhóm người đó sẽ làm ảnh hưởng, cản trở đối với quyền lực của hắn.

Đúng vào thời điểm đó, ông William E.Dodd – một giáo sư lịch sử được cử sang Berlin làm Đại sứ Hoa Kỳ tại Đức. Ông cùng cô con gái – Martha sớm được trải nghiệm một nước Đức kỳ lạ, tươi đẹp, nhưng cũng đầy rẫy hiểm nguy bủa vây. Trong khi đó, Hitler lại ngày càng tỏ ra thiện chí và ưa chuộng hòa bình.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (5, N'Đáp Án Của Thời Gian', N'TT', N'https://salt.tikicdn.com/cache/w1200/ts/product/a4/10/25/e704809bd4661dd63b9223f84186f2b8.jpg', 107000, 33, N'Còn Hàng', NULL, N'Đó chính là Đổng Tiểu Mãn – cô gái duy nhất vẫn luôn ngồi trên chuyến xe cuộc đời của Trần Dịch Dương, trải qua nhiều trạm dừng song chưa từng một lần bước xuống, một mực chờ đợi cậu nhìn về phía mình. Thời gian đã lấy mất thời niên thiếu rực rỡ của Trần Dịch Dương, để rồi trả lại cho cậu ‘một người có cùng nhịp bước’ mà cậu vẫn luôn kiếm tìm.

Với cách kể chuyện chậm rãi mà dịu dàng bằng những con chữ như chạm đến ngóc ngách trái tim độc giả, Lư Tư Hạo đã viết nên một cuốn tiểu thuyết đầy rung cảm về tuổi trẻ - “Đáp án của thời gian”.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (6, N'Những Đứa Trẻ Bị Mắc Kẹt', N'TT', N'https://salt.tikicdn.com/cache/w1200/ts/product/f1/2e/23/ec47c3d25a59699ecea397ba1bd34c46.jpg', 89000, 21, N'Còn Hàng', NULL, N'Bạn có biết, trong mỗi chúng ta đều có một đứa trẻ không bao giờ được giải phóng? Đó là một người trưởngthành luôn thấy mình thiệt thòi, cô đơn bởi tuổi thơ không trọn vẹn tình yêu thương của cả cha và mẹ, không có bạn bè chơi cùng. Đó là một người lớn không tự tin, luôn cô đơn vì từ bé đến lớn luôn bị mẹ so sánh và đối xử phân biệt với chị/em của mình. Đó là những nhân cách khác trong con người chúng ta, một góc tối trong tâm hồn được hình thành bởi những ẩn ức tuổi thơ, ám ảnh cuộc đời mà chính ta không vượt qua được. Đó cũng chính là một trong những tâm lý tội phạm dẫn đến các hành vi phạm tội.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (7, N'Mắt Bão', N'TT', N'https://salt.tikicdn.com/cache/w1200/ts/product/68/fa/d8/5856d56c606338c49022c89fb1cebc6d.jpg', 77500, 17, N'Còn Hàng', NULL, N'“Mọi gia đình hạnh phúc đều có chung niềm hạnh phúc, nhưng mỗi gia đình bất hạnh lại mang một nỗi bất hạnh riêng” - "Mắt bão" chính là câu chuyện cảm động về cặp vợ chồng trẻ mang nỗi bất hạnh đặc biệt như thế.

Trải qua bao khổ đau mất mát và ám ảnh tâm lý, họ vẫn bên nhau bền chặt, quyết không buông rời. Không chỉ là khúc ca cảm động về tình cảm gia đình, Mắt bão còn khiến người đọc trăn trở về ranh giới giữa Thiện và Ác, giữa Trắng và Đen, đồng thời đề cao chính nghĩa, sự khoan hồng thứ tha đối với những con người biết ăn năn hối cải, và lòng cảm thông nhân ái với những số phận khốn khổ bị đẩy vào bước đường cùng. Dù có những khoảnh khắc day dứt xót xa đến ám ảnh, nhưng câu chuyện vẫn đẹp nao lòng, bởi bao phủ lên tất thảy những đau thương kia chính là tình cảm con người thiêng liêng nhất.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (8, N'Những Điều Xinh Đẹp Giống Như Em', N'TD', N'https://salt.tikicdn.com/cache/w1200/ts/product/85/f4/fc/3b8c3c767151f91a1bb3133461713d08.jpg', 66750, 0, N'Hết Hàng', NULL, N'Quá khứ dưới chân bạn là một chuỗi những niềm vui rạng rỡ và nỗi buồn ủ dột, lặp đi lặp lại.Ngay cả cái ngày mà bạn chao đảo trong nỗi buồn sâu thẳm, bạn cũng đã trở thành bông hoa xinh đẹp giữa vũng bùn mà còn không hề hay biết đấy thôi. Rồi vài cái gai mọc trên cành hoa thì có sao. Bởi những cái gai ấy sẽ bảo vệ cho bạn đến tận cùng.Con tim đã bị giằng xé bởi nỗi cô đơn và sự mặc cảm, giờ đây chỉ cần lành lặn trở lại và trưởng thành đẹp xinh.Dù ta có cầu nguyện hằng đêm cũng sẽ chẳng có điều tốt đẹp hơn xảy đến, nhưng ngày hôm nay trôi đi rồi cũng sẽ trở thành hôm qua, mầm ươm dưới chân bạn sẽ đâm chồi nảy lộc. Như vậy khi ngày mai đến, ta lại tiếp tục sống và chống chọi với cuộc đời.Bởi tất cả chúng ta, đều đang trong cuộc hành trình của chính mình.Nếu bạn đã từng rất khổ sở khi sống một cuộc đời không theo ý mình, một cuộc đời không giống với những gì con tim mình mách bảo.Bạn đừng buồn, bạn đã làm rất tốt rồi.Cố lên nhé.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (9, N'Đời Nhẹ Khôn Kham', N'TT', N'https://salt.tikicdn.com/cache/w1200/ts/product/5a/a3/7b/cb8b5cd5fe71066c978889950ee7ddc3.jpg', 105780, 7, N'Còn Hàng', NULL, N'Trong Đời nhẹ khôn kham, sự biến mất cái tôi cá nhân không phải do máy móc kỹ thuật mà do nhà nước chuyên chế. Nhân vật Jan Prochazka và giáo sư Vaclav Cerny chơi thân với nhau, nhưng họ không thể ngờ rằng tất cả cuộc trò chuyện trong bàn tiệc đều được bí mật ghi âm lại. Vào năm 1970 hay 1971, muốn làm mất uy tín của Prochazka, cảnh sát cho phát những cuộc nói chuyện ấy trên đài phát thanh.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (10, N'Một Mảnh Trăng', N'TT', N'https://salt.tikicdn.com/cache/w1200/ts/product/1a/97/51/40a11970b172852f5a084e3db9b93f0e.jpg', 74250, 15, N'Còn Hàng', NULL, N'Một mảnh trăng - Cuốn sách được hàng vạn độc giả Hàn Quốc đồng cảm và yêu thích!

Rốt cuộc, tất cả chúng ta đều sống trong một thế giới không hoàn hảo.

Một mảnh trăng – Cuốn sách an ủi những trái tim tổn thương khi trở thành người lớn.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (11, N'Kỷ Luật Tự Giác', N'TD', N'https://salt.tikicdn.com/cache/w1200/ts/product/27/2e/63/308986aa2c17293af227162874ad24a3.jpg', 60600, 3, N'Còn Hàng', NULL, N'KÝ LUẬT TỰ GIÁC, cuốn sách đã thành công chỉnh đốn lối sống của hàng triệu người trẻ Trung Quốc, sẽ giúp bạn hiểu: “Tự do” thực sự không phải là tùy theo ý thích, mà là tự mình làm chủ.

Càng tự giác thì càng có nhiều quyền lựa chọn. Một ngày, hai ngày, hay thậm chí vài tháng chưa thấy gì, nhưng một năm, hai năm, 10 năm, 20 năm sau những người tự giác và những người không tự giác sẽ bước trên những con đường hoàn toàn khác nhau. Bởi vì người càng tự giác càng hiểu mình thực sự muốn gì, nên mới không cần lãng phí thời gian và sức lực vào những chuyện vô nghĩa.

Theodore Roosevelt cũng từng nói: "Có một kiểu phẩm chất có thể giúp chúng ta lột xác tỏa sáng trong cuộc đời bình thường. Phẩm chất đó không phải là tư chất trời cho, không phải nhờ giáo dục, cũng không phải IQ, mà là SỰ TỰ GIÁC". 99% thành công trên thế giới này đều không phải là ngẫu nhiên. Phía sau hào quang luôn là sự kiên trì tự giác không ngừng nghỉ.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (12, N'Ám Ảnh Sợ Xã Hội', N'TD', N'https://salt.tikicdn.com/cache/w1200/ts/product/8e/0a/47/70d281ef74f6976194bdce448bbabeb1.jpg', 88900, 17, N'Còn Hàng', NULL, N'Ngày nay tuy mật độ dân số trong thành phố dày đặc nhưng con người ngày càng sợ hãi xã giao, họ sẵn sàng lựa chọn ở một mình thay vì qua lại thân thiết với người thân, bạn bè hay đồng nghiệp. Với lý do chính là sợ giao tiếp với người khác, không biết giao tiếp như thế nào, khi cần giao tiếp thì toàn thân cảm thấy căng thẳng, bồn chồn. Lâu dần họ trở nên mặc cảm, tự ti với chính mình.

Có hàng ngàn nguyên nhân tồn tại khiến con người thích ở một mình, tuy nhiên đây cũng là một hiện tượng khá quan ngại. Đặc biệt, trong Tâm lý học, tình trạng này được nhắc đến với tên gọi - “Hội chứng sợ xã hội”. Hội chứng này thường kéo theo các bệnh tâm lý khác như trầm cảm, rối loạn lo âu xã hội, thậm chí có thể nặng nề tới mức gây ảnh hưởng tới việc đi làm, đi học hoặc trong các hoạt động đời sống hàng ngày.

Việc tự nhốt mình trong phòng cũng được coi là 1 phương pháp có tác dụng, thế nhưng, tuyệt đối không phải cách giải quyết tối ưu. Dẫu sao một con người cũng không thể nào đoạn tuyệt xã giao với người khác. Vậy nên, cuốn sách “Ám ảnh sợ xã hội - Chạy trốn hay đối mặt” sẽ là giải pháp dành cho những người đã, đang và có thể chưa hiểu rõ về “Hội chứng sợ xã hội”.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (15, N'Người Thành Công Làm Gì Vào Buổi Sáng', N'TD', N'https://salt.tikicdn.com/cache/w1200/ts/product/1a/8f/d3/a6245425b698e5bd74614053cd28a9a5.jpg', 62400, 19, N'Còn Hàng', NULL, N'Nếu bạn tò mò về thói quen buổi sáng của những người thành công hay muốn thay đổi chính mình trở thành phiên bản tốt nhất hãy đọc ngay cuốn sách “Người Thành Công Làm Gì Vào Buổi Sáng?”. Bạn sẽ có những buổi sáng tiếp theo trong cuộc đời thật diệu kỳ, đầy năng lượng và tràn đầy hứng khởi cho những mục tiêu to và nhỏ.

Cuốn sách chia làm 6 chương, mỗi chương với những thói quen quan trọng để thay đổi cuộc sống, mối quan hệ, công việc và sự nghiệp của bạn. Ví dụ như từ chương 1 những thói quen vào buổi sáng để trở thành phiên bản tốt nhất của chính mình cho đến chương 6 những thói quen vào buổi sáng để biến ước mơ thành hiện thực.

Cách bạn thức dậy mỗi sáng và những thói quen buổi sáng của bạn (hoặc thiếu điều ấy) sẽ ảnh hưởng sâu sắc đến những cấp độ thành công của bạn trong từng phạm trù của cuộc sống.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (16, N'Thế Giới Rộng Lớn Lòng Người Chật Hẹp', N'TN', N'https://salt.tikicdn.com/cache/w1200/ts/product/f3/ce/88/8a7e7a39848d37432370abda30fe2a43.jpg', 59800, 1, N'Còn Hàng', NULL, N'Giữa thế giới thực và thế giới riêng của bạn luôn tồn tại những điểm khác nhau. Đó là nơi bạn trú ngụ chiếc bóng chân thật của mình, nơi mà ít ai có quyền được biết đến.

“Mỗi một người trên Trái Đất này đều mang bên mình một thế giới riêng. Đó là một khoảng trời riêng biệt, một cuộc đời của riêng bạn. Có thể, trong thế giới ấy sẽ có vô số người bước vào và đi ra, và những khoảng trống trong thế giới của bạn ngày một rộng lớn, để chứa đựng vô vàn người và để chừa chỗ cho vô vàn người…”

Mỗi ngày chúng ta đều đi ngang qua rất nhiều người và tạm biệt cũng rất nhiều người. Có người sảy chân bước vào thế giới của người khác, có người lại vội vã rời đi. Thế giới cứ thế quay cuồng trong vô hình.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (17, N'Sách Khánh Nợ', N'TD', N'https://salt.tikicdn.com/cache/w1200/ts/product/bb/4f/83/ebeba86cb38682a10d2303f764009f7f.jpg', 64300, 0, N'Còn Hàng', NULL, N'Cơn sóng thần tín dụng giá rẻ quét qua thế giới từ năm 2002 đến năm 2008 không phải là một hiện tượng tài chính đơn giản: đó là một sự cám dỗ, một cơ hội cho mọi xã hội phô bày những khía cạnh trong tính cách mà bình thường chúng ta không bao giờ để lộ ra. Người Iceland muốn ngừng câu cá và trở thành nhân viên ngân hàng đầu tư, người Đức muốn trở nên Đức hơn, còn người Ireland không muốn làm người Ireland nữa.Cuốn sách này bắt đầu với một bản điều tra về những bong bóng vượt ra ngoài nước Mỹ. Nó tuyệt vời và bi hài đến mức các độc giả người Mỹ phải thốt lên rằng: “Ồ, những kẻ ngoại quốc này thật ngu ngốc”. Nhưng ngay sau đó, khi Lewis chuyển con mắt xét đoán không khoan nhượng về California và Washington, người Mỹ sẽ biết sự hài hước ấy chỉ là miếng mồi dẫn họ đến một cái bẫy khi choáng váng nhận ra rằng những khoản nợ của nước Mỹ - con nợ lớn nhất và tham lam nhất thế giới này - sắp đến hạn thanh toán.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (18, N'Mình Ngồi Xuống Kể Những Tổn Thương Trong Lòng', N'TN', N'https://salt.tikicdn.com/cache/w1200/ts/product/8a/48/50/0750860b42a1286a8e522ce7b0282dda.jpg', 90000, 22, N'Còn Hàng', NULL, N'“Mình Ngồi Xuống Kể Tổn Thương Trong Lòng” là cuốn sách thứ hai của Minh Dự, một nghệ sĩ trẻ đa tài trong showbiz Việt. Dù phần lớn độc giả vẫn biết đến Minh Dự như là một diễn viên trẻ đầy tài năng, nhưng chàng nghệ sĩ này ngoài việc nhập tâm các loại vai bi hài một cách đầy cảm xúc thì còn có biệt tài tung hứng câu chữ vô cùng điệu nghệ.

“Mình Ngồi Xuống Kể Tổn Thương Trong Lòng” là những dòng văn, câu thơ trải lòng về cuộc đời, tình yêu, cách chúng ta đối diện với người và với chính bản thân mình, cách một người cô đơn ngồi xuống giữa thế gian tấp nập, trải lòng mình ra, cẩn trọng ghép nối từng mảnh vỡ để tự chữa lành.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (19, N'Thiên Tài Bên Trái-Kẻ Điên Bên Phải', N'TN', N'https://salt.tikicdn.com/cache/w1200/ts/product/7c/e8/34/4d3636aadb471cad0bf2f45d681e4f23.jpg', 134000, 23, N'Còn Hàng', NULL, N'Hỡi những con người đang oằn mình trong cuộc sống, bạn biết gì về thế giới của mình? Là vô vàn thứ lý thuyết được các bậc vĩ nhân kiểm chứng, là luật lệ, là cả nghìn thứ sự thật bọc trong cái lốt hiển nhiên, hay những triết lý cứng nhắc của cuộc đời?

Lại đây, vượt qua thứ nhận thức tẻ nhạt bị đóng kín bằng con mắt trần gian, khai mở toàn bộ suy nghĩ, để dòng máu trong bạn sục sôi trước những điều kỳ vĩ, phá vỡ mọi quy tắc. Thế giới sẽ gọi bạn là kẻ điên, nhưng vậy thì có sao? Ranh giới duy nhất giữa kẻ điên và thiên tài chẳng qua là một sợi chỉ mỏng manh: Thiên tài chứng minh được thế giới của mình, còn kẻ điên chưa kịp làm điều đó. Chọn trở thành một kẻ điên để vẫy vùng giữa nhân gian loạn thế hay khóa hết chúng lại, sống mãi một cuộc đời bình thường khiến bạn cảm thấy hạnh phúc hơn?')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (20, N'Trước Mặt Là Thế Giới Trong Lòng Là Cô Đơn', N'TN', N'https://salt.tikicdn.com/cache/w1200/ts/product/1c/e1/18/1d97af75b2dae4ac02d7e803c44c61b3.jpg', 60000, 13, N'Còn Hàng', NULL, N'A tòn quay trở lại với Trước mặt là thế giới, trong lòng là cô đơn với dáng vẻ của một lữ hành, bước lên đoàn tàu đau thương, đi qua những trạm mưa nắng, chạy qua những đêm chất chồng muộn phiền, và cuối cùng là thả mình xuống điểm dừng đầy yên an, lắng đọng.
Chúng ta bắt gặp chính mình, gặp tuổi trẻ của mình giao thoa với những chia sẻ đầy xúc cảm về tình yêu dưới ngòi bút của a tòn.

Một tuổi trẻ dốc lòng vì một người dù người ấy lại toàn tâm toàn ý thương yêu một người khác.
Một tuổi trẻ mà khoảnh khắc chia ly chỉ đơn giản như một cái quay đầu, ngoảnh lại đã không còn nhìn thấy người từng hứa sẽ luôn đợi chờ.
Một tuổi trẻ dẫu tháng năm có lững thững trôi nhưng bản thân vẫn thắt lòng lùi một bước, để hiểu rằng trong cuộc đời này mình và người ấy không thể nào đi cùng nhau.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (21, N'Onepiece', N'TTR', N'https://salt.tikicdn.com/cache/w1200/ts/product/d6/e3/7b/f861bc75d9270ef96ca37b2b6a433930.jpg', 13000, 14, N'Còn Hàng', NULL, N'“Thường chỉ cần dọn một chút xíu cái xó xỉnh nào đó ở trong nhà, đảm bảo sẽ phải dọn liên tiếp các chỗ khác, không dừng được!!

Ờ thì cũng đúng!! Thực ra tôi chỉ muốn tuyên bố thử câu đó một lần xem thế nào thôi. (Ngưỡng mộ)

Chớ còn lâu mới có chuyện tôi làm tiếp.

Nhưng mà chuyến phiêu lưu của các nhân vật thì vẫn sẽ tiếp tục không dừng!!

Chúng ta lại ra khơi với tập 95 nhé!!”')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (22, N'Doraemon', N'TTR', N'https://salt.tikicdn.com/cache/w1200/ts/product/38/ba/e8/c1787ee8cb8d80fd80493e27530e02aa.jpg', 15000, 15, N'Còn Hàng', NULL, N'Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng, đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến giấc mơ của chúng ta thành sự thật. Nhưng trên tất cả, Doraemon chính là hiện thân của tình bạn cao đẹp, của niềm khát khao vươn tới những tầm cao.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (23, N'Conan', N'TTR', N'https://salt.tikicdn.com/cache/w1200/ts/product/c5/87/63/550247a3fbb96aac8178a1ee78dfb50a.jpg', 10000, 16, N'Còn Hàng', NULL, N'Thám Tử Lừng Danh Conan - Tập 99')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (24, N'Shin-Cậu bé bút chì', N'TTR', N'https://salt.tikicdn.com/cache/w1200/ts/product/75/26/42/a0c760fe47d19e8ea03204c25eb299b3.jpg', 14000, 17, N'Còn Hàng', NULL, N'Với tài năng kể chuyện hấp dẫn, tác giả đã biến các trang sách của mình thành những sân chơi ngập tràn tiếng cười của những cô bé, cậu bé hồn nhiên và một thế giới tuổi thơ đa sắc màu. Những bài học giáo dục nhẹ nhàng, thấm thía cũng được lồng ghép một cách khéo léo trong từng tình huống truyện. Có thể Shin là một cậu bé cá tính, hiếu động. Có thể những trò tinh nghịch của Shin đôi khi quá trớn, chẳng chừa một ai. Nhưng sau những "sự cố" do Shin gây ra, người lớn thấy mình cần "quan tâm" đến trẻ con nhiều hơn nữa, các bạn đọc nhỏ tuổi chắc hẳn cũng được dịp nhìn nhận lại bản thân, để phân biệt điều tốt điều xấu trong cuộc sống.')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (25, N'Thần Đồng Đất Việt', N'TTR', N'https://salt.tikicdn.com/cache/w1200/media/catalog/product/t/d/tddv-t11.jpg', 20000, 20, N'Còn Hàng', NULL, N'Tiền bạc có làm nên hạnh phúc? Liệu với ba đồng tiền vàng, “thần đồng” Trạng Tí có giúp Xã Bạc đoàn tụ gia đình?')
INSERT [dbo].[product_HE153629_SE1606] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate], [describe]) VALUES (123, N'w', N'TD', N'https://salt.tikicdn.com/cache/w1200/ts/product/69/97/d0/cf72c2b3f01fe2deed53546ce66315e0.jpg', 86000, 123, N'Còn Hàng', NULL, N'abc')
GO
SET IDENTITY_INSERT [dbo].[Shipping_HE153629_SE1606] ON 

INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (NULL, NULL, NULL, 1)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'name', N'phone', N'address', 2)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'name', N'phone', N'address', 3)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'name', N'phone', N'address', 4)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'Nguyá»n Duy', N'0123456783', N'khu ash', 5)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'haduy', N'094627436', N'khu ash', 6)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'haduy2001', N'023848737', N'Khu 5', 7)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'Nguyá»n Duy', N'0123847347', N'khu ash', 8)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'abc', N'023484756', N'BG', 9)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'Nguyá»n Duy', N'012123432', N'Sá» NhÃ  390', 10)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'HaDuy', N'023234243', N'khu ash', 11)
INSERT [dbo].[Shipping_HE153629_SE1606] ([name], [phone], [address], [id]) VALUES (N'Nguyá»n Duy', N'0132376434', N'Sá» NhÃ  390', 12)
SET IDENTITY_INSERT [dbo].[Shipping_HE153629_SE1606] OFF
GO
ALTER TABLE [dbo].[Orders_HE153629_SE1606] ADD  CONSTRAINT [DF_Orders_HE153629_SE1606_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Customers_HE153629_SE1606]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Accounts_HE153629_SE1606] ([CustomerID])
GO
ALTER TABLE [dbo].[OrderDetails_HE153629_SE1606]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[product_HE153629_SE1606] ([ID])
GO
ALTER TABLE [dbo].[Orders_HE153629_SE1606]  WITH CHECK ADD  CONSTRAINT [CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers_HE153629_SE1606] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders_HE153629_SE1606] CHECK CONSTRAINT [CustomerID]
GO
ALTER TABLE [dbo].[Orders_HE153629_SE1606]  WITH CHECK ADD  CONSTRAINT [FK_Orders_HE153629_SE1606_Accounts_HE153629_SE1606] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Accounts_HE153629_SE1606] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders_HE153629_SE1606] CHECK CONSTRAINT [FK_Orders_HE153629_SE1606_Accounts_HE153629_SE1606]
GO
ALTER TABLE [dbo].[Orders_HE153629_SE1606]  WITH CHECK ADD  CONSTRAINT [FK_Orders_HE153629_SE1606_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping_HE153629_SE1606] ([id])
GO
ALTER TABLE [dbo].[Orders_HE153629_SE1606] CHECK CONSTRAINT [FK_Orders_HE153629_SE1606_Shipping]
GO
ALTER TABLE [dbo].[product_HE153629_SE1606]  WITH CHECK ADD FOREIGN KEY([cat_ID])
REFERENCES [dbo].[Categories_HE153629_SE1606] ([ID])
GO
