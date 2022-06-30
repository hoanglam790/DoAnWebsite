USE [master]
GO
/****** Object:  Database [QuangBaDL]    Script Date: 30/06/2022 1:02:54 PM ******/
CREATE DATABASE [QuangBaDL]
GO
USE [QuangBaDL]
GO
/****** Object:  Table [dbo].[DIADANH]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIADANH](
	[MaDiaDanh] [int] IDENTITY(1,1) NOT NULL,
	[TenDiaDanh] [nvarchar](50) NOT NULL,
	[MaHuyen] [int] NOT NULL,
	[MaHinhAnh] [int] NOT NULL,
	[GioiThieu] [ntext] NULL,
 CONSTRAINT [PK_DIADANH] PRIMARY KEY CLUSTERED 
(
	[MaDiaDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINHANH]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHANH](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhAnh] [nvarchar](50) NOT NULL,
	[MoTaHinhAnh] [nvarchar](50) NULL,
 CONSTRAINT [PK_HINHANH] PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HUYEN]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HUYEN](
	[MaHuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenHuyen] [nvarchar](50) NOT NULL,
	[MieuTa] [ntext] NOT NULL,
 CONSTRAINT [PK_HUYEN] PRIMARY KEY CLUSTERED 
(
	[MaHuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHSAN]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHSAN](
	[MaKS] [int] IDENTITY(1,1) NOT NULL,
	[TenKS] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SĐT] [varchar](11) NOT NULL,
	[MaHuyen] [int] NULL,
	[MaHinhAnh] [int] NULL,
 CONSTRAINT [PK_KHACHSAN] PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAHANG]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAHANG](
	[MaNhaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaHang] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[MaHinhAnh] [int] NULL,
 CONSTRAINT [PK_NHAHANG] PRIMARY KEY CLUSTERED 
(
	[MaNhaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[TenHienThi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAITIN]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAITIN](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_THELOAITIN] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINTUC]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINTUC](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](100) NOT NULL,
	[NoiDungTinTuc] [ntext] NOT NULL,
	[MaTheLoai] [int] NOT NULL,
	[MaHinhAnh] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_TINTUC] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOURDULICH]    Script Date: 30/06/2022 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOURDULICH](
	[MaTour] [int] IDENTITY(1,1) NOT NULL,
	[TenTour] [nvarchar](50) NOT NULL,
	[MieuTa] [nvarchar](255) NOT NULL,
	[GiaTien] [int] NOT NULL,
	[MaHinhAnh] [int] NOT NULL,
	[DuongLink] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_TOURDULICH] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DIADANH] ON 
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (1, N'Bà Nà Hill', 2, 1, N'Bà Nà Hill là một địa điểm du lịch tại Huyện Hòa Vang (Thành phố Đà Nẵng thuộc vùng Duyên Hải Nam Trung Bộ). Cách trung tâm Thành phố Đà Nẵng khoảng 42 km. Núi Bà Nà toạ lạc 1 khu vực thuộc về dãy núi Trường Sơn nằm ở xã Hòa Ninh, huyện Hòa Vang, cách Đà Nẵng 25 km về phía. Sau năm 2000, Bà Nà đã được đánh thức và tái tạo vị thế một thị trấn du lịch và nhanh chóng trở lại ngôi vị của một trong những khu du lịch nổi tiếng nhất của thành phố Đà Nẵng.')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (2, N'Asia Park', 1, 11, N'Công viên Asia Park ở Đà Nẵng có gì mà bất cứ ai một lần đặt chân đến thành phố này đều không thể bỏ lỡ? Đó chính là nhờ lối kiến trúc như một châu Á thu nhỏ với 22 trò chơi lý thú đem tới cảm giác không thể nào quên. Asia Park – Công viên Châu Á là tổ hợp vui chơi, ẩm thực, chợ đêm,… gồm nhiều hoạt động đa dạng lý thú dành cho mọi thành viên trong gia đình. Nếu đặt chân tới đây, các bạn trẻ, các bé, các đôi tình nhân cũng như các bậc cha mẹ đều có thể lựa chọn được trò chơi phù hợp với đủ cung bậc cảm xúc và cấp độ trong hơn 20 trò chơi tại công viên. Ngoài các trò chơi sôi động nhiều cung bậc cảm xúc, Asia Park còn chiêu đãi bữa tiệc ẩm thực từ nhiều miền Tổ quốc và các quốc gia trên thế giới. Đó là 11 quầy đồ ăn từ đồ ăn Việt Nam tới Trung Quốc, Hàn Quốc, Nhật Bản, Thái Lan, Singapore, Malaysia,… tại nhà hàng Thế giới Buffet tại Asia Park. Các show nghệ thuật mang màu sắc văn hóa các quốc gia cùng không khí sôi động của các đại nhạc hội cũng là điều khiến nhiều người mê mẩn khi đến Asia Park. Những nghệ sĩ biểu diễn các tiết mục điêu luyện công phu nhất và bạn không mất bất kỳ chi phí nào nhờ miễn phí vé vào cửa. Chợ đêm chuẩn Hàn với hàng trăm gian hàng độc đáo lần đầu tiên xuất hiện tại Đà Nẵng của Asia Park sẽ khiến chuyến du lịch khám phá của bạn trở nên hoàn hảo. Những món ăn đường phố hấp dẫn, các món quà tặng xinh xắn và hàng loạt đồ thủ công mỹ nghệ cùng đặc sản Đà Thành đều được bày bán tại đây, giúp bạn vừa vui chơi vừa sắm quà mang về dễ dàng.')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (3, N'Chùa Tam Thai', 4, 13, N'ఄChùa Tam Thai là chốn linh thiêng được nhiều người dân, Phật tử và khách du lịch đến chiêm bái hằng năm. Trải qua nhiều đợt trùng tu, đến nay ngôi chùa vẫn giữ được nét hoài cổ và kiến trúc độc đáo. Chùa Tam Thai có địa chỉ tại phường Hòa Hải, thuộc địa phận quận Ngũ Hành Sơn, TP. Đà Nẵng. Ngôi chùa linh thiêng được dựng nên trên một mảnh đất của ngọn núi Thủy Sơn – một trong năm ngọn núi thuộc dãy Ngũ Hành Sơn. Vì vậy, đây không chỉ là điểm du lịch tâm linh cổ kính, linh thiêng mà còn là điểm tham quan vãn cảnh tuyệt đẹp. Tại khu vực chùa tọa lạc có một khối đá được dựng đứng, nằm trên một dải đất thuộc hướng Bắc của núi Ngũ Hành Sơn. Trên phần đỉnh Hòn Thủy, du khách sẽ thấy có 3 ngọn tựa như sao Tam Thai. Đây cũng chính là lí do mà ngôi chùa được lấy tên là chùa Tam Thai. Chùa Tam Thai Non Nước được biết đến là một trong những địa điểm du lịch Đà Nẵng trứ danh. Đến tham quan địa chỉ này, bạn sẽ được chiêm ngưỡng kiến trúc độc đáo của ngôi chùa.  Đầu tiên, để có thể di chuyển lên chùa, bạn cần đi qua 156 bậc thang đã phủ rêu phong, nhuốm màu thời gian. Kiến trúc chùa Tam Thai khác biệt so với nhiều ngôi chùa khác, công trình này bao gồm 3 tầng: tầng 1 là Thượng Thai, tầng 2 là Trung Thai, tầng 3 là Hạ Thai. Tựu trung lại, kiến trúc của chùa được dựng nên theo hình chữ Vương, chứa đựng nét đặc trưng của công trình thời nhà Nguyễn. Từ vị trí cao nhất của ngọn núi Thủy Sơn, bạn có thể chiêm ngưỡng toàn cảnh núi non hùng vĩ, xa hơn là dòng sông Hàn và sông Cẩm Lệ. Vì vậy, nếu bạn còn băn khoăn Đà Nẵng có gì chơi thì hãy đến tham quan ngôi chùa này – vừa là điểm du lịch tâm linh, vừa là nơi check-in Đà Nẵng không nên bỏ lỡ.')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (4, N'Du lịch sông Hàn', 1, 12, N'Du thuyền trên sông Hàn là một trong những trải nghiệm không thể bỏ lỡ khi “vi vu” Đà Nẵng. Du khách sẽ có cơ hội ngắm phố phường về đêm và thưởng thức những món đặc sản độc đáo tại thành phố biển xinh đẹp này. Đi du thuyền trên sông Hàn Đà Nẵng là một trong những trải nghiệm du lịch hấp dẫn nhất của thành phố biển. Khi tham gia, du khách sẽ có cơ hội chiêm ngưỡng toàn cảnh sông Hàn về đêm lung linh với ánh đèn đủ màu lấp loáng trên mặt nước. Bên cạnh đó, lựa chọn tham quan bằng du thuyền, du khách còn được ngắm nhìn những cây cầu bắc qua sông Hàn nổi tiếng như: Cầu sông Hàn, cầu Rồng Đà Nẵng,...Đặc biệt, với chuyến du lịch sông Hàn bằng du thuyền, du khách sẽ được thả hồn trước sông nước mênh mang, khám phá sự sôi động của nhịp sống thành thị 2 bên bờ sông. Cầu tình yêu, tượng cá chép hóa rồng, chợ đêm Sơn Trà,... càng trở nên thu hút hơn dưới ánh đèn ban đêm. ')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (5, N'Làng Chiếu Cẩm Nê', 2, 21, N'Làng chiếu Cẩm Nê thuộc xã Hòa Tiến, huyện Hòa Vang cách trung tâm thành phố Đà Nẵng 14km về phía Tây-Nam, nằm giữa một vùng đồng bằng do phù sa sông Cẩm Lệ bồi tạo nên. Chẳng những người quanh vùng mà cả người ở xa tận Huế, Đông Hà ngoài Quảng Trị cũng biết cái tên của làng quê nhỏ bé này : Làng Cẩm Nê. Bởi làng có nghề dệt chiếu truyền thống và nổi tiếng từ nhiều đời nay

Theo nhiều tài liệu thì nghề chiếu Cẩm Nê có nguồn gốc từ Hoằng Hóa, Thanh Hóa, được truyền vào miền Nam khoảng từ thế kỷ 15, lúc vua Lê Thánh Tôn chiến thắng Chiêm Thành, sát nhập thành Đồ Bàn vào Quảng Nam- Đà Nẵng. Trải qua bao thăng trầm của lịch sử và bị cạnh tranh gay gắt, nghề chiếu Cẩm Nê vẫn tồn tại và phát triển đến nay.')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (6, N'Làng Đá Mỹ Nghệ Non Nước', 4, 22, N'Làng đá Non Nước nằm dưới chân núi Ngũ Hành Sơn là làng nghề truyền thống nổi tiếng của thành phố Đà Nẵng với các sản phẩm đá mỹ nghệ. Theo dòng thời gian, đã có không ít làng nghề truyền thống dần mai một, thế nhưng làng đá mỹ nghệ Non Nước vẫn nguyên vẹn một sức sống mãnh liệt với thời gian và không ngừng phát triển cho đến ngày nay.')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (8, N'Bãi biển Xuân Thiều', 7, 5, N'Bên cạnh biển Mỹ Khê xinh đẹp, Đà Nẵng còn sở hữu bãi biển Xuân Thiều bình yên, thơ mộng với dải cát dài trắng mịn, nước biển xanh ngắt một màu. Không chỉ được biết đến là thành phố xinh đẹp với những danh lam thắng cảnh hữu tình và thiên đường ẩm thực đa dạng, địa điểm du lịch Đà Nẵng còn nổi tiếng với bãi biển Xuân Thiều hoang sơ, thơ mộng, làm say đắm lòng người. Nơi đây trở thành điểm đến bình yên, thu hút đông đảo du khách tham quan và khám phá hàng năm. Không giống với nhiều bãi biển xinh đẹp khác, bãi biển Xuân Thiều thu hút bởi nét đẹp hoang sơ, không gian yên bình, lãng mạn. Nơi đây chắc chắn sẽ là điểm dừng chân mang đến cho bạn nhiều trải nghiệm lý thú với những phút giây thư giãn tuyệt vời. Đứng trên bờ biển, bạn có thể phóng tầm mắt ra xa và ngắm nhìn  ngọn núi Hải Vân hùng vĩ cùng bán đảo Sơn Trà đẹp tuyệt trần. Không chỉ thế, phía xa xa ngoài kia là cửa biển - nơi giao thoa giữa biển và núi, du khách sẽ được thỏa sức đắm chìm vào khoảng không mênh mông, bất tận, thả hồn vào những đợt gió mang hương vị biển khơi. Một chuyến du ngoạn hoàn hảo đến biển Xuân Thiều không thể thiếu những món ngon Đà Nẵng, mang đậm hương vị của dải đất miền Trung. Dọc theo bờ biển, du khách có thể thoải mái lựa chọn nhà hàng phù hợp với sở thích của mình để trải nghiệm thiên đường ẩm thực phong phú, gồm các món ăn đa dạng từ Việt đến Âu. Bãi biển Xuân Thiều nổi tiếng nhất với nhiều món ngon từ hải sản tươi sống, được nhập trực tiếp từ tàu cá như tôm, mực, ghẹ, cua… Chắc chắn các đặc sản Đà Nẵng này sẽ làm chiều lòng mọi tín đồ du lịch nếu có dịp đặt chân đến nơi đây.')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (9, N'Bãi biển Nam Ô', 7, 6, N'Nếu bạn đã khám phá hết những điểm du lịch tại trung tâm thành phố Đà Nẵng và muốn tìm một nơi bình yên với phong cảnh thiên nhiên hữu tình thì hãy ghé đến rạn Nam Ô để đổi gió. Không giống như những bãi biển Đà Nẵng xô bồ, náo nhiệt, rạn Nam Ô là một địa điểm mới nổi, không bị tác động bởi sự đầu tư du lịch nên vẫn giữ được nét đẹp hoang sơ hiếm có. Khi vừa đến đây, du khách không khỏi trầm trồ trước khung cảnh thiên nhiên hữu tình với bãi cát trắng trải dài, làn nước biển xanh ngắt dập dìu những con sóng. Xa xa là bãi đá với nhiều hình thù, kích cỡ khác nhau. Bước chân lên bãi đá, bạn sẽ thu vào tầm mắt một cảnh biển nên thơ với những con sóng bạc đầu trải dài trắng xóa cả một vùng. Từ rạn Nam Ô, bạn sẽ nhìn thấy điểm du lịch bán đảo Sơn Trà, xa hơn một chút là đèo Hải Vân ở phía Tây. Rạn đá này cũng là địa điểm ngắm bình minh và hoàng hôn cực đẹp. Với phong cảnh nên thơ, hữu tình, thật không khó hiểu nếu rạn Nam Ô có sức hút mãnh liệt với những tín đồ đam mê du lịch. Với khung cảnh đẹp thơ mộng, rạn Nam Ô là địa điểm sống ảo cực chất cho những tín đồ mê chụp ảnh. Tại đây sở hữu nhiều góc đẹp và đặc biệt nhất là những mỏm đá bám đầy rong rêu xanh ngắt một màu vô cùng nổi bật, giúp du khách sở hữu những tấm hình lung linh. Rạn Nam Ô là nơi ở của vô số các loài cá nên bạn có thể tham gia hoạt động câu cá giải trí. Bên cạnh đó, trải nghiệm chèo thuyền thúng bắt hải sản hứa hẹn cũng mang đến trải nghiệm thú vị. Sau khi kết thúc chuyến đi, bạn có thể tự tay chế biến thành quả của mình để tổ chức bữa tiệc BBQ trên bãi biển.')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (10, N'Chùa Quang Minh', 7, 7, N'Du khách đến thành phố Đà Nẵng không chỉ với mục đích du lịch ngắm những danh lam thắng cảnh tuyệt mĩ mà nơi đây còn là để đi cầu những điều tốt đẹp nhất tại những ngôi chùa linh thiêng ở đây. Chùa Quang Minh hiện nay tọa lạc tại số 412 đường Tôn Đức Thắng, phường Hòa Minh, quận Liên Chiểu, thành phố Đà Nẵng. Chùa Quang Minh là một trong những điểm đến du lịch tâm linh được nhiều du khách trong và ngoài nước khi đến thành phố Đà Nẵng thường xuyên ghé thăm để cầu may mắn, bình an, hạnh phúc cho gia đình và mọi nhà. Đến với chùa Quang Minh, du khách không chỉ có thể chiêm ngưỡng toàn bộ những cảnh đẹp tuyệt vời, những công trình kiến trúc vô cùng độc đáo mà du khách còn có thể cầu nguyện những điều tốt đẹp nhất đến với cuộc sống của mình. Đồng thời, không gian của chùa Quang Minh là vô cùng thanh tịnh, dễ chịu, thoáng đãng và thoải mái. Nó có thể giúp bạn xua tan đi hết được toàn bộ những mệt mỏi, lo toan và những bộn bề của cuộc sống đời thường cũng như là có thể khám phá được hết tất cả những nét đẹp về các mặt văn hóa và truyền thống lâu đời của chùa Quang Minh.

Khi du khách có dịp đến với mảnh đất này, bạn nhất định phải ghé thăm chùa Quang Minh để có thể chiêm ngưỡng toàn bộ cảnh đẹp tuyệt vời của nơi này. Để có thể đến được chùa Quang Minh, bạn sẽ có nhiều loại phương tiện để lựa chọn đó là thuê xe máy hoặc thuê taxi có sẵn tại Đà Nẵng rồi sau đó bạn có thể di chuyển đến được chùa Quang Minh. Chùa Quang Minh chắc chắn là một điểm đến tâm linh tuyệt vời dành cho du khách khi du khách có dịp ghé thăm thành phố xinh đẹp này !')
GO
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh], [MaHuyen], [MaHinhAnh], [GioiThieu]) VALUES (12, N'Di chỉ khảo cổ Chăm Phong Lệ', 3, 24, N'Chăm Phong Lệ là một địa điểm du lịch tại Quận Cẩm Lệ (Thành phố Đà Nẵng thuộc vùng Duyên Hải Nam Trung Bộ). Di tích khảo cổ Chăm Phong Lệ thuộc phường Hòa Thọ Đông, quận Cẩm Lệ, thành phố Đà Nẵng. Di tích Chăm Phong Lệ (phường Hòa Thọ Đông, quận Cẩm Lệ) được phát lộ và thực hiện khai quật khảo cổ lần đầu trên diện tích 500 m2 theo Quyết định số 1666/QĐ-BVHTTDL ngày 4-5-2012 của Bộ Văn hóa, Thể thao và Du lịch. Đây là di tích tiêu biểu trong các di tích Chăm tại Đà Nẵng có điều kiện khảo sát đầy đủ nhất, đồng thời là di tích duy nhất cho đến nay trong toàn bộ hệ thống đền tháp Chăm có điều kiện để nghiên cứu và giới thiệu về phần nền móng kiến trúc.')
GO
SET IDENTITY_INSERT [dbo].[DIADANH] OFF
GO
SET IDENTITY_INSERT [dbo].[HINHANH] ON 
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (1, N'ba-na-hill.png', N'Địa điểm du lịch Bà Nà Hill')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (2, N'le-hoi-muc-dong.png', N'Lễ hội Mục Đồng')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (3, N'le-hoi-dua-thuyen.png', N'Lễ hội đua thuyền')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (4, N'hoi-sach-da-nang.png', N'Hội sách Đà Nẵng')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (5, N'bai-bien-xuan-thieu.png', N'Bãi biển Xuân Thiều')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (6, N'bai-bien-nam-o.png', N'Bãi biển Nam Ô')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (7, N'chua-quang-minh.png', N'Chùa Quang Minh')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (8, N'ngu-hanh-son.png', N'Ngũ Hành Sơn')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (9, N'dinh-thac-gian.png', N'Đình Thạc Gián')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (10, N'di-tich-nha-me-nhu.png', N'Di tích nhà mẹ Nhu')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (11, N'asia-park.png', N'Du lịch Asia Park')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (12, N'du-lich-song-han.png', N'Du lịch sông Hàn')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (13, N'chua-tam-thai.png', N'Chùa Tam Thai')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (14, N'cau-quay-song-han.png', N'Du lịch cầu quay sông Hàn')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (15, N'cau-tran-thi-ly.png', N'Cầu Trần Thị Lý')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (16, N'cung-van-hoa-thieu-nhi.png', N'Cung văn hóa thiếu nhi')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (17, N'bao-tang-dieu-khac-cham-pa.png', N'Bảo tàng Điêu khắc Champa')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (18, N'cho-con.png', N'Du lịch Chợ Cồn')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (19, N'ao-dai.jpg', N'Áo dài Đà Nẵng')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (20, N'lang-nghe-nuoc-mam-nam-o.png', N'Làng nghề nước mắm Nam Ô')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (21, N'lang-chieu-cam-ne.png', N'Làng chiếu Cẩm Nê')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (22, N'lang-da-my-nghe-non-nuoc.png', N'Làng đá mỹ nghệ')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (23, N'thanh-pho-da-nang.jpg', N'Thành phố Đà Nẵng')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (24, N'di-chi-khao-co-cham-phong-le.jpg', N'Di chỉ khảo cổ Chăm Phong Lệ')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (25, N'nha-hang-La-Maison-Deli.png', N'Nhà hàng La Maison Deli')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (26, N'nha-hang-waterfront-restaurant&bar.png', N'Waterfront Danang Restaurant & Bar')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (27, N'nha-hang-le-bambino.png', N'Nhà hàng Le Bambino')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (28, N'nha-hang-memory-lounge.png', N'Memory Lounge Đà Nẵng')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (29, N'nha-hang-panorama.png', N'Nhà hàng Panorama Đà Nẵng')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (30, N'nha-hang-khong-gian-xua.png', N'Nhà hàng Không Gian Xưa')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (31, N'tour-da-nang-3-ngay-2-dem.jpg', NULL)
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (32, N'tour-ngu-hanh-son-hoi-an-1-ngay-4.jpg', NULL)
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (33, N'tour-nui-than-tai-1-ngay-gia-re-6.jpg', NULL)
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (34, N'khach-san-royal-charm.jpeg', N'Khách sạn Royal Charm')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (35, N'khach-san-may.jpg', N'Khách sạn May')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (36, N'khach-san-mayana.jpg', N'Khách sạn Mayana')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (37, N'khach-san-cicilia-da-nang.jpg', N'Cicilia Danang Hotels & Spa')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (38, N'khach-san-mercure.jpg', N'Khách sạn Mercure')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (39, N'khach-san-kova-diamond.jpg', N'Khách sạn Kova Diamond')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (40, N'khach-san-brown-bean.jpeg', N'Khách sạn Brown Bean')
GO
INSERT [dbo].[HINHANH] ([MaHinhAnh], [TenHinhAnh], [MoTaHinhAnh]) VALUES (41, N'da-nang-centre-hotel.jpg', N'Khách sạn trung tâm')
GO
SET IDENTITY_INSERT [dbo].[HINHANH] OFF
GO
SET IDENTITY_INSERT [dbo].[HUYEN] ON 
GO
INSERT [dbo].[HUYEN] ([MaHuyen], [TenHuyen], [MieuTa]) VALUES (1, N'Hải Châu', N'<p><span style="font-family: arial, helvetica, sans-serif;">Sau khi t&aacute;ch tỉnh Quảng Nam &ndash; Đ&agrave; Nẵng th&agrave;nh tỉnh Quảng Nam v&agrave; th&agrave;nh phố Đ&agrave; Nẵng, Quận Hải Ch&acirc;u được th&agrave;nh lập v&agrave;o ng&agrave;y 23/01/1997 v&agrave; trở th&agrave;nh quận trung t&acirc;m của th&agrave;nh phố Đ&agrave; Nẵng.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif;">Vị tr&iacute; của Quận Hải Ch&acirc;u: Ph&iacute;a Bắc gi&aacute;p Vịnh Đ&agrave; Nẵng, T&acirc;y gi&aacute;p quận Thanh Kh&ecirc; v&agrave; huyện H&ograve;a Vang, Đ&ocirc;ng gi&aacute;p quận Sơn Tr&agrave; v&agrave; quận Ngũ H&agrave;nh Sơn, Nam gi&aacute;p Quận Cẩm Lệ.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif;">Quận Hải Ch&acirc;u c&oacute; diện t&iacute;ch 21,35 km2, chiếm 1,66% diện t&iacute;ch to&agrave;n th&agrave;nh phố; D&acirc;n số (năm 2010): 196.098 người, chiếm 21,17% số d&acirc;n to&agrave;n th&agrave;nh phố; Mật độ d&acirc;n số: 9.184,92 người/km2. (Theo ni&ecirc;n gi&aacute;m thống k&ecirc; th&agrave;nh phố Đ&agrave; Nẵng năm 2010).</span></p>
<p><span style="font-family: arial, helvetica, sans-serif;">Quận Hải Ch&acirc;u c&oacute; 13 đơn vị h&agrave;nh ch&iacute;nh cấp phường: Hải Ch&acirc;u 1, Hải Ch&acirc;u 2, Thạch Thang, Thanh B&igrave;nh, Thuận Phước, H&ograve;a Thuận T&acirc;y, Ho&agrave; Thuận Đ&ocirc;ng, Nam Dương, Phước Ninh, B&igrave;nh Thuận, B&igrave;nh Hi&ecirc;n, H&ograve;a Cường Nam, H&ograve;a Cường Bắc.</span><br /><br /><span style="font-family: arial, helvetica, sans-serif;">Với vị tr&iacute; l&agrave; một quận trung t&acirc;m, nằm s&aacute;t trục giao th&ocirc;ng Bắc Nam v&agrave; cửa ng&otilde; ra biển Đ&ocirc;ng, c&ugrave;ng một hệ thống hạ tầng giao th&ocirc;ng ph&aacute;t triển mạnh, đồng thời l&agrave; trung t&acirc;m h&agrave;nh ch&iacute;nh, thương mại, dịch vụ của th&agrave;nh phố, tập trung đ&ocirc;ng d&acirc;n cư v&agrave; c&aacute;c cơ quan, văn ph&ograve;ng của hầu hết c&aacute;c doanh nghiệp tr&ecirc;n địa b&agrave;n th&agrave;nh phố. V&igrave; vậy, quận Hải Ch&acirc;u c&oacute; một tầm quan trọng đặc biệt trong sự ph&aacute;t triển của th&agrave;nh phố Đ&agrave; Nẵng, giữ vai tr&ograve; l&agrave; trung t&acirc;m ch&iacute;nh trị-h&agrave;nh ch&iacute;nh-kinh tế-văn ho&aacute; v&agrave; l&agrave; địa b&agrave;n trọng điểm về an ninh, quốc ph&ograve;ng của th&agrave;nh phố Đ&agrave; Nẵng.</span></p>')
GO
INSERT [dbo].[HUYEN] ([MaHuyen], [TenHuyen], [MieuTa]) VALUES (2, N'Hòa Vang', N'Hòa Vang là một huyện ngoại thành thuộc thành phố Đà Nẵng, Việt Nam. Đây là huyện duy nhất của thành phố Đà Nẵng nằm trên phần đất liền của thành phố.')
GO
INSERT [dbo].[HUYEN] ([MaHuyen], [TenHuyen], [MieuTa]) VALUES (3, N'Cẩm Lệ', N'<span style="font-family: ''times new roman'', times, serif;">Cẩm Lệ l&agrave; một quận nội th&agrave;nh thuộc th&agrave;nh phố Đ&agrave; Nẵng, Việt Nam.</span>')
GO
INSERT [dbo].[HUYEN] ([MaHuyen], [TenHuyen], [MieuTa]) VALUES (4, N'Ngũ Hành Sơn', N'Quận Ngũ Hành Sơn nằm về phía đông nam thành phố Đà Nẵng, có vị trí địa lý:
Phía đông giáp Biển Đông
Phía tây giáp quận Cẩm Lệ, tây nam giáp huyện Hòa Vang
Phía nam giáp thị xã Điện Bàn, tỉnh Quảng Nam
Phía bắc giáp quận Sơn Trà, tây bắc giáp quận Hải Châu.
Quận có diện tích 37 km², dân số là 105.237 người và là quận ít dân nhất thành phố Đà Nẵng.')
GO
INSERT [dbo].[HUYEN] ([MaHuyen], [TenHuyen], [MieuTa]) VALUES (5, N'Sơn Trà', N'Sơn Trà là một quận nội thành thuộc thành phố Đà Nẵng, Việt Nam.

Trên địa bàn quận có bán đảo Sơn Trà và núi Sơn Trà với 4.400 ha được công nhận là khu vực bảo tồn thiên nhiên vào năm 1992.')
GO
INSERT [dbo].[HUYEN] ([MaHuyen], [TenHuyen], [MieuTa]) VALUES (6, N'Thanh Khê', N'Thanh Khê là một quận nội thành thuộc thành phố Đà Nẵng, Việt Nam.

Đây là địa phương có nhiều lợi thế trong phát triển thương mại, dịch vụ, giao thông vận tải và kinh tế biển với chiều dài bờ biển khoảng 4,287 km trải dài trên 4 phường giáp vịnh Đà Nẵng ở phía bắc là Thanh Khê Tây, Thanh Khê Đông, Xuân Hà, Tam Thuận, có điều kiện thuận lợi trong việc nuôi trồng, khai thác và chế biển hải sản.')
GO
INSERT [dbo].[HUYEN] ([MaHuyen], [TenHuyen], [MieuTa]) VALUES (7, N'Liên Chiểu', N'Liên Chiểu là một quận nội thành thuộc thành phố Đà Nẵng, Việt Nam.')
GO
SET IDENTITY_INSERT [dbo].[HUYEN] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHSAN] ON 
GO
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SĐT], [MaHuyen], [MaHinhAnh]) VALUES (1, N'Royal Charm', N'Lô 46 Trần Bạch Đằng, Phường Mỹ An, Mỹ An, Ngũ Hành Sơn, Đà Nẵng', N'02363651116', 4, 34)
GO
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SĐT], [MaHuyen], [MaHinhAnh]) VALUES (2, N'May', N'256 Hồ Nghinh, Phường Phước Mỹ, Phước Mỹ, Sơn Trà, Đà Nẵng', N'0915406644', NULL, 35)
GO
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SĐT], [MaHuyen], [MaHinhAnh]) VALUES (3, N'Mayana', N'40 Nguyễn Thái Học, Hải Châu 1, Hải Châu, Đà Nẵng', N'02363866777', NULL, 36)
GO
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SĐT], [MaHuyen], [MaHinhAnh]) VALUES (5, N'Cicilia Danang Hotels & Spa', N'06-10 Đỗ Bá, Bãi Biển T20, Phường Mỹ An, Ngũ Hành Sơn, Đà Nẵng', N'02363747888', 4, 37)
GO
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SĐT], [MaHuyen], [MaHinhAnh]) VALUES (6, N'Mercure Danang French Village Bana Hills', N'An Sơn, Hoa Sơn Commune, Hòa Vang, Đà Nẵng', N'02363799888', NULL, 38)
GO
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SĐT], [MaHuyen], [MaHinhAnh]) VALUES (7, N'Kova Diamond Hotel', N'27 Võ Văn Kiệt, Phước Mỹ, Sơn Trà, Đà Nẵng', N'02363933999', NULL, 39)
GO
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SĐT], [MaHuyen], [MaHinhAnh]) VALUES (8, N'Brown Bean', N'380 Đường 2 Tháng 9, Hòa Cường Bắc, Quận Hải Châu, Đà Nẵng', N'02363621188', NULL, 40)
GO
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SĐT], [MaHuyen], [MaHinhAnh]) VALUES (9, N'Đà Nẵng Center', N'35 Phan Chu Trinh, Hải Châu 1, Quận Hải Châu, Đà Nẵng', N'02363747069', NULL, 41)
GO
SET IDENTITY_INSERT [dbo].[KHACHSAN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHAHANG] ON 
GO
INSERT [dbo].[NHAHANG] ([MaNhaHang], [TenNhaHang], [DiaChi], [SDT], [MaHinhAnh]) VALUES (1, N'Nhà hàng La Maison Deli', N'Lô A1-2-3, Đường 2 tháng 9, Hải Châu, Đà Nẵng', N'02363775776', 25)
GO
INSERT [dbo].[NHAHANG] ([MaNhaHang], [TenNhaHang], [DiaChi], [SDT], [MaHinhAnh]) VALUES (2, N'Waterfront Danang Restaurant & Bar', N'150-152 Bạch Đằng, Hải Châu, Đà Nẵng', N'02363843373', 26)
GO
INSERT [dbo].[NHAHANG] ([MaNhaHang], [TenNhaHang], [DiaChi], [SDT], [MaHinhAnh]) VALUES (3, N'Le Bambino', N'122/11 Quang Trung, Thạch Thang, Quận Hải Châu, Đà Nẵng', N'02363896386', 27)
GO
INSERT [dbo].[NHAHANG] ([MaNhaHang], [TenNhaHang], [DiaChi], [SDT], [MaHinhAnh]) VALUES (4, N'Memory Lounge Đà Nẵng', N'7 Bạch Đằng, Hải Châu, Đà Nẵng', N'02363575899', 28)
GO
INSERT [dbo].[NHAHANG] ([MaNhaHang], [TenNhaHang], [DiaChi], [SDT], [MaHinhAnh]) VALUES (5, N'Nhà hàng Panorama Đà Nẵng', N'120A Nguyễn Văn Thoại, Bắc Mỹ Phú, Ngũ Hành Sơn, Đà Nẵng', N'0969842224', 29)
GO
INSERT [dbo].[NHAHANG] ([MaNhaHang], [TenNhaHang], [DiaChi], [SDT], [MaHinhAnh]) VALUES (6, N'Nhà hàng Không Gian Xưa Đà Nẵng', N'402- 404 Điện Biên Phủ, Quận Thanh Khê, Đà Nẵng', N'02363730777', 30)
GO
SET IDENTITY_INSERT [dbo].[NHAHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 
GO
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi]) VALUES (1, N'lam123', N'81dc9bdb52d04dc20036dbd8313ed055', N'Vũ Hoàng Lâm')
GO
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi]) VALUES (2, N'lhtb22', N'e10adc3949ba59abbe56e057f20f883e', N'Lại Hợp Thanh Bình')
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
SET IDENTITY_INSERT [dbo].[THELOAITIN] ON 
GO
INSERT [dbo].[THELOAITIN] ([MaTheLoai], [TenTheLoai]) VALUES (1, N'Du lịch')
GO
INSERT [dbo].[THELOAITIN] ([MaTheLoai], [TenTheLoai]) VALUES (2, N'Sự kiện văn hóa')
GO
SET IDENTITY_INSERT [dbo].[THELOAITIN] OFF
GO
SET IDENTITY_INSERT [dbo].[TINTUC] ON 
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (1, N'Áo Dài Show Đà Nẵng', N'Chương trình “Áo Dài Show” là một câu chuyện kể về lịch sử văn hóa truyền thống từ xưa đến nay, giới thiệu các triều đại Việt Nam qua từng thời kỳ lịch sử. Sự kết nối từ cung đình đến dân gian, giao thoa giữa văn hóa truyền thống và hiện đại, nhằm truyền tải đến với du khách hiểu rõ hơn về lịch sử hình thành và phát triển của đất nước con người Việt Nam, cũng như sự hình thành của văn hóa Áo Dài truyền thống đã có gần 300 năm.

Áo Dài được suy phong là Quốc phục của Việt Nam từ thời Nhà Nguyễn. Chương trình được thể hiện thông qua các hình ảnh Cung Vua – Phủ Chúa cung đình Triều Nguyễn, 100 năm áo dài Việt Nam xưa, Đám cưới truyền thống, Hoạt cảnh áo dài trắng của nữ sinh Việt Nam và Áo Dài Show.', 2, 19, CAST(N'2022-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (2, N'Du lịch Bà Nà Hill', N'Bà Nà Hill là một địa điểm du lịch tại Huyện Hòa Vang (Thành phố Đà Nẵng thuộc vùng Duyên Hải Nam Trung Bộ). Cách trung tâm Thành phố Đà Nẵng khoảng 42 km. Núi Bà Nà toạ lạc 1 khu vực thuộc về dãy núi Trường Sơn nằm ở xã Hòa Ninh, huyện Hòa Vang, cách Đà Nẵng 25 km về phía. Sau năm 2000, Bà Nà đã được đánh thức và tái tạo vị thế một thị trấn du lịch và nhanh chóng trở lại ngôi vị của một trong những khu du lịch nổi tiếng nhất của thành phố Đà Nẵng.', 1, 1, CAST(N'2022-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (3, N'Danh Thắng Ngũ Hành Sơn', N'Khu du lịch thắng cảnh Ngũ Hành Sơn (gọi tắt là danh thắng Ngũ Hành Sơn) nằm ở phía đông nam thành phố Đà Nẵng, cách trung tâm thành phố khoảng 8 km. Phía Đông giáp biển Đông; Phía Tây giáp sông Cổ Cò; Phía Nam giáp khu dân cư phường Hòa Hải; Phía Bắc giáp khu dân cư phường Hòa Hải” có thể nói gọn hơn: “Phía Đông giáp Biển Đông; Phía Tây giáp sông Cổ Cò; Phía Nam và phía Bắc giáp khu dân cư phường Hòa Hải”.

Khu danh thắng Ngũ Hành Sơn có vị trí địa lý hết sức thuận lợi:  là điểm đến của du khách trên con đường di sản Miền Trung: Cố Đô Huế – Ngũ Hành Sơn – Phố cổ Hội An và Khu di tích đền tháp Mỹ Sơn, bên cạnh đó khu danh thắng còn có biển, có sông và núi rất thuận lợi cho việc khai thác và phát triển du lịch.', 1, 8, CAST(N'2022-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (4, N'Làng Nghề Nước Mắm Nam Ô', N'Làng nghề nước mắm Nam Ô được hình thành đầu thế kỷ XX. Nam Ô là làng đánh cá nhỏ nằm ở cửa sông Cu Đê, dưới chân đèo Hải Vân, nay thuộc phường Hòa Hiệp, quận Liên Chiểu, thành phố Đà Nẵng. Từ lâu nước mắm Nam Ô đã có tiếng tăm trên thị trường trong nước và nước ngoài. Nước mắm Nam Ô không chỉ nức tiếng thơm mà còn sực nức cả một quãng đường cái quan xuyên Việt dài hơn cây số. Khách thập phương ngang qua đây nghe dậy lên mùi nước mắm không lẫn vào đâu được, cứ vương vất người xe qua lại. Địa chỉ: Phường Hòa Hiệp, Quận Liên Chiểu, T.P Đà Nẵng', 1, 20, CAST(N'2022-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (5, N'Làng Chiếu Cẩm Nê', N'Làng chiếu Cẩm Nê thuộc xã Hòa Tiến, huyện Hòa Vang cách trung tâm thành phố Đà Nẵng 14km về phía Tây-Nam, nằm giữa một vùng đồng bằng do phù sa sông Cẩm Lệ bồi tạo nên. Chẳng những người quanh vùng mà cả người ở xa tận Huế, Đông Hà ngoài Quảng Trị cũng biết cái tên của làng quê nhỏ bé này : Làng Cẩm Nê. Bởi làng có nghề dệt chiếu truyền thống và nổi tiếng từ nhiều đời nay

Theo nhiều tài liệu thì nghề chiếu Cẩm Nê có nguồn gốc từ Hoằng Hóa, Thanh Hóa, được truyền vào miền Nam khoảng từ thế kỷ 15, lúc vua Lê Thánh Tôn chiến thắng Chiêm Thành, sát nhập thành Đồ Bàn vào Quảng Nam- Đà Nẵng. Trải qua bao thăng trầm của lịch sử và bị cạnh tranh gay gắt, nghề chiếu Cẩm Nê vẫn tồn tại và phát triển đến nay.', 1, 21, CAST(N'2022-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (6, N'Làng Đá Mỹ Nghệ Non Nước', N'Làng đá Non Nước nằm dưới chân núi Ngũ Hành Sơn là làng nghề truyền thống nổi tiếng của thành phố Đà Nẵng với các sản phẩm đá mỹ nghệ. Theo dòng thời gian, đã có không ít làng nghề truyền thống dần mai một, thế nhưng làng đá mỹ nghệ Non Nước vẫn nguyên vẹn một sức sống mãnh liệt với thời gian và không ngừng phát triển cho đến ngày nay.', 1, 22, CAST(N'2022-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (7, N'Tổng quan về Thành phố Đà Nẵng', N'Đà Nẵng là thành phố lớn thứ 4 ở Việt Nam sau Thành phố Hồ Chí Minh, Hà Nội và Hải Phòng về đô thị hóa và phát triển kinh tế – xã hội. Nằm trên bờ Biển Đông có cửa sông Hàn, Đà Nẵng là một trong những thành phố cảng có vị trí chiến lược của miền Trung Việt Nam và là một trong 5 thành phố trực thuộc Trung ương.

Thành phố Đà Nẵng nằm ở miền Trung Việt Nam với khoảng cách gần như chia đều giữa thủ đô Hà Nội và thành phố Hồ Chí Minh. Đà Nẵng còn là trung tâm của 3 di sản văn hóa thế giới là Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn. Bắc giáp tỉnh Thừa Thiên – Huế, Tây và Nam giáp tỉnh Quảng Nam, Đông giáp Biển Đông. Đà Nẵng nằm ở trung độ đất nước, trên trục giao thông Bắc – Nam về đường bộ, đường sắt, đường biển, đường hàng không và điểm cuối của Hành lang Kinh tế Đông Tây trải dài từ Việt Nam, Lào, Thái Lan và Burma (Myanmar). Đà Nẵng, nằm ở trung tâm địa lý của Việt Nam, là một trong 63 tỉnh, thành phố trực thuộc trung ương của Việt Nam và là kinh tế xã hội lớn của miền Trung Việt Nam. Tính đến năm 2019, thành phố Đà Nẵng có tổng dân số 1.134.310 người, trở thành thành phố lớn nhất miền Trung và lớn thứ 4 trong cả nước.

Đà Nẵng giáp với tỉnh Thừa Thiên Huế ở phía Bắc và phía Nam giáp với tỉnh Quảng Nam, tiếp đó là Quảng Ngãi. Cùng với nhau, bốn tỉnh – thành phố này tạo thành vùng Đà Nẵng mở rộng với tổng dân số khoảng 5,8 triệu người. Ngoài ra, Đà Nẵng còn là trung điểm của 3 di sản văn hoá thế giới nổi tiếng là Cố đô Huế, Phố cổ Hội An và Thánh địa Mỹ Sơn. Trong phạm vi khu vực và quốc tế, Đà Nẵng là một trong những cửa ngõ quan trọng ra biển của Tây Nguyên và các nước Lào, Campuchia, Thái Lan, Myanma thông qua Hành lang kinh tế Đông Tây (EWEC) với điểm kết thúc là Cảng Tiên Sa. Nằm trên một trong những tuyến đường biển và đường hàng không quốc tế trọng yếu, thành phố Đà Nẵng có một vị trí địa lý đặc biệt thuận lợi cho việc phát triển sôi động và bền vững.', 2, 23, CAST(N'2022-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (8, N'Công viên Asia Park', N'Công viên Asia Park ở Đà Nẵng có gì mà bất cứ ai một lần đặt chân đến thành phố này đều không thể bỏ lỡ? Đó chính là nhờ lối kiến trúc như một châu Á thu nhỏ với 22 trò chơi lý thú đem tới cảm giác không thể nào quên. Asia Park – Công viên Châu Á là tổ hợp vui chơi, ẩm thực, chợ đêm,… gồm nhiều hoạt động đa dạng lý thú dành cho mọi thành viên trong gia đình. Nếu đặt chân tới đây, các bạn trẻ, các bé, các đôi tình nhân cũng như các bậc cha mẹ đều có thể lựa chọn được trò chơi phù hợp với đủ cung bậc cảm xúc và cấp độ trong hơn 20 trò chơi tại công viên. Ngoài các trò chơi sôi động nhiều cung bậc cảm xúc, Asia Park còn chiêu đãi bữa tiệc ẩm thực từ nhiều miền Tổ quốc và các quốc gia trên thế giới. Đó là 11 quầy đồ ăn từ đồ ăn Việt Nam tới Trung Quốc, Hàn Quốc, Nhật Bản, Thái Lan, Singapore, Malaysia,… tại nhà hàng Thế giới Buffet tại Asia Park. Các show nghệ thuật mang màu sắc văn hóa các quốc gia cùng không khí sôi động của các đại nhạc hội cũng là điều khiến nhiều người mê mẩn khi đến Asia Park. Những nghệ sĩ biểu diễn các tiết mục điêu luyện công phu nhất và bạn không mất bất kỳ chi phí nào nhờ miễn phí vé vào cửa. Chợ đêm chuẩn Hàn với hàng trăm gian hàng độc đáo lần đầu tiên xuất hiện tại Đà Nẵng của Asia Park sẽ khiến chuyến du lịch khám phá của bạn trở nên hoàn hảo. Những món ăn đường phố hấp dẫn, các món quà tặng xinh xắn và hàng loạt đồ thủ công mỹ nghệ cùng đặc sản Đà Thành đều được bày bán tại đây, giúp bạn vừa vui chơi vừa sắm quà mang về dễ dàng.', 1, 11, CAST(N'2022-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (9, N'Chùa Tam Thai', N'Chùa Tam Thai là chốn linh thiêng được nhiều người dân, Phật tử và khách du lịch đến chiêm bái hằng năm. Trải qua nhiều đợt trùng tu, đến nay ngôi chùa vẫn giữ được nét hoài cổ và kiến trúc độc đáo. Chùa Tam Thai có địa chỉ tại phường Hòa Hải, thuộc địa phận quận Ngũ Hành Sơn, TP. Đà Nẵng. Ngôi chùa linh thiêng được dựng nên trên một mảnh đất của ngọn núi Thủy Sơn – một trong năm ngọn núi thuộc dãy Ngũ Hành Sơn. Vì vậy, đây không chỉ là điểm du lịch tâm linh cổ kính, linh thiêng mà còn là điểm tham quan vãn cảnh tuyệt đẹp. Tại khu vực chùa tọa lạc có một khối đá được dựng đứng, nằm trên một dải đất thuộc hướng Bắc của núi Ngũ Hành Sơn. Trên phần đỉnh Hòn Thủy, du khách sẽ thấy có 3 ngọn tựa như sao Tam Thai. Đây cũng chính là lí do mà ngôi chùa được lấy tên là chùa Tam Thai. Chùa Tam Thai Non Nước được biết đến là một trong những địa điểm du lịch Đà Nẵng trứ danh. Đến tham quan địa chỉ này, bạn sẽ được chiêm ngưỡng kiến trúc độc đáo của ngôi chùa.  Đầu tiên, để có thể di chuyển lên chùa, bạn cần đi qua 156 bậc thang đã phủ rêu phong, nhuốm màu thời gian. Kiến trúc chùa Tam Thai khác biệt so với nhiều ngôi chùa khác, công trình này bao gồm 3 tầng: tầng 1 là Thượng Thai, tầng 2 là Trung Thai, tầng 3 là Hạ Thai. Tựu trung lại, kiến trúc của chùa được dựng nên theo hình chữ Vương, chứa đựng nét đặc trưng của công trình thời nhà Nguyễn. Từ vị trí cao nhất của ngọn núi Thủy Sơn, bạn có thể chiêm ngưỡng toàn cảnh núi non hùng vĩ, xa hơn là dòng sông Hàn và sông Cẩm Lệ. Vì vậy, nếu bạn còn băn khoăn Đà Nẵng có gì chơi thì hãy đến tham quan ngôi chùa này – vừa là điểm du lịch tâm linh, vừa là nơi check-in Đà Nẵng không nên bỏ lỡ.', 1, 13, CAST(N'2022-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (10, N'Du lịch trên sông Hàn', N'Du thuyền trên sông Hàn là một trong những trải nghiệm không thể bỏ lỡ khi “vi vu” Đà Nẵng. Du khách sẽ có cơ hội ngắm phố phường về đêm và thưởng thức những món đặc sản độc đáo tại thành phố biển xinh đẹp này. Đi du thuyền trên sông Hàn Đà Nẵng là một trong những trải nghiệm du lịch hấp dẫn nhất của thành phố biển. Khi tham gia, du khách sẽ có cơ hội chiêm ngưỡng toàn cảnh sông Hàn về đêm lung linh với ánh đèn đủ màu lấp loáng trên mặt nước. Bên cạnh đó, lựa chọn tham quan bằng du thuyền, du khách còn được ngắm nhìn những cây cầu bắc qua sông Hàn nổi tiếng như: Cầu sông Hàn, cầu Rồng Đà Nẵng,...Đặc biệt, với chuyến du lịch sông Hàn bằng du thuyền, du khách sẽ được thả hồn trước sông nước mênh mang, khám phá sự sôi động của nhịp sống thành thị 2 bên bờ sông. Cầu tình yêu, tượng cá chép hóa rồng, chợ đêm Sơn Trà,... càng trở nên thu hút hơn dưới ánh đèn ban đêm. ', 1, 12, CAST(N'2022-06-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (11, N'Bãi biển Xuân Thiều', N'Bên cạnh biển Mỹ Khê xinh đẹp, Đà Nẵng còn sở hữu bãi biển Xuân Thiều bình yên, thơ mộng với dải cát dài trắng mịn, nước biển xanh ngắt một màu. Không chỉ được biết đến là thành phố xinh đẹp với những danh lam thắng cảnh hữu tình và thiên đường ẩm thực đa dạng, địa điểm du lịch Đà Nẵng còn nổi tiếng với bãi biển Xuân Thiều hoang sơ, thơ mộng, làm say đắm lòng người. Nơi đây trở thành điểm đến bình yên, thu hút đông đảo du khách tham quan và khám phá hàng năm. Không giống với nhiều bãi biển xinh đẹp khác, bãi biển Xuân Thiều thu hút bởi nét đẹp hoang sơ, không gian yên bình, lãng mạn. Nơi đây chắc chắn sẽ là điểm dừng chân mang đến cho bạn nhiều trải nghiệm lý thú với những phút giây thư giãn tuyệt vời. Đứng trên bờ biển, bạn có thể phóng tầm mắt ra xa và ngắm nhìn  ngọn núi Hải Vân hùng vĩ cùng bán đảo Sơn Trà đẹp tuyệt trần. Không chỉ thế, phía xa xa ngoài kia là cửa biển - nơi giao thoa giữa biển và núi, du khách sẽ được thỏa sức đắm chìm vào khoảng không mênh mông, bất tận, thả hồn vào những đợt gió mang hương vị biển khơi. Một chuyến du ngoạn hoàn hảo đến biển Xuân Thiều không thể thiếu những món ngon Đà Nẵng, mang đậm hương vị của dải đất miền Trung. Dọc theo bờ biển, du khách có thể thoải mái lựa chọn nhà hàng phù hợp với sở thích của mình để trải nghiệm thiên đường ẩm thực phong phú, gồm các món ăn đa dạng từ Việt đến Âu. Bãi biển Xuân Thiều nổi tiếng nhất với nhiều món ngon từ hải sản tươi sống, được nhập trực tiếp từ tàu cá như tôm, mực, ghẹ, cua… Chắc chắn các đặc sản Đà Nẵng này sẽ làm chiều lòng mọi tín đồ du lịch nếu có dịp đặt chân đến nơi đây.', 1, 5, CAST(N'2022-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (12, N'Bãi biển Nam Ô', N'Nếu bạn đã khám phá hết những điểm du lịch tại trung tâm thành phố Đà Nẵng và muốn tìm một nơi bình yên với phong cảnh thiên nhiên hữu tình thì hãy ghé đến rạn Nam Ô để đổi gió. Không giống như những bãi biển Đà Nẵng xô bồ, náo nhiệt, rạn Nam Ô là một địa điểm mới nổi, không bị tác động bởi sự đầu tư du lịch nên vẫn giữ được nét đẹp hoang sơ hiếm có. Khi vừa đến đây, du khách không khỏi trầm trồ trước khung cảnh thiên nhiên hữu tình với bãi cát trắng trải dài, làn nước biển xanh ngắt dập dìu những con sóng. Xa xa là bãi đá với nhiều hình thù, kích cỡ khác nhau. Bước chân lên bãi đá, bạn sẽ thu vào tầm mắt một cảnh biển nên thơ với những con sóng bạc đầu trải dài trắng xóa cả một vùng. Từ rạn Nam Ô, bạn sẽ nhìn thấy điểm du lịch bán đảo Sơn Trà, xa hơn một chút là đèo Hải Vân ở phía Tây. Rạn đá này cũng là địa điểm ngắm bình minh và hoàng hôn cực đẹp. Với phong cảnh nên thơ, hữu tình, thật không khó hiểu nếu rạn Nam Ô có sức hút mãnh liệt với những tín đồ đam mê du lịch. Với khung cảnh đẹp thơ mộng, rạn Nam Ô là địa điểm sống ảo cực chất cho những tín đồ mê chụp ảnh. Tại đây sở hữu nhiều góc đẹp và đặc biệt nhất là những mỏm đá bám đầy rong rêu xanh ngắt một màu vô cùng nổi bật, giúp du khách sở hữu những tấm hình lung linh. Rạn Nam Ô là nơi ở của vô số các loài cá nên bạn có thể tham gia hoạt động câu cá giải trí. Bên cạnh đó, trải nghiệm chèo thuyền thúng bắt hải sản hứa hẹn cũng mang đến trải nghiệm thú vị. Sau khi kết thúc chuyến đi, bạn có thể tự tay chế biến thành quả của mình để tổ chức bữa tiệc BBQ trên bãi biển.', 1, 6, CAST(N'2022-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (13, N'Chùa Quang Minh', N'Du khách đến thành phố Đà Nẵng không chỉ với mục đích du lịch ngắm những danh lam thắng cảnh tuyệt mĩ mà nơi đây còn là để đi cầu những điều tốt đẹp nhất tại những ngôi chùa linh thiêng ở đây. Chùa Quang Minh hiện nay tọa lạc tại số 412 đường Tôn Đức Thắng, phường Hòa Minh, quận Liên Chiểu, thành phố Đà Nẵng. Chùa Quang Minh là một trong những điểm đến du lịch tâm linh được nhiều du khách trong và ngoài nước khi đến thành phố Đà Nẵng thường xuyên ghé thăm để cầu may mắn, bình an, hạnh phúc cho gia đình và mọi nhà. Đến với chùa Quang Minh, du khách không chỉ có thể chiêm ngưỡng toàn bộ những cảnh đẹp tuyệt vời, những công trình kiến trúc vô cùng độc đáo mà du khách còn có thể cầu nguyện những điều tốt đẹp nhất đến với cuộc sống của mình. Đồng thời, không gian của chùa Quang Minh là vô cùng thanh tịnh, dễ chịu, thoáng đãng và thoải mái. Nó có thể giúp bạn xua tan đi hết được toàn bộ những mệt mỏi, lo toan và những bộn bề của cuộc sống đời thường cũng như là có thể khám phá được hết tất cả những nét đẹp về các mặt văn hóa và truyền thống lâu đời của chùa Quang Minh.

Khi du khách có dịp đến với mảnh đất này, bạn nhất định phải ghé thăm chùa Quang Minh để có thể chiêm ngưỡng toàn bộ cảnh đẹp tuyệt vời của nơi này. Để có thể đến được chùa Quang Minh, bạn sẽ có nhiều loại phương tiện để lựa chọn đó là thuê xe máy hoặc thuê taxi có sẵn tại Đà Nẵng rồi sau đó bạn có thể di chuyển đến được chùa Quang Minh. Chùa Quang Minh chắc chắn là một điểm đến tâm linh tuyệt vời dành cho du khách khi du khách có dịp ghé thăm thành phố xinh đẹp này !', 1, 7, CAST(N'2022-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TINTUC] ([MaTinTuc], [TieuDe], [NoiDungTinTuc], [MaTheLoai], [MaHinhAnh], [NgayCapNhat]) VALUES (14, N'Di chỉ khảo cổ Chăm Phong Lệ', N'Chăm Phong Lệ là một địa điểm du lịch tại Quận Cẩm Lệ (Thành phố Đà Nẵng thuộc vùng Duyên Hải Nam Trung Bộ). Di tích khảo cổ Chăm Phong Lệ thuộc phường Hòa Thọ Đông, quận Cẩm Lệ, thành phố Đà Nẵng. Di tích Chăm Phong Lệ (phường Hòa Thọ Đông, quận Cẩm Lệ) được phát lộ và thực hiện khai quật khảo cổ lần đầu trên diện tích 500 m2 theo Quyết định số 1666/QĐ-BVHTTDL ngày 4-5-2012 của Bộ Văn hóa, Thể thao và Du lịch. Đây là di tích tiêu biểu trong các di tích Chăm tại Đà Nẵng có điều kiện khảo sát đầy đủ nhất, đồng thời là di tích duy nhất cho đến nay trong toàn bộ hệ thống đền tháp Chăm có điều kiện để nghiên cứu và giới thiệu về phần nền móng kiến trúc.', 1, 24, CAST(N'2022-06-27T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TINTUC] OFF
GO
SET IDENTITY_INSERT [dbo].[TOURDULICH] ON 
GO
INSERT [dbo].[TOURDULICH] ([MaTour], [TenTour], [MieuTa], [GiaTien], [MaHinhAnh], [DuongLink]) VALUES (1, N'Tour Du lịch Đà Nẵng 3 ngày 2 đêm', N'Tour Đà Nẵng 3 ngày 2 đêm cao cấp - Trọn gói - Khởi hành hàng ngày.', 5310000, 31, N'https://www.tuannguyentravel.com/263-tour-da-nang-3-ngay-2-dem.html?gclid=CjwKCAjwzeqVBhAoEiwAOrEmzUoZ_vrAsFWWTkfvb-UCw9kC_CwgMqimAfvbBBpD6KrRG3nJ34MDQhoC-TQQAvD_BwE')
GO
INSERT [dbo].[TOURDULICH] ([MaTour], [TenTour], [MieuTa], [GiaTien], [MaHinhAnh], [DuongLink]) VALUES (3, N'Tour Ngũ Hành Sơn Hội An 1 ngày', N'Danh thắng Ngũ Hành Sơn - nơi được mệnh danh là Hòn Non Bộ khổng lồ giữa lòng thành phố và phố cổ Hội An đẹp say đắm lòng người.', 690000, 32, N'https://www.vietnambooking.com/du-lich/tour-da-nang-tham-quan-ngu-hanh-son-hoi-an-1-ngay.html')
GO
INSERT [dbo].[TOURDULICH] ([MaTour], [TenTour], [MieuTa], [GiaTien], [MaHinhAnh], [DuongLink]) VALUES (4, N'Tour Núi Thần Tài Đà Nẵng 1 ngày', N'Suối khoáng nóng Thần Tài - một địa điểm du lịch nổi tiếng của Đà Nẵng nằm bên trong khu du lịch sinh thái bảo tồn Bà Nà Núi Chúa.', 999000, 33, N'https://www.vietnambooking.com/du-lich/tour-da-nang-suoi-khoang-nong-nui-than-tai-1-ngay.html')
GO
SET IDENTITY_INSERT [dbo].[TOURDULICH] OFF
GO
ALTER TABLE [dbo].[DIADANH]  WITH CHECK ADD  CONSTRAINT [FK_DIADANH_HINHANH] FOREIGN KEY([MaHinhAnh])
REFERENCES [dbo].[HINHANH] ([MaHinhAnh])
GO
ALTER TABLE [dbo].[DIADANH] CHECK CONSTRAINT [FK_DIADANH_HINHANH]
GO
ALTER TABLE [dbo].[DIADANH]  WITH CHECK ADD  CONSTRAINT [FK_DIADANH_HUYEN] FOREIGN KEY([MaHuyen])
REFERENCES [dbo].[HUYEN] ([MaHuyen])
GO
ALTER TABLE [dbo].[DIADANH] CHECK CONSTRAINT [FK_DIADANH_HUYEN]
GO
ALTER TABLE [dbo].[KHACHSAN]  WITH CHECK ADD  CONSTRAINT [FK_KHACHSAN_HINHANH] FOREIGN KEY([MaHinhAnh])
REFERENCES [dbo].[HINHANH] ([MaHinhAnh])
GO
ALTER TABLE [dbo].[KHACHSAN] CHECK CONSTRAINT [FK_KHACHSAN_HINHANH]
GO
ALTER TABLE [dbo].[KHACHSAN]  WITH CHECK ADD  CONSTRAINT [FK_KHACHSAN_HUYEN] FOREIGN KEY([MaHuyen])
REFERENCES [dbo].[HUYEN] ([MaHuyen])
GO
ALTER TABLE [dbo].[KHACHSAN] CHECK CONSTRAINT [FK_KHACHSAN_HUYEN]
GO
ALTER TABLE [dbo].[NHAHANG]  WITH CHECK ADD  CONSTRAINT [FK_NHAHANG_HINHANH] FOREIGN KEY([MaHinhAnh])
REFERENCES [dbo].[HINHANH] ([MaHinhAnh])
GO
ALTER TABLE [dbo].[NHAHANG] CHECK CONSTRAINT [FK_NHAHANG_HINHANH]
GO
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD  CONSTRAINT [FK_TINTUC_HINHANH] FOREIGN KEY([MaHinhAnh])
REFERENCES [dbo].[HINHANH] ([MaHinhAnh])
GO
ALTER TABLE [dbo].[TINTUC] CHECK CONSTRAINT [FK_TINTUC_HINHANH]
GO
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD  CONSTRAINT [FK_TINTUC_THELOAITIN] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[THELOAITIN] ([MaTheLoai])
GO
ALTER TABLE [dbo].[TINTUC] CHECK CONSTRAINT [FK_TINTUC_THELOAITIN]
GO
ALTER TABLE [dbo].[TOURDULICH]  WITH CHECK ADD  CONSTRAINT [FK_TOURDULICH_HINHANH1] FOREIGN KEY([MaHinhAnh])
REFERENCES [dbo].[HINHANH] ([MaHinhAnh])
GO
ALTER TABLE [dbo].[TOURDULICH] CHECK CONSTRAINT [FK_TOURDULICH_HINHANH1]
GO
USE [master]
GO
ALTER DATABASE [QuangBaDL] SET  READ_WRITE 
GO