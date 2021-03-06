USE [Aoc]
GO
/****** Object:  Table [dbo].[ShopReviewRecord]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShopReviewRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShopReviewRecord](
	[reviewId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[month] [int] NOT NULL,
	[year] [int] NOT NULL,
	[score] [int] NOT NULL,
	[remark] [varchar](128) NULL,
	[time] [datetime] NOT NULL,
	[term] [varchar](50) NOT NULL,
	[platformProviderManagerId] [int] NULL,
	[areaManagerId] [int] NULL,
	[managerUserName] [int] NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopReviewRecord] PRIMARY KEY CLUSTERED 
(
	[reviewId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopReviewItem]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShopReviewItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShopReviewItem](
	[itemId] [int] IDENTITY(1,1) NOT NULL,
	[parentItemId] [int] NOT NULL,
	[content] [varchar](500) NOT NULL,
	[orders] [int] NOT NULL,
	[score] [int] NULL,
	[status] [varchar](50) NOT NULL,
	[editTime] [datetime] NULL,
	[level] [int] NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopReviewItem] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_District]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_District]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_District](
	[districtId] [int] NOT NULL,
	[districtName] [varchar](50) NULL,
	[cityId] [int] NULL,
 CONSTRAINT [PK_dbo.S_District] PRIMARY KEY CLUSTERED 
(
	[districtId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1, N'东城区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2, N'西城区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (3, N'崇文区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (4, N'宣武区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (5, N'朝阳区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (6, N'丰台区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (7, N'石景山区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (8, N'海淀区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (9, N'门头沟区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (10, N'房山区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (11, N'通州区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (12, N'顺义区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (13, N'昌平区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (14, N'大兴区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (15, N'怀柔区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (16, N'平谷区', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (17, N'密云县', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (18, N'延庆县', 1)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (19, N'和平区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (20, N'河东区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (21, N'河西区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (22, N'南开区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (23, N'河北区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (24, N'红桥区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (25, N'塘沽区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (26, N'汉沽区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (27, N'大港区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (28, N'东丽区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (29, N'西青区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (30, N'津南区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (31, N'北辰区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (32, N'武清区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (33, N'宝坻区', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (34, N'宁河县', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (35, N'静海县', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (36, N'蓟县', 2)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (37, N'长安区', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (38, N'桥东区', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (39, N'桥西区', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (40, N'新华区', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (41, N'井陉矿区', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (42, N'裕华区', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (43, N'井陉县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (44, N'正定县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (45, N'栾城县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (46, N'行唐县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (47, N'灵寿县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (48, N'高邑县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (49, N'深泽县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (50, N'赞皇县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (51, N'无极县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (52, N'平山县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (53, N'元氏县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (54, N'赵县', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (55, N'辛集市', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (56, N'藁城市', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (57, N'晋州市', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (58, N'新乐市', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (59, N'鹿泉市', 3)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (60, N'路南区', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (61, N'路北区', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (62, N'古冶区', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (63, N'开平区', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (64, N'丰南区', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (65, N'丰润区', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (66, N'滦县', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (67, N'滦南县', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (68, N'乐亭县', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (69, N'迁西县', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (70, N'玉田县', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (71, N'唐海县', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (72, N'遵化市', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (73, N'迁安市', 4)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (74, N'海港区', 5)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (75, N'山海关区', 5)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (76, N'北戴河区', 5)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (77, N'青龙满族自治县', 5)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (78, N'昌黎县', 5)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (79, N'抚宁县', 5)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (80, N'卢龙县', 5)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (81, N'邯山区', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (82, N'丛台区', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (83, N'复兴区', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (84, N'峰峰矿区', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (85, N'邯郸县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (86, N'临漳县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (87, N'成安县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (88, N'大名县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (89, N'涉县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (90, N'磁县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (91, N'肥乡县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (92, N'永年县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (93, N'邱县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (94, N'鸡泽县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (95, N'广平县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (96, N'馆陶县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (97, N'魏县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (98, N'曲周县', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (99, N'武安市', 6)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (100, N'桥东区', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (101, N'桥西区', 7)
GO
print 'Processed 100 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (102, N'邢台县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (103, N'临城县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (104, N'内丘县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (105, N'柏乡县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (106, N'隆尧县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (107, N'任县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (108, N'南和县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (109, N'宁晋县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (110, N'巨鹿县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (111, N'新河县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (112, N'广宗县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (113, N'平乡县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (114, N'威县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (115, N'清河县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (116, N'临西县', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (117, N'南宫市', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (118, N'沙河市', 7)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (119, N'新市区', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (120, N'北市区', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (121, N'南市区', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (122, N'满城县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (123, N'清苑县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (124, N'涞水县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (125, N'阜平县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (126, N'徐水县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (127, N'定兴县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (128, N'唐县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (129, N'高阳县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (130, N'容城县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (131, N'涞源县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (132, N'望都县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (133, N'安新县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (134, N'易县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (135, N'曲阳县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (136, N'蠡县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (137, N'顺平县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (138, N'博野县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (139, N'雄县', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (140, N'涿州市', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (141, N'定州市', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (142, N'安国市', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (143, N'高碑店市', 8)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (144, N'桥东区', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (145, N'桥西区', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (146, N'宣化区', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (147, N'下花园区', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (148, N'宣化县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (149, N'张北县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (150, N'康保县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (151, N'沽源县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (152, N'尚义县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (153, N'蔚县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (154, N'阳原县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (155, N'怀安县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (156, N'万全县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (157, N'怀来县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (158, N'涿鹿县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (159, N'赤城县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (160, N'崇礼县', 9)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (161, N'双桥区', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (162, N'双滦区', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (163, N'鹰手营子矿区', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (164, N'承德县', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (165, N'兴隆县', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (166, N'平泉县', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (167, N'滦平县', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (168, N'隆化县', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (169, N'丰宁满族自治县', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (170, N'宽城满族自治县', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (171, N'围场满族蒙古族自治县', 10)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (172, N'新华区', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (173, N'运河区', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (174, N'沧县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (175, N'青县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (176, N'东光县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (177, N'海兴县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (178, N'盐山县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (179, N'肃宁县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (180, N'南皮县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (181, N'吴桥县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (182, N'献县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (183, N'孟村回族自治县', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (184, N'泊头市', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (185, N'任丘市', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (186, N'黄骅市', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (187, N'河间市', 11)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (188, N'安次区', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (189, N'广阳区', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (190, N'固安县', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (191, N'永清县', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (192, N'香河县', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (193, N'大城县', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (194, N'文安县', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (195, N'大厂回族自治县', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (196, N'霸州市', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (197, N'三河市', 12)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (198, N'桃城区', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (199, N'枣强县', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (200, N'武邑县', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (201, N'武强县', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (202, N'饶阳县', 13)
GO
print 'Processed 200 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (203, N'安平县', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (204, N'故城县', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (205, N'景县', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (206, N'阜城县', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (207, N'冀州市', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (208, N'深州市', 13)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (209, N'小店区', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (210, N'迎泽区', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (211, N'杏花岭区', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (212, N'尖草坪区', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (213, N'万柏林区', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (214, N'晋源区', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (215, N'清徐县', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (216, N'阳曲县', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (217, N'娄烦县', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (218, N'古交市', 14)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (219, N'城区', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (220, N'矿区', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (221, N'南郊区', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (222, N'新荣区', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (223, N'阳高县', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (224, N'天镇县', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (225, N'广灵县', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (226, N'灵丘县', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (227, N'浑源县', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (228, N'左云县', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (229, N'大同县', 15)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (230, N'城区', 16)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (231, N'矿区', 16)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (232, N'郊区', 16)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (233, N'平定县', 16)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (234, N'盂县', 16)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (235, N'城区', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (236, N'郊区', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (237, N'长治县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (238, N'襄垣县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (239, N'屯留县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (240, N'平顺县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (241, N'黎城县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (242, N'壶关县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (243, N'长子县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (244, N'武乡县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (245, N'沁县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (246, N'沁源县', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (247, N'潞城市', 17)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (248, N'城区', 18)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (249, N'沁水县', 18)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (250, N'阳城县', 18)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (251, N'陵川县', 18)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (252, N'泽州县', 18)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (253, N'高平市', 18)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (254, N'朔城区', 19)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (255, N'平鲁区', 19)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (256, N'山阴县', 19)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (257, N'应县', 19)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (258, N'右玉县', 19)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (259, N'怀仁县', 19)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (260, N'榆次区', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (261, N'榆社县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (262, N'左权县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (263, N'和顺县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (264, N'昔阳县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (265, N'寿阳县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (266, N'太谷县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (267, N'祁县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (268, N'平遥县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (269, N'灵石县', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (270, N'介休市', 20)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (271, N'盐湖区', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (272, N'临猗县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (273, N'万荣县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (274, N'闻喜县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (275, N'稷山县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (276, N'新绛县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (277, N'绛县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (278, N'垣曲县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (279, N'夏县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (280, N'平陆县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (281, N'芮城县', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (282, N'永济市', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (283, N'河津市', 21)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (284, N'忻府区', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (285, N'定襄县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (286, N'五台县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (287, N'代县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (288, N'繁峙县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (289, N'宁武县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (290, N'静乐县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (291, N'神池县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (292, N'五寨县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (293, N'岢岚县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (294, N'河曲县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (295, N'保德县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (296, N'偏关县', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (297, N'原平市', 22)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (298, N'尧都区', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (299, N'曲沃县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (300, N'翼城县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (301, N'襄汾县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (302, N'洪洞县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (303, N'古县', 23)
GO
print 'Processed 300 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (304, N'安泽县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (305, N'浮山县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (306, N'吉县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (307, N'乡宁县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (308, N'大宁县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (309, N'隰县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (310, N'永和县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (311, N'蒲县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (312, N'汾西县', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (313, N'侯马市', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (314, N'霍州市', 23)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (315, N'离石区', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (316, N'文水县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (317, N'交城县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (318, N'兴县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (319, N'临县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (320, N'柳林县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (321, N'石楼县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (322, N'岚县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (323, N'方山县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (324, N'中阳县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (325, N'交口县', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (326, N'孝义市', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (327, N'汾阳市', 24)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (328, N'新城区', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (329, N'回民区', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (330, N'玉泉区', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (331, N'赛罕区', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (332, N'土默特左旗', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (333, N'托克托县', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (334, N'和林格尔县', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (335, N'清水河县', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (336, N'武川县', 25)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (337, N'东河区', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (338, N'昆都仑区', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (339, N'青山区', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (340, N'石拐区', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (341, N'白云矿区', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (342, N'九原区', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (343, N'土默特右旗', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (344, N'固阳县', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (345, N'达尔罕茂明安联合旗', 26)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (346, N'海勃湾区', 27)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (347, N'海南区', 27)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (348, N'乌达区', 27)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (349, N'红山区', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (350, N'元宝山区', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (351, N'松山区', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (352, N'阿鲁科尔沁旗', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (353, N'巴林左旗', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (354, N'巴林右旗', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (355, N'林西县', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (356, N'克什克腾旗', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (357, N'翁牛特旗', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (358, N'喀喇沁旗', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (359, N'宁城县', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (360, N'敖汉旗', 28)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (361, N'科尔沁区', 29)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (362, N'科尔沁左翼中旗', 29)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (363, N'科尔沁左翼后旗', 29)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (364, N'开鲁县', 29)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (365, N'库伦旗', 29)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (366, N'奈曼旗', 29)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (367, N'扎鲁特旗', 29)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (368, N'霍林郭勒市', 29)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (369, N'东胜区', 30)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (370, N'达拉特旗', 30)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (371, N'准格尔旗', 30)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (372, N'鄂托克前旗', 30)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (373, N'鄂托克旗', 30)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (374, N'杭锦旗', 30)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (375, N'乌审旗', 30)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (376, N'伊金霍洛旗', 30)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (377, N'海拉尔区', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (378, N'阿荣旗', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (379, N'莫力达瓦达斡尔族自治旗', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (380, N'鄂伦春自治旗', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (381, N'鄂温克族自治旗', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (382, N'陈巴尔虎旗', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (383, N'新巴尔虎左旗', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (384, N'新巴尔虎右旗', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (385, N'满洲里市', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (386, N'牙克石市', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (387, N'扎兰屯市', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (388, N'额尔古纳市', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (389, N'根河市', 31)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (390, N'临河区', 32)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (391, N'五原县', 32)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (392, N'磴口县', 32)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (393, N'乌拉特前旗', 32)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (394, N'乌拉特中旗', 32)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (395, N'乌拉特后旗', 32)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (396, N'杭锦后旗', 32)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (397, N'集宁区', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (398, N'卓资县', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (399, N'化德县', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (400, N'商都县', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (401, N'兴和县', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (402, N'凉城县', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (403, N'察哈尔右翼前旗', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (404, N'察哈尔右翼中旗', 33)
GO
print 'Processed 400 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (405, N'察哈尔右翼后旗', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (406, N'四子王旗', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (407, N'丰镇市', 33)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (408, N'乌兰浩特市', 34)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (409, N'阿尔山市', 34)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (410, N'科尔沁右翼前旗', 34)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (411, N'科尔沁右翼中旗', 34)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (412, N'扎赉特旗', 34)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (413, N'突泉县', 34)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (414, N'二连浩特市', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (415, N'锡林浩特市', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (416, N'阿巴嘎旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (417, N'苏尼特左旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (418, N'苏尼特右旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (419, N'东乌珠穆沁旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (420, N'西乌珠穆沁旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (421, N'太仆寺旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (422, N'镶黄旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (423, N'正镶白旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (424, N'正蓝旗', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (425, N'多伦县', 35)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (426, N'阿拉善左旗', 36)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (427, N'阿拉善右旗', 36)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (428, N'额济纳旗', 36)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (429, N'和平区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (430, N'沈河区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (431, N'大东区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (432, N'皇姑区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (433, N'铁西区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (434, N'苏家屯区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (435, N'东陵区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (436, N'新城子区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (437, N'于洪区', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (438, N'辽中县', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (439, N'康平县', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (440, N'法库县', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (441, N'新民市', 37)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (442, N'中山区', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (443, N'西岗区', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (444, N'沙河口区', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (445, N'甘井子区', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (446, N'旅顺口区', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (447, N'金州区', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (448, N'长海县', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (449, N'瓦房店市', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (450, N'普兰店市', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (451, N'庄河市', 38)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (452, N'铁东区', 39)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (453, N'铁西区', 39)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (454, N'立山区', 39)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (455, N'千山区', 39)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (456, N'台安县', 39)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (457, N'岫岩满族自治县', 39)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (458, N'海城市', 39)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (459, N'新抚区', 40)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (460, N'东洲区', 40)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (461, N'望花区', 40)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (462, N'顺城区', 40)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (463, N'抚顺县', 40)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (464, N'新宾满族自治县', 40)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (465, N'清原满族自治县', 40)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (466, N'平山区', 41)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (467, N'溪湖区', 41)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (468, N'明山区', 41)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (469, N'南芬区', 41)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (470, N'本溪满族自治县', 41)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (471, N'桓仁满族自治县', 41)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (472, N'元宝区', 42)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (473, N'振兴区', 42)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (474, N'振安区', 42)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (475, N'宽甸满族自治县', 42)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (476, N'东港市', 42)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (477, N'凤城市', 42)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (478, N'古塔区', 43)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (479, N'凌河区', 43)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (480, N'太和区', 43)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (481, N'黑山县', 43)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (482, N'义县', 43)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (483, N'凌海市', 43)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (484, N'北宁市', 43)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (485, N'站前区', 44)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (486, N'西市区', 44)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (487, N'鲅鱼圈区', 44)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (488, N'老边区', 44)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (489, N'盖州市', 44)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (490, N'大石桥市', 44)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (491, N'海州区', 45)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (492, N'新邱区', 45)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (493, N'太平区', 45)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (494, N'清河门区', 45)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (495, N'细河区', 45)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (496, N'阜新蒙古族自治县', 45)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (497, N'彰武县', 45)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (498, N'白塔区', 46)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (499, N'文圣区', 46)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (500, N'宏伟区', 46)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (501, N'弓长岭区', 46)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (502, N'太子河区', 46)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (503, N'辽阳县', 46)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (504, N'灯塔市', 46)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (505, N'双台子区', 47)
GO
print 'Processed 500 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (506, N'兴隆台区', 47)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (507, N'大洼县', 47)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (508, N'盘山县', 47)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (509, N'银州区', 48)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (510, N'清河区', 48)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (511, N'铁岭县', 48)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (512, N'西丰县', 48)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (513, N'昌图县', 48)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (514, N'调兵山市', 48)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (515, N'开原市', 48)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (516, N'双塔区', 49)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (517, N'龙城区', 49)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (518, N'朝阳县', 49)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (519, N'建平县', 49)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (520, N'喀喇沁左翼蒙古族自治县', 49)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (521, N'北票市', 49)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (522, N'凌源市', 49)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (523, N'连山区', 50)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (524, N'龙港区', 50)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (525, N'南票区', 50)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (526, N'绥中县', 50)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (527, N'建昌县', 50)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (528, N'兴城市', 50)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (529, N'南关区', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (530, N'宽城区', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (531, N'朝阳区', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (532, N'二道区', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (533, N'绿园区', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (534, N'双阳区', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (535, N'农安县', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (536, N'九台市', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (537, N'榆树市', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (538, N'德惠市', 51)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (539, N'昌邑区', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (540, N'龙潭区', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (541, N'船营区', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (542, N'丰满区', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (543, N'永吉县', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (544, N'蛟河市', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (545, N'桦甸市', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (546, N'舒兰市', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (547, N'磐石市', 52)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (548, N'铁西区', 53)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (549, N'铁东区', 53)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (550, N'梨树县', 53)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (551, N'伊通满族自治县', 53)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (552, N'公主岭市', 53)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (553, N'双辽市', 53)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (554, N'龙山区', 54)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (555, N'西安区', 54)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (556, N'东丰县', 54)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (557, N'东辽县', 54)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (558, N'东昌区', 55)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (559, N'二道江区', 55)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (560, N'通化县', 55)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (561, N'辉南县', 55)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (562, N'柳河县', 55)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (563, N'梅河口市', 55)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (564, N'集安市', 55)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (565, N'八道江区', 56)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (566, N'抚松县', 56)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (567, N'靖宇县', 56)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (568, N'长白朝鲜族自治县', 56)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (569, N'江源县', 56)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (570, N'临江市', 56)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (571, N'宁江区', 57)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (572, N'前郭尔罗斯蒙古族自治县', 57)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (573, N'长岭县', 57)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (574, N'乾安县', 57)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (575, N'扶余县', 57)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (576, N'洮北区', 58)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (577, N'镇赉县', 58)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (578, N'通榆县', 58)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (579, N'洮南市', 58)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (580, N'大安市', 58)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (581, N'延吉市', 59)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (582, N'图们市', 59)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (583, N'敦化市', 59)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (584, N'珲春市', 59)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (585, N'龙井市', 59)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (586, N'和龙市', 59)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (587, N'汪清县', 59)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (588, N'安图县', 59)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (589, N'道里区', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (590, N'南岗区', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (591, N'道外区', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (592, N'香坊区', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (593, N'动力区', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (594, N'平房区', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (595, N'松北区', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (596, N'呼兰区', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (597, N'依兰县', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (598, N'方正县', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (599, N'宾县', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (600, N'巴彦县', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (601, N'木兰县', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (602, N'通河县', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (603, N'延寿县', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (604, N'阿城市', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (605, N'双城市', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (606, N'尚志市', 60)
GO
print 'Processed 600 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (607, N'五常市', 60)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (608, N'龙沙区', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (609, N'建华区', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (610, N'铁锋区', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (611, N'昂昂溪区', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (612, N'富拉尔基区', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (613, N'碾子山区', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (614, N'梅里斯达斡尔族区', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (615, N'龙江县', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (616, N'依安县', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (617, N'泰来县', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (618, N'甘南县', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (619, N'富裕县', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (620, N'克山县', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (621, N'克东县', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (622, N'拜泉县', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (623, N'讷河市', 61)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (624, N'鸡冠区', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (625, N'恒山区', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (626, N'滴道区', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (627, N'梨树区', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (628, N'城子河区', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (629, N'麻山区', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (630, N'鸡东县', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (631, N'虎林市', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (632, N'密山市', 62)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (633, N'向阳区', 63)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (634, N'工农区', 63)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (635, N'南山区', 63)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (636, N'兴安区', 63)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (637, N'东山区', 63)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (638, N'兴山区', 63)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (639, N'萝北县', 63)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (640, N'绥滨县', 63)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (641, N'尖山区', 64)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (642, N'岭东区', 64)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (643, N'四方台区', 64)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (644, N'宝山区', 64)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (645, N'集贤县', 64)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (646, N'友谊县', 64)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (647, N'宝清县', 64)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (648, N'饶河县', 64)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (649, N'萨尔图区', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (650, N'龙凤区', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (651, N'让胡路区', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (652, N'红岗区', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (653, N'大同区', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (654, N'肇州县', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (655, N'肇源县', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (656, N'林甸县', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (657, N'杜尔伯特蒙古族自治县', 65)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (658, N'伊春区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (659, N'南岔区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (660, N'友好区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (661, N'西林区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (662, N'翠峦区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (663, N'新青区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (664, N'美溪区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (665, N'金山屯区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (666, N'五营区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (667, N'乌马河区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (668, N'汤旺河区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (669, N'带岭区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (670, N'乌伊岭区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (671, N'红星区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (672, N'上甘岭区', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (673, N'嘉荫县', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (674, N'铁力市', 66)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (675, N'永红区', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (676, N'向阳区', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (677, N'前进区', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (678, N'东风区', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (679, N'郊区', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (680, N'桦南县', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (681, N'桦川县', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (682, N'汤原县', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (683, N'抚远县', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (684, N'同江市', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (685, N'富锦市', 67)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (686, N'新兴区', 68)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (687, N'桃山区', 68)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (688, N'茄子河区', 68)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (689, N'勃利县', 68)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (690, N'东安区', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (691, N'阳明区', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (692, N'爱民区', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (693, N'西安区', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (694, N'东宁县', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (695, N'林口县', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (696, N'绥芬河市', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (697, N'海林市', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (698, N'宁安市', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (699, N'穆棱市', 69)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (700, N'爱辉区', 70)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (701, N'嫩江县', 70)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (702, N'逊克县', 70)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (703, N'孙吴县', 70)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (704, N'北安市', 70)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (705, N'五大连池市', 70)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (706, N'北林区', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (707, N'望奎县', 71)
GO
print 'Processed 700 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (708, N'兰西县', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (709, N'青冈县', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (710, N'庆安县', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (711, N'明水县', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (712, N'绥棱县', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (713, N'安达市', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (714, N'肇东市', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (715, N'海伦市', 71)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (716, N'呼玛县', 72)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (717, N'塔河县', 72)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (718, N'漠河县', 72)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (719, N'黄浦区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (720, N'卢湾区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (721, N'徐汇区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (722, N'长宁区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (723, N'静安区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (724, N'普陀区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (725, N'闸北区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (726, N'虹口区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (727, N'杨浦区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (728, N'闵行区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (729, N'宝山区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (730, N'嘉定区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (731, N'浦东新区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (732, N'金山区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (733, N'松江区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (734, N'青浦区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (735, N'南汇区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (736, N'奉贤区', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (737, N'崇明县', 73)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (738, N'玄武区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (739, N'白下区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (740, N'秦淮区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (741, N'建邺区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (742, N'鼓楼区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (743, N'下关区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (744, N'浦口区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (745, N'栖霞区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (746, N'雨花台区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (747, N'江宁区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (748, N'六合区', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (749, N'溧水县', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (750, N'高淳县', 74)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (751, N'崇安区', 75)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (752, N'南长区', 75)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (753, N'北塘区', 75)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (754, N'锡山区', 75)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (755, N'惠山区', 75)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (756, N'滨湖区', 75)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (757, N'江阴市', 75)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (758, N'宜兴市', 75)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (759, N'鼓楼区', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (760, N'云龙区', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (761, N'九里区', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (762, N'贾汪区', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (763, N'泉山区', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (764, N'丰县', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (765, N'沛县', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (766, N'铜山县', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (767, N'睢宁县', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (768, N'新沂市', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (769, N'邳州市', 76)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (770, N'天宁区', 77)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (771, N'钟楼区', 77)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (772, N'戚墅堰区', 77)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (773, N'新北区', 77)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (774, N'武进区', 77)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (775, N'溧阳市', 77)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (776, N'金坛市', 77)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (777, N'沧浪区', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (778, N'平江区', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (779, N'金阊区', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (780, N'虎丘区', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (781, N'吴中区', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (782, N'相城区', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (783, N'常熟市', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (784, N'张家港市', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (785, N'昆山市', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (786, N'吴江市', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (787, N'太仓市', 78)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (788, N'崇川区', 79)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (789, N'港闸区', 79)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (790, N'海安县', 79)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (791, N'如东县', 79)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (792, N'启东市', 79)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (793, N'如皋市', 79)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (794, N'通州市', 79)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (795, N'海门市', 79)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (796, N'连云区', 80)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (797, N'新浦区', 80)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (798, N'海州区', 80)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (799, N'赣榆县', 80)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (800, N'东海县', 80)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (801, N'灌云县', 80)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (802, N'灌南县', 80)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (803, N'清河区', 81)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (804, N'楚州区', 81)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (805, N'淮阴区', 81)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (806, N'清浦区', 81)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (807, N'涟水县', 81)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (808, N'洪泽县', 81)
GO
print 'Processed 800 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (809, N'盱眙县', 81)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (810, N'金湖县', 81)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (811, N'亭湖区', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (812, N'盐都区', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (813, N'响水县', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (814, N'滨海县', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (815, N'阜宁县', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (816, N'射阳县', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (817, N'建湖县', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (818, N'东台市', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (819, N'大丰市', 82)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (820, N'广陵区', 83)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (821, N'邗江区', 83)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (822, N'维扬区', 83)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (823, N'宝应县', 83)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (824, N'仪征市', 83)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (825, N'高邮市', 83)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (826, N'江都市', 83)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (827, N'京口区', 84)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (828, N'润州区', 84)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (829, N'丹徒区', 84)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (830, N'丹阳市', 84)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (831, N'扬中市', 84)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (832, N'句容市', 84)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (833, N'海陵区', 85)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (834, N'高港区', 85)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (835, N'兴化市', 85)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (836, N'靖江市', 85)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (837, N'泰兴市', 85)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (838, N'姜堰市', 85)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (839, N'宿城区', 86)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (840, N'宿豫区', 86)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (841, N'沭阳县', 86)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (842, N'泗阳县', 86)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (843, N'泗洪县', 86)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (844, N'上城区', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (845, N'下城区', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (846, N'江干区', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (847, N'拱墅区', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (848, N'西湖区', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (849, N'滨江区', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (850, N'萧山区', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (851, N'余杭区', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (852, N'桐庐县', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (853, N'淳安县', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (854, N'建德市', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (855, N'富阳市', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (856, N'临安市', 87)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (857, N'海曙区', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (858, N'江东区', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (859, N'江北区', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (860, N'北仑区', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (861, N'镇海区', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (862, N'鄞州区', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (863, N'象山县', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (864, N'宁海县', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (865, N'余姚市', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (866, N'慈溪市', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (867, N'奉化市', 88)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (868, N'鹿城区', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (869, N'龙湾区', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (870, N'瓯海区', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (871, N'洞头县', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (872, N'永嘉县', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (873, N'平阳县', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (874, N'苍南县', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (875, N'文成县', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (876, N'泰顺县', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (877, N'瑞安市', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (878, N'乐清市', 89)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (879, N'秀城区', 90)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (880, N'秀洲区', 90)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (881, N'嘉善县', 90)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (882, N'海盐县', 90)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (883, N'海宁市', 90)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (884, N'平湖市', 90)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (885, N'桐乡市', 90)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (886, N'吴兴区', 91)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (887, N'南浔区', 91)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (888, N'德清县', 91)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (889, N'长兴县', 91)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (890, N'安吉县', 91)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (891, N'越城区', 92)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (892, N'绍兴县', 92)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (893, N'新昌县', 92)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (894, N'诸暨市', 92)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (895, N'上虞市', 92)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (896, N'嵊州市', 92)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (897, N'婺城区', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (898, N'金东区', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (899, N'武义县', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (900, N'浦江县', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (901, N'磐安县', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (902, N'兰溪市', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (903, N'义乌市', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (904, N'东阳市', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (905, N'永康市', 93)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (906, N'柯城区', 94)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (907, N'衢江区', 94)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (908, N'常山县', 94)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (909, N'开化县', 94)
GO
print 'Processed 900 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (910, N'龙游县', 94)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (911, N'江山市', 94)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (912, N'定海区', 95)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (913, N'普陀区', 95)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (914, N'岱山县', 95)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (915, N'嵊泗县', 95)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (916, N'椒江区', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (917, N'黄岩区', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (918, N'路桥区', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (919, N'玉环县', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (920, N'三门县', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (921, N'天台县', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (922, N'仙居县', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (923, N'温岭市', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (924, N'临海市', 96)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (925, N'莲都区', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (926, N'青田县', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (927, N'缙云县', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (928, N'遂昌县', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (929, N'松阳县', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (930, N'云和县', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (931, N'庆元县', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (932, N'景宁畲族自治县', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (933, N'龙泉市', 97)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (934, N'瑶海区', 98)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (935, N'庐阳区', 98)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (936, N'蜀山区', 98)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (937, N'包河区', 98)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (938, N'长丰县', 98)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (939, N'肥东县', 98)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (940, N'肥西县', 98)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (941, N'镜湖区', 99)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (942, N'马塘区', 99)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (943, N'新芜区', 99)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (944, N'鸠江区', 99)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (945, N'芜湖县', 99)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (946, N'繁昌县', 99)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (947, N'南陵县', 99)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (948, N'龙子湖区', 100)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (949, N'蚌山区', 100)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (950, N'禹会区', 100)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (951, N'淮上区', 100)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (952, N'怀远县', 100)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (953, N'五河县', 100)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (954, N'固镇县', 100)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (955, N'大通区', 101)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (956, N'田家庵区', 101)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (957, N'谢家集区', 101)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (958, N'八公山区', 101)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (959, N'潘集区', 101)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (960, N'凤台县', 101)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (961, N'金家庄区', 102)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (962, N'花山区', 102)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (963, N'雨山区', 102)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (964, N'当涂县', 102)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (965, N'杜集区', 103)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (966, N'相山区', 103)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (967, N'烈山区', 103)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (968, N'濉溪县', 103)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (969, N'铜官山区', 104)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (970, N'狮子山区', 104)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (971, N'郊区', 104)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (972, N'铜陵县', 104)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (973, N'迎江区', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (974, N'大观区', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (975, N'郊区', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (976, N'怀宁县', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (977, N'枞阳县', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (978, N'潜山县', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (979, N'太湖县', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (980, N'宿松县', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (981, N'望江县', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (982, N'岳西县', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (983, N'桐城市', 105)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (984, N'屯溪区', 106)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (985, N'黄山区', 106)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (986, N'徽州区', 106)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (987, N'歙县', 106)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (988, N'休宁县', 106)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (989, N'黟县', 106)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (990, N'祁门县', 106)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (991, N'琅琊区', 107)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (992, N'南谯区', 107)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (993, N'来安县', 107)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (994, N'全椒县', 107)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (995, N'定远县', 107)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (996, N'凤阳县', 107)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (997, N'天长市', 107)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (998, N'明光市', 107)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (999, N'颍州区', 108)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1000, N'颍东区', 108)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1001, N'颍泉区', 108)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1002, N'临泉县', 108)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1003, N'太和县', 108)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1004, N'阜南县', 108)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1005, N'颍上县', 108)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1006, N'界首市', 108)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1007, N'埇桥区', 109)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1008, N'砀山县', 109)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1009, N'萧县', 109)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1010, N'灵璧县', 109)
GO
print 'Processed 1000 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1011, N'泗县', 109)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1012, N'居巢区', 110)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1013, N'庐江县', 110)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1014, N'无为县', 110)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1015, N'含山县', 110)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1016, N'和县', 110)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1017, N'金安区', 111)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1018, N'裕安区', 111)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1019, N'寿县', 111)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1020, N'霍邱县', 111)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1021, N'舒城县', 111)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1022, N'金寨县', 111)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1023, N'霍山县', 111)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1024, N'谯城区', 112)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1025, N'涡阳县', 112)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1026, N'蒙城县', 112)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1027, N'利辛县', 112)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1028, N'贵池区', 113)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1029, N'东至县', 113)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1030, N'石台县', 113)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1031, N'青阳县', 113)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1032, N'宣州区', 114)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1033, N'郎溪县', 114)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1034, N'广德县', 114)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1035, N'泾县', 114)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1036, N'绩溪县', 114)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1037, N'旌德县', 114)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1038, N'宁国市', 114)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1039, N'鼓楼区', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1040, N'台江区', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1041, N'仓山区', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1042, N'马尾区', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1043, N'晋安区', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1044, N'闽侯县', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1045, N'连江县', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1046, N'罗源县', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1047, N'闽清县', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1048, N'永泰县', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1049, N'平潭县', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1050, N'福清市', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1051, N'长乐市', 115)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1052, N'思明区', 116)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1053, N'海沧区', 116)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1054, N'湖里区', 116)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1055, N'集美区', 116)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1056, N'同安区', 116)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1057, N'翔安区', 116)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1058, N'城厢区', 117)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1059, N'涵江区', 117)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1060, N'荔城区', 117)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1061, N'秀屿区', 117)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1062, N'仙游县', 117)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1063, N'梅列区', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1064, N'三元区', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1065, N'明溪县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1066, N'清流县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1067, N'宁化县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1068, N'大田县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1069, N'尤溪县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1070, N'沙县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1071, N'将乐县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1072, N'泰宁县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1073, N'建宁县', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1074, N'永安市', 118)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1075, N'鲤城区', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1076, N'丰泽区', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1077, N'洛江区', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1078, N'泉港区', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1079, N'惠安县', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1080, N'安溪县', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1081, N'永春县', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1082, N'德化县', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1083, N'金门县', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1084, N'石狮市', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1085, N'晋江市', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1086, N'南安市', 119)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1087, N'芗城区', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1088, N'龙文区', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1089, N'云霄县', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1090, N'漳浦县', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1091, N'诏安县', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1092, N'长泰县', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1093, N'东山县', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1094, N'南靖县', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1095, N'平和县', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1096, N'华安县', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1097, N'龙海市', 120)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1098, N'延平区', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1099, N'顺昌县', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1100, N'浦城县', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1101, N'光泽县', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1102, N'松溪县', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1103, N'政和县', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1104, N'邵武市', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1105, N'武夷山市', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1106, N'建瓯市', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1107, N'建阳市', 121)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1108, N'新罗区', 122)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1109, N'长汀县', 122)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1110, N'永定县', 122)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1111, N'上杭县', 122)
GO
print 'Processed 1100 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1112, N'武平县', 122)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1113, N'连城县', 122)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1114, N'漳平市', 122)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1115, N'蕉城区', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1116, N'霞浦县', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1117, N'古田县', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1118, N'屏南县', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1119, N'寿宁县', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1120, N'周宁县', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1121, N'柘荣县', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1122, N'福安市', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1123, N'福鼎市', 123)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1124, N'东湖区', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1125, N'西湖区', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1126, N'青云谱区', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1127, N'湾里区', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1128, N'青山湖区', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1129, N'南昌县', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1130, N'新建县', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1131, N'安义县', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1132, N'进贤县', 124)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1133, N'昌江区', 125)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1134, N'珠山区', 125)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1135, N'浮梁县', 125)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1136, N'乐平市', 125)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1137, N'安源区', 126)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1138, N'湘东区', 126)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1139, N'莲花县', 126)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1140, N'上栗县', 126)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1141, N'芦溪县', 126)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1142, N'庐山区', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1143, N'浔阳区', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1144, N'九江县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1145, N'武宁县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1146, N'修水县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1147, N'永修县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1148, N'德安县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1149, N'星子县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1150, N'都昌县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1151, N'湖口县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1152, N'彭泽县', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1153, N'瑞昌市', 127)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1154, N'渝水区', 128)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1155, N'分宜县', 128)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1156, N'月湖区', 129)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1157, N'余江县', 129)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1158, N'贵溪市', 129)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1159, N'章贡区', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1160, N'赣县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1161, N'信丰县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1162, N'大余县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1163, N'上犹县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1164, N'崇义县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1165, N'安远县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1166, N'龙南县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1167, N'定南县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1168, N'全南县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1169, N'宁都县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1170, N'于都县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1171, N'兴国县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1172, N'会昌县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1173, N'寻乌县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1174, N'石城县', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1175, N'瑞金市', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1176, N'南康市', 130)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1177, N'吉州区', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1178, N'青原区', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1179, N'吉安县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1180, N'吉水县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1181, N'峡江县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1182, N'新干县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1183, N'永丰县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1184, N'泰和县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1185, N'遂川县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1186, N'万安县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1187, N'安福县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1188, N'永新县', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1189, N'井冈山市', 131)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1190, N'袁州区', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1191, N'奉新县', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1192, N'万载县', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1193, N'上高县', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1194, N'宜丰县', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1195, N'靖安县', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1196, N'铜鼓县', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1197, N'丰城市', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1198, N'樟树市', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1199, N'高安市', 132)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1200, N'临川区', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1201, N'南城县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1202, N'黎川县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1203, N'南丰县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1204, N'崇仁县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1205, N'乐安县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1206, N'宜黄县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1207, N'金溪县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1208, N'资溪县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1209, N'东乡县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1210, N'广昌县', 133)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1211, N'信州区', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1212, N'上饶县', 134)
GO
print 'Processed 1200 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1213, N'广丰县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1214, N'玉山县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1215, N'铅山县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1216, N'横峰县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1217, N'弋阳县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1218, N'余干县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1219, N'鄱阳县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1220, N'万年县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1221, N'婺源县', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1222, N'德兴市', 134)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1223, N'历下区', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1224, N'市中区', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1225, N'槐荫区', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1226, N'天桥区', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1227, N'历城区', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1228, N'长清区', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1229, N'平阴县', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1230, N'济阳县', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1231, N'商河县', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1232, N'章丘市', 135)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1233, N'市南区', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1234, N'市北区', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1235, N'四方区', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1236, N'黄岛区', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1237, N'崂山区', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1238, N'李沧区', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1239, N'城阳区', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1240, N'胶州市', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1241, N'即墨市', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1242, N'平度市', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1243, N'胶南市', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1244, N'莱西市', 136)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1245, N'淄川区', 137)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1246, N'张店区', 137)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1247, N'博山区', 137)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1248, N'临淄区', 137)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1249, N'周村区', 137)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1250, N'桓台县', 137)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1251, N'高青县', 137)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1252, N'沂源县', 137)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1253, N'市中区', 138)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1254, N'薛城区', 138)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1255, N'峄城区', 138)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1256, N'台儿庄区', 138)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1257, N'山亭区', 138)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1258, N'滕州市', 138)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1259, N'东营区', 139)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1260, N'河口区', 139)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1261, N'垦利县', 139)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1262, N'利津县', 139)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1263, N'广饶县', 139)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1264, N'芝罘区', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1265, N'福山区', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1266, N'牟平区', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1267, N'莱山区', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1268, N'长岛县', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1269, N'龙口市', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1270, N'莱阳市', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1271, N'莱州市', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1272, N'蓬莱市', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1273, N'招远市', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1274, N'栖霞市', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1275, N'海阳市', 140)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1276, N'潍城区', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1277, N'寒亭区', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1278, N'坊子区', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1279, N'奎文区', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1280, N'临朐县', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1281, N'昌乐县', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1282, N'青州市', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1283, N'诸城市', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1284, N'寿光市', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1285, N'安丘市', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1286, N'高密市', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1287, N'昌邑市', 141)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1288, N'市中区', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1289, N'任城区', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1290, N'微山县', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1291, N'鱼台县', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1292, N'金乡县', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1293, N'嘉祥县', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1294, N'汶上县', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1295, N'泗水县', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1296, N'梁山县', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1297, N'曲阜市', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1298, N'兖州市', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1299, N'邹城市', 142)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1300, N'泰山区', 143)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1301, N'岱岳区', 143)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1302, N'宁阳县', 143)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1303, N'东平县', 143)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1304, N'新泰市', 143)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1305, N'肥城市', 143)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1306, N'环翠区', 144)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1307, N'文登市', 144)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1308, N'荣成市', 144)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1309, N'乳山市', 144)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1310, N'东港区', 145)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1311, N'岚山区', 145)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1312, N'五莲县', 145)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1313, N'莒县', 145)
GO
print 'Processed 1300 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1314, N'莱城区', 146)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1315, N'钢城区', 146)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1316, N'兰山区', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1317, N'罗庄区', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1318, N'河东区', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1319, N'沂南县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1320, N'郯城县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1321, N'沂水县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1322, N'苍山县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1323, N'费县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1324, N'平邑县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1325, N'莒南县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1326, N'蒙阴县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1327, N'临沭县', 147)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1328, N'德城区', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1329, N'陵县', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1330, N'宁津县', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1331, N'庆云县', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1332, N'临邑县', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1333, N'齐河县', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1334, N'平原县', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1335, N'夏津县', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1336, N'武城县', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1337, N'乐陵市', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1338, N'禹城市', 148)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1339, N'东昌府区', 149)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1340, N'阳谷县', 149)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1341, N'莘县', 149)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1342, N'茌平县', 149)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1343, N'东阿县', 149)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1344, N'冠县', 149)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1345, N'高唐县', 149)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1346, N'临清市', 149)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1347, N'滨城区', 150)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1348, N'惠民县', 150)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1349, N'阳信县', 150)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1350, N'无棣县', 150)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1351, N'沾化县', 150)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1352, N'博兴县', 150)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1353, N'邹平县', 150)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1354, N'牡丹区', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1355, N'曹县', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1356, N'单县', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1357, N'成武县', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1358, N'巨野县', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1359, N'郓城县', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1360, N'鄄城县', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1361, N'定陶县', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1362, N'东明县', 151)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1363, N'中原区', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1364, N'二七区', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1365, N'管城回族区', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1366, N'金水区', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1367, N'上街区', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1368, N'惠济区', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1369, N'中牟县', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1370, N'巩义市', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1371, N'荥阳市', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1372, N'新密市', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1373, N'新郑市', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1374, N'登封市', 152)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1375, N'龙亭区', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1376, N'顺河回族区', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1377, N'鼓楼区', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1378, N'南关区', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1379, N'郊区', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1380, N'杞县', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1381, N'通许县', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1382, N'尉氏县', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1383, N'开封县', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1384, N'兰考县', 153)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1385, N'老城区', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1386, N'西工区', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1387, N'廛河回族区', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1388, N'涧西区', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1389, N'吉利区', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1390, N'洛龙区', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1391, N'孟津县', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1392, N'新安县', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1393, N'栾川县', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1394, N'嵩县', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1395, N'汝阳县', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1396, N'宜阳县', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1397, N'洛宁县', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1398, N'伊川县', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1399, N'偃师市', 154)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1400, N'新华区', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1401, N'卫东区', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1402, N'石龙区', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1403, N'湛河区', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1404, N'宝丰县', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1405, N'叶县', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1406, N'鲁山县', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1407, N'郏县', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1408, N'舞钢市', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1409, N'汝州市', 155)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1410, N'文峰区', 156)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1411, N'北关区', 156)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1412, N'殷都区', 156)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1413, N'龙安区', 156)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1414, N'安阳县', 156)
GO
print 'Processed 1400 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1415, N'汤阴县', 156)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1416, N'滑县', 156)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1417, N'内黄县', 156)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1418, N'林州市', 156)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1419, N'鹤山区', 157)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1420, N'山城区', 157)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1421, N'淇滨区', 157)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1422, N'浚县', 157)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1423, N'淇县', 157)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1424, N'红旗区', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1425, N'卫滨区', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1426, N'凤泉区', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1427, N'牧野区', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1428, N'新乡县', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1429, N'获嘉县', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1430, N'原阳县', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1431, N'延津县', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1432, N'封丘县', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1433, N'长垣县', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1434, N'卫辉市', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1435, N'辉县市', 158)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1436, N'解放区', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1437, N'中站区', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1438, N'马村区', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1439, N'山阳区', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1440, N'修武县', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1441, N'博爱县', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1442, N'武陟县', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1443, N'温县', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1444, N'济源市', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1445, N'沁阳市', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1446, N'孟州市', 159)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1447, N'华龙区', 160)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1448, N'清丰县', 160)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1449, N'南乐县', 160)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1450, N'范县', 160)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1451, N'台前县', 160)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1452, N'濮阳县', 160)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1453, N'魏都区', 161)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1454, N'许昌县', 161)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1455, N'鄢陵县', 161)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1456, N'襄城县', 161)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1457, N'禹州市', 161)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1458, N'长葛市', 161)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1459, N'源汇区', 162)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1460, N'郾城区', 162)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1461, N'召陵区', 162)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1462, N'舞阳县', 162)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1463, N'临颍县', 162)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1464, N'市辖区', 163)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1465, N'湖滨区', 163)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1466, N'渑池县', 163)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1467, N'陕县', 163)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1468, N'卢氏县', 163)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1469, N'义马市', 163)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1470, N'灵宝市', 163)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1471, N'宛城区', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1472, N'卧龙区', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1473, N'南召县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1474, N'方城县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1475, N'西峡县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1476, N'镇平县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1477, N'内乡县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1478, N'淅川县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1479, N'社旗县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1480, N'唐河县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1481, N'新野县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1482, N'桐柏县', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1483, N'邓州市', 164)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1484, N'梁园区', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1485, N'睢阳区', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1486, N'民权县', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1487, N'睢县', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1488, N'宁陵县', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1489, N'柘城县', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1490, N'虞城县', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1491, N'夏邑县', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1492, N'永城市', 165)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1493, N'浉河区', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1494, N'平桥区', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1495, N'罗山县', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1496, N'光山县', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1497, N'新县', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1498, N'商城县', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1499, N'固始县', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1500, N'潢川县', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1501, N'淮滨县', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1502, N'息县', 166)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1503, N'川汇区', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1504, N'扶沟县', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1505, N'西华县', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1506, N'商水县', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1507, N'沈丘县', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1508, N'郸城县', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1509, N'淮阳县', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1510, N'太康县', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1511, N'鹿邑县', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1512, N'项城市', 167)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1513, N'驿城区', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1514, N'西平县', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1515, N'上蔡县', 168)
GO
print 'Processed 1500 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1516, N'平舆县', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1517, N'正阳县', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1518, N'确山县', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1519, N'泌阳县', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1520, N'汝南县', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1521, N'遂平县', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1522, N'新蔡县', 168)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1523, N'江岸区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1524, N'江汉区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1525, N'硚口区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1526, N'汉阳区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1527, N'武昌区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1528, N'青山区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1529, N'洪山区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1530, N'东西湖区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1531, N'汉南区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1532, N'蔡甸区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1533, N'江夏区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1534, N'黄陂区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1535, N'新洲区', 169)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1536, N'黄石港区', 170)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1537, N'西塞山区', 170)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1538, N'下陆区', 170)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1539, N'铁山区', 170)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1540, N'阳新县', 170)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1541, N'大冶市', 170)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1542, N'茅箭区', 171)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1543, N'张湾区', 171)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1544, N'郧县', 171)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1545, N'郧西县', 171)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1546, N'竹山县', 171)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1547, N'竹溪县', 171)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1548, N'房县', 171)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1549, N'丹江口市', 171)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1550, N'西陵区', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1551, N'伍家岗区', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1552, N'点军区', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1553, N'猇亭区', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1554, N'夷陵区', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1555, N'远安县', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1556, N'兴山县', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1557, N'秭归县', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1558, N'长阳土家族自治县', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1559, N'五峰土家族自治县', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1560, N'宜都市', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1561, N'当阳市', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1562, N'枝江市', 172)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1563, N'襄城区', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1564, N'樊城区', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1565, N'襄阳区', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1566, N'南漳县', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1567, N'谷城县', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1568, N'保康县', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1569, N'老河口市', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1570, N'枣阳市', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1571, N'宜城市', 173)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1572, N'梁子湖区', 174)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1573, N'华容区', 174)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1574, N'鄂城区', 174)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1575, N'东宝区', 175)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1576, N'掇刀区', 175)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1577, N'京山县', 175)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1578, N'沙洋县', 175)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1579, N'钟祥市', 175)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1580, N'孝南区', 176)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1581, N'孝昌县', 176)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1582, N'大悟县', 176)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1583, N'云梦县', 176)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1584, N'应城市', 176)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1585, N'安陆市', 176)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1586, N'汉川市', 176)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1587, N'沙市区', 177)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1588, N'荆州区', 177)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1589, N'公安县', 177)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1590, N'监利县', 177)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1591, N'江陵县', 177)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1592, N'石首市', 177)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1593, N'洪湖市', 177)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1594, N'松滋市', 177)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1595, N'黄州区', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1596, N'团风县', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1597, N'红安县', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1598, N'罗田县', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1599, N'英山县', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1600, N'浠水县', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1601, N'蕲春县', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1602, N'黄梅县', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1603, N'麻城市', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1604, N'武穴市', 178)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1605, N'咸安区', 179)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1606, N'嘉鱼县', 179)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1607, N'通城县', 179)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1608, N'崇阳县', 179)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1609, N'通山县', 179)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1610, N'赤壁市', 179)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1611, N'曾都区', 180)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1612, N'广水市', 180)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1613, N'恩施市', 181)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1614, N'利川市', 181)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1615, N'建始县', 181)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1616, N'巴东县', 181)
GO
print 'Processed 1600 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1617, N'宣恩县', 181)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1618, N'咸丰县', 181)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1619, N'来凤县', 181)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1620, N'鹤峰县', 181)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1625, N'芙蓉区', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1626, N'天心区', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1627, N'岳麓区', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1628, N'开福区', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1629, N'雨花区', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1630, N'长沙县', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1631, N'望城县', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1632, N'宁乡县', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1633, N'浏阳市', 183)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1634, N'荷塘区', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1635, N'芦淞区', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1636, N'石峰区', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1637, N'天元区', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1638, N'株洲县', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1639, N'攸县', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1640, N'茶陵县', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1641, N'炎陵县', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1642, N'醴陵市', 184)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1643, N'雨湖区', 185)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1644, N'岳塘区', 185)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1645, N'湘潭县', 185)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1646, N'湘乡市', 185)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1647, N'韶山市', 185)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1648, N'珠晖区', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1649, N'雁峰区', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1650, N'石鼓区', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1651, N'蒸湘区', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1652, N'南岳区', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1653, N'衡阳县', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1654, N'衡南县', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1655, N'衡山县', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1656, N'衡东县', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1657, N'祁东县', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1658, N'耒阳市', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1659, N'常宁市', 186)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1660, N'双清区', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1661, N'大祥区', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1662, N'北塔区', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1663, N'邵东县', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1664, N'新邵县', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1665, N'邵阳县', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1666, N'隆回县', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1667, N'洞口县', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1668, N'绥宁县', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1669, N'新宁县', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1670, N'城步苗族自治县', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1671, N'武冈市', 187)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1672, N'岳阳楼区', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1673, N'云溪区', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1674, N'君山区', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1675, N'岳阳县', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1676, N'华容县', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1677, N'湘阴县', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1678, N'平江县', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1679, N'汨罗市', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1680, N'临湘市', 188)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1681, N'武陵区', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1682, N'鼎城区', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1683, N'安乡县', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1684, N'汉寿县', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1685, N'澧县', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1686, N'临澧县', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1687, N'桃源县', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1688, N'石门县', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1689, N'津市市', 189)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1690, N'永定区', 190)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1691, N'武陵源区', 190)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1692, N'慈利县', 190)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1693, N'桑植县', 190)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1694, N'资阳区', 191)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1695, N'赫山区', 191)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1696, N'南县', 191)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1697, N'桃江县', 191)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1698, N'安化县', 191)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1699, N'沅江市', 191)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1700, N'北湖区', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1701, N'苏仙区', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1702, N'桂阳县', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1703, N'宜章县', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1704, N'永兴县', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1705, N'嘉禾县', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1706, N'临武县', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1707, N'汝城县', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1708, N'桂东县', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1709, N'安仁县', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1710, N'资兴市', 192)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1711, N'芝山区', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1712, N'冷水滩区', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1713, N'祁阳县', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1714, N'东安县', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1715, N'双牌县', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1716, N'道县', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1717, N'江永县', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1718, N'宁远县', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1719, N'蓝山县', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1720, N'新田县', 193)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1721, N'江华瑶族自治县', 193)
GO
print 'Processed 1700 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1722, N'鹤城区', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1723, N'中方县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1724, N'沅陵县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1725, N'辰溪县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1726, N'溆浦县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1727, N'会同县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1728, N'麻阳苗族自治县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1729, N'新晃侗族自治县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1730, N'芷江侗族自治县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1731, N'靖州苗族侗族自治县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1732, N'通道侗族自治县', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1733, N'洪江市', 194)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1734, N'娄星区', 195)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1735, N'双峰县', 195)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1736, N'新化县', 195)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1737, N'冷水江市', 195)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1738, N'涟源市', 195)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1739, N'吉首市', 196)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1740, N'泸溪县', 196)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1741, N'凤凰县', 196)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1742, N'花垣县', 196)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1743, N'保靖县', 196)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1744, N'古丈县', 196)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1745, N'永顺县', 196)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1746, N'龙山县', 196)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1747, N'东山区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1748, N'荔湾区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1749, N'越秀区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1750, N'海珠区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1751, N'天河区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1752, N'芳村区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1753, N'白云区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1754, N'黄埔区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1755, N'番禺区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1756, N'花都区', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1757, N'增城市', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1758, N'从化市', 197)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1759, N'武江区', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1760, N'浈江区', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1761, N'曲江区', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1762, N'始兴县', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1763, N'仁化县', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1764, N'翁源县', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1765, N'乳源瑶族自治县', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1766, N'新丰县', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1767, N'乐昌市', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1768, N'南雄市', 198)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1769, N'罗湖区', 199)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1770, N'福田区', 199)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1771, N'南山区', 199)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1772, N'宝安区', 199)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1773, N'龙岗区', 199)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1774, N'盐田区', 199)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1775, N'香洲区', 200)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1776, N'斗门区', 200)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1777, N'金湾区', 200)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1778, N'龙湖区', 201)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1779, N'金平区', 201)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1780, N'濠江区', 201)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1781, N'潮阳区', 201)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1782, N'潮南区', 201)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1783, N'澄海区', 201)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1784, N'南澳县', 201)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1785, N'禅城区', 202)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1786, N'南海区', 202)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1787, N'顺德区', 202)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1788, N'三水区', 202)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1789, N'高明区', 202)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1790, N'蓬江区', 203)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1791, N'江海区', 203)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1792, N'新会区', 203)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1793, N'台山市', 203)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1794, N'开平市', 203)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1795, N'鹤山市', 203)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1796, N'恩平市', 203)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1797, N'赤坎区', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1798, N'霞山区', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1799, N'坡头区', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1800, N'麻章区', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1801, N'遂溪县', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1802, N'徐闻县', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1803, N'廉江市', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1804, N'雷州市', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1805, N'吴川市', 204)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1806, N'茂南区', 205)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1807, N'茂港区', 205)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1808, N'电白县', 205)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1809, N'高州市', 205)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1810, N'化州市', 205)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1811, N'信宜市', 205)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1812, N'端州区', 206)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1813, N'鼎湖区', 206)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1814, N'广宁县', 206)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1815, N'怀集县', 206)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1816, N'封开县', 206)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1817, N'德庆县', 206)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1818, N'高要市', 206)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1819, N'四会市', 206)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1820, N'惠城区', 207)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1821, N'惠阳区', 207)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1822, N'博罗县', 207)
GO
print 'Processed 1800 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1823, N'惠东县', 207)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1824, N'龙门县', 207)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1825, N'梅江区', 208)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1826, N'梅县', 208)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1827, N'大埔县', 208)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1828, N'丰顺县', 208)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1829, N'五华县', 208)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1830, N'平远县', 208)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1831, N'蕉岭县', 208)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1832, N'兴宁市', 208)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1833, N'城区', 209)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1834, N'海丰县', 209)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1835, N'陆河县', 209)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1836, N'陆丰市', 209)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1837, N'源城区', 210)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1838, N'紫金县', 210)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1839, N'龙川县', 210)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1840, N'连平县', 210)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1841, N'和平县', 210)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1842, N'东源县', 210)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1843, N'江城区', 211)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1844, N'阳西县', 211)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1845, N'阳东县', 211)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1846, N'阳春市', 211)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1847, N'清城区', 212)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1848, N'佛冈县', 212)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1849, N'阳山县', 212)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1850, N'连山壮族瑶族自治县', 212)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1851, N'连南瑶族自治县', 212)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1852, N'清新县', 212)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1853, N'英德市', 212)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1854, N'连州市', 212)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1855, N'湘桥区', 215)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1856, N'潮安县', 215)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1857, N'饶平县', 215)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1858, N'榕城区', 216)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1859, N'揭东县', 216)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1860, N'揭西县', 216)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1861, N'惠来县', 216)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1862, N'普宁市', 216)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1863, N'云城区', 217)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1864, N'新兴县', 217)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1865, N'郁南县', 217)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1866, N'云安县', 217)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1867, N'罗定市', 217)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1868, N'兴宁区', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1869, N'青秀区', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1870, N'江南区', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1871, N'西乡塘区', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1872, N'良庆区', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1873, N'邕宁区', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1874, N'武鸣县', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1875, N'隆安县', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1876, N'马山县', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1877, N'上林县', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1878, N'宾阳县', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1879, N'横县', 218)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1880, N'城中区', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1881, N'鱼峰区', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1882, N'柳南区', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1883, N'柳北区', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1884, N'柳江县', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1885, N'柳城县', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1886, N'鹿寨县', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1887, N'融安县', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1888, N'融水苗族自治县', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1889, N'三江侗族自治县', 219)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1890, N'秀峰区', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1891, N'叠彩区', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1892, N'象山区', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1893, N'七星区', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1894, N'雁山区', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1895, N'阳朔县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1896, N'临桂县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1897, N'灵川县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1898, N'全州县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1899, N'兴安县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1900, N'永福县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1901, N'灌阳县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1902, N'龙胜各族自治县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1903, N'资源县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1904, N'平乐县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1905, N'荔蒲县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1906, N'恭城瑶族自治县', 220)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1907, N'万秀区', 221)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1908, N'蝶山区', 221)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1909, N'长洲区', 221)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1910, N'苍梧县', 221)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1911, N'藤县', 221)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1912, N'蒙山县', 221)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1913, N'岑溪市', 221)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1914, N'海城区', 222)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1915, N'银海区', 222)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1916, N'铁山港区', 222)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1917, N'合浦县', 222)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1918, N'港口区', 223)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1919, N'防城区', 223)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1920, N'上思县', 223)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1921, N'东兴市', 223)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1922, N'钦南区', 224)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1923, N'钦北区', 224)
GO
print 'Processed 1900 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1924, N'灵山县', 224)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1925, N'浦北县', 224)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1926, N'港北区', 225)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1927, N'港南区', 225)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1928, N'覃塘区', 225)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1929, N'平南县', 225)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1930, N'桂平市', 225)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1931, N'玉州区', 226)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1932, N'容县', 226)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1933, N'陆川县', 226)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1934, N'博白县', 226)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1935, N'兴业县', 226)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1936, N'北流市', 226)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1937, N'右江区', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1938, N'田阳县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1939, N'田东县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1940, N'平果县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1941, N'德保县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1942, N'靖西县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1943, N'那坡县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1944, N'凌云县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1945, N'乐业县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1946, N'田林县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1947, N'西林县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1948, N'隆林各族自治县', 227)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1949, N'八步区', 228)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1950, N'昭平县', 228)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1951, N'钟山县', 228)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1952, N'富川瑶族自治县', 228)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1953, N'金城江区', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1954, N'南丹县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1955, N'天峨县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1956, N'凤山县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1957, N'东兰县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1958, N'罗城仫佬族自治县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1959, N'环江毛南族自治县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1960, N'巴马瑶族自治县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1961, N'都安瑶族自治县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1962, N'大化瑶族自治县', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1963, N'宜州市', 229)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1964, N'兴宾区', 230)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1965, N'忻城县', 230)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1966, N'象州县', 230)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1967, N'武宣县', 230)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1968, N'金秀瑶族自治县', 230)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1969, N'合山市', 230)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1970, N'江洲区', 231)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1971, N'扶绥县', 231)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1972, N'宁明县', 231)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1973, N'龙州县', 231)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1974, N'大新县', 231)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1975, N'天等县', 231)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1976, N'凭祥市', 231)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1977, N'秀英区', 232)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1978, N'龙华区', 232)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1979, N'琼山区', 232)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1980, N'美兰区', 232)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1981, N'五指山市', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1982, N'琼海市', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1983, N'儋州市', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1984, N'文昌市', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1985, N'万宁市', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1986, N'东方市', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1987, N'定安县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1988, N'屯昌县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1989, N'澄迈县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1990, N'临高县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1991, N'白沙黎族自治县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1992, N'昌江黎族自治县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1993, N'乐东黎族自治县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1994, N'陵水黎族自治县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1995, N'保亭黎族苗族自治县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1996, N'琼中黎族苗族自治县', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1997, N'西沙群岛', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1998, N'南沙群岛', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (1999, N'中沙群岛的岛礁及其海域', 233)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2000, N'万州区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2001, N'涪陵区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2002, N'渝中区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2003, N'大渡口区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2004, N'江北区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2005, N'沙坪坝区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2006, N'九龙坡区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2007, N'南岸区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2008, N'北碚区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2009, N'万盛区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2010, N'双桥区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2011, N'渝北区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2012, N'巴南区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2013, N'黔江区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2014, N'长寿区', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2015, N'綦江县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2016, N'潼南县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2017, N'铜梁县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2018, N'大足县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2019, N'荣昌县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2020, N'璧山县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2021, N'梁平县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2022, N'城口县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2023, N'丰都县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2024, N'垫江县', 234)
GO
print 'Processed 2000 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2025, N'武隆县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2026, N'忠县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2027, N'开县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2028, N'云阳县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2029, N'奉节县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2030, N'巫山县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2031, N'巫溪县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2032, N'石柱土家族自治县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2033, N'秀山土家族苗族自治县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2034, N'酉阳土家族苗族自治县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2035, N'彭水苗族土家族自治县', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2036, N'江津市', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2037, N'合川市', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2038, N'永川市', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2039, N'南川市', 234)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2040, N'锦江区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2041, N'青羊区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2042, N'金牛区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2043, N'武侯区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2044, N'成华区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2045, N'龙泉驿区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2046, N'青白江区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2047, N'新都区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2048, N'温江区', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2049, N'金堂县', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2050, N'双流县', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2051, N'郫县', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2052, N'大邑县', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2053, N'蒲江县', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2054, N'新津县', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2055, N'都江堰市', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2056, N'彭州市', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2057, N'邛崃市', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2058, N'崇州市', 235)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2059, N'自流井区', 236)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2060, N'贡井区', 236)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2061, N'大安区', 236)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2062, N'沿滩区', 236)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2063, N'荣县', 236)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2064, N'富顺县', 236)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2065, N'东区', 237)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2066, N'西区', 237)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2067, N'仁和区', 237)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2068, N'米易县', 237)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2069, N'盐边县', 237)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2070, N'江阳区', 238)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2071, N'纳溪区', 238)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2072, N'龙马潭区', 238)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2073, N'泸县', 238)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2074, N'合江县', 238)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2075, N'叙永县', 238)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2076, N'古蔺县', 238)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2077, N'旌阳区', 239)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2078, N'中江县', 239)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2079, N'罗江县', 239)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2080, N'广汉市', 239)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2081, N'什邡市', 239)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2082, N'绵竹市', 239)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2083, N'涪城区', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2084, N'游仙区', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2085, N'三台县', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2086, N'盐亭县', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2087, N'安县', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2088, N'梓潼县', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2089, N'北川羌族自治县', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2090, N'平武县', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2091, N'江油市', 240)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2092, N'市中区', 241)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2093, N'元坝区', 241)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2094, N'朝天区', 241)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2095, N'旺苍县', 241)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2096, N'青川县', 241)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2097, N'剑阁县', 241)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2098, N'苍溪县', 241)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2099, N'船山区', 242)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2100, N'安居区', 242)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2101, N'蓬溪县', 242)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2102, N'射洪县', 242)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2103, N'大英县', 242)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2104, N'市中区', 243)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2105, N'东兴区', 243)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2106, N'威远县', 243)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2107, N'资中县', 243)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2108, N'隆昌县', 243)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2109, N'市中区', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2110, N'沙湾区', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2111, N'五通桥区', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2112, N'金口河区', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2113, N'犍为县', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2114, N'井研县', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2115, N'夹江县', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2116, N'沐川县', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2117, N'峨边彝族自治县', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2118, N'马边彝族自治县', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2119, N'峨眉山市', 244)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2120, N'顺庆区', 245)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2121, N'高坪区', 245)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2122, N'嘉陵区', 245)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2123, N'南部县', 245)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2124, N'营山县', 245)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2125, N'蓬安县', 245)
GO
print 'Processed 2100 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2126, N'仪陇县', 245)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2127, N'西充县', 245)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2128, N'阆中市', 245)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2129, N'东坡区', 246)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2130, N'仁寿县', 246)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2131, N'彭山县', 246)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2132, N'洪雅县', 246)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2133, N'丹棱县', 246)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2134, N'青神县', 246)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2135, N'翠屏区', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2136, N'宜宾县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2137, N'南溪县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2138, N'江安县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2139, N'长宁县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2140, N'高县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2141, N'珙县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2142, N'筠连县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2143, N'兴文县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2144, N'屏山县', 247)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2145, N'广安区', 248)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2146, N'岳池县', 248)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2147, N'武胜县', 248)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2148, N'邻水县', 248)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2149, N'华蓥市', 248)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2150, N'通川区', 249)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2151, N'达县', 249)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2152, N'宣汉县', 249)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2153, N'开江县', 249)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2154, N'大竹县', 249)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2155, N'渠县', 249)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2156, N'万源市', 249)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2157, N'雨城区', 250)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2158, N'名山县', 250)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2159, N'荥经县', 250)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2160, N'汉源县', 250)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2161, N'石棉县', 250)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2162, N'天全县', 250)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2163, N'芦山县', 250)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2164, N'宝兴县', 250)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2165, N'巴州区', 251)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2166, N'通江县', 251)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2167, N'南江县', 251)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2168, N'平昌县', 251)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2169, N'雁江区', 252)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2170, N'安岳县', 252)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2171, N'乐至县', 252)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2172, N'简阳市', 252)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2173, N'汶川县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2174, N'理县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2175, N'茂县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2176, N'松潘县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2177, N'九寨沟县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2178, N'金川县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2179, N'小金县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2180, N'黑水县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2181, N'马尔康县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2182, N'壤塘县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2183, N'阿坝县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2184, N'若尔盖县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2185, N'红原县', 253)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2186, N'康定县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2187, N'泸定县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2188, N'丹巴县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2189, N'九龙县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2190, N'雅江县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2191, N'道孚县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2192, N'炉霍县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2193, N'甘孜县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2194, N'新龙县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2195, N'德格县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2196, N'白玉县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2197, N'石渠县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2198, N'色达县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2199, N'理塘县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2200, N'巴塘县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2201, N'乡城县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2202, N'稻城县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2203, N'得荣县', 254)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2204, N'西昌市', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2205, N'木里藏族自治县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2206, N'盐源县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2207, N'德昌县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2208, N'会理县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2209, N'会东县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2210, N'宁南县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2211, N'普格县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2212, N'布拖县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2213, N'金阳县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2214, N'昭觉县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2215, N'喜德县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2216, N'冕宁县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2217, N'越西县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2218, N'甘洛县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2219, N'美姑县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2220, N'雷波县', 255)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2221, N'南明区', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2222, N'云岩区', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2223, N'花溪区', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2224, N'乌当区', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2225, N'白云区', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2226, N'小河区', 256)
GO
print 'Processed 2200 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2227, N'开阳县', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2228, N'息烽县', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2229, N'修文县', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2230, N'清镇市', 256)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2231, N'钟山区', 257)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2232, N'六枝特区', 257)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2233, N'水城县', 257)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2234, N'盘县', 257)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2235, N'红花岗区', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2236, N'汇川区', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2237, N'遵义县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2238, N'桐梓县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2239, N'绥阳县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2240, N'正安县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2241, N'道真仡佬族苗族自治县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2242, N'务川仡佬族苗族自治县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2243, N'凤冈县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2244, N'湄潭县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2245, N'余庆县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2246, N'习水县', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2247, N'赤水市', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2248, N'仁怀市', 258)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2249, N'西秀区', 259)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2250, N'平坝县', 259)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2251, N'普定县', 259)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2252, N'镇宁布依族苗族自治县', 259)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2253, N'关岭布依族苗族自治县', 259)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2254, N'紫云苗族布依族自治县', 259)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2255, N'铜仁市', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2256, N'江口县', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2257, N'玉屏侗族自治县', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2258, N'石阡县', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2259, N'思南县', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2260, N'印江土家族苗族自治县', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2261, N'德江县', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2262, N'沿河土家族自治县', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2263, N'松桃苗族自治县', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2264, N'万山特区', 260)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2265, N'兴义市', 261)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2266, N'兴仁县', 261)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2267, N'普安县', 261)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2268, N'晴隆县', 261)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2269, N'贞丰县', 261)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2270, N'望谟县', 261)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2271, N'册亨县', 261)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2272, N'安龙县', 261)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2273, N'毕节市', 262)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2274, N'大方县', 262)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2275, N'黔西县', 262)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2276, N'金沙县', 262)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2277, N'织金县', 262)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2278, N'纳雍县', 262)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2279, N'威宁彝族回族苗族自治县', 262)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2280, N'赫章县', 262)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2281, N'凯里市', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2282, N'黄平县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2283, N'施秉县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2284, N'三穗县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2285, N'镇远县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2286, N'岑巩县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2287, N'天柱县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2288, N'锦屏县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2289, N'剑河县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2290, N'台江县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2291, N'黎平县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2292, N'榕江县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2293, N'从江县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2294, N'雷山县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2295, N'麻江县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2296, N'丹寨县', 263)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2297, N'都匀市', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2298, N'福泉市', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2299, N'荔波县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2300, N'贵定县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2301, N'瓮安县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2302, N'独山县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2303, N'平塘县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2304, N'罗甸县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2305, N'长顺县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2306, N'龙里县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2307, N'惠水县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2308, N'三都水族自治县', 264)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2309, N'五华区', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2310, N'盘龙区', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2311, N'官渡区', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2312, N'西山区', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2313, N'东川区', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2314, N'呈贡县', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2315, N'晋宁县', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2316, N'富民县', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2317, N'宜良县', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2318, N'石林彝族自治县', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2319, N'嵩明县', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2320, N'禄劝彝族苗族自治县', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2321, N'寻甸回族彝族自治县', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2322, N'安宁市', 265)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2323, N'麒麟区', 266)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2324, N'马龙县', 266)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2325, N'陆良县', 266)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2326, N'师宗县', 266)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2327, N'罗平县', 266)
GO
print 'Processed 2300 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2328, N'富源县', 266)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2329, N'会泽县', 266)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2330, N'沾益县', 266)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2331, N'宣威市', 266)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2332, N'红塔区', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2333, N'江川县', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2334, N'澄江县', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2335, N'通海县', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2336, N'华宁县', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2337, N'易门县', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2338, N'峨山彝族自治县', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2339, N'新平彝族傣族自治县', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2340, N'元江哈尼族彝族傣族自治县', 267)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2341, N'隆阳区', 268)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2342, N'施甸县', 268)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2343, N'腾冲县', 268)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2344, N'龙陵县', 268)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2345, N'昌宁县', 268)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2346, N'昭阳区', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2347, N'鲁甸县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2348, N'巧家县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2349, N'盐津县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2350, N'大关县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2351, N'永善县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2352, N'绥江县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2353, N'镇雄县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2354, N'彝良县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2355, N'威信县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2356, N'水富县', 269)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2357, N'古城区', 270)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2358, N'玉龙纳西族自治县', 270)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2359, N'永胜县', 270)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2360, N'华坪县', 270)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2361, N'宁蒗彝族自治县', 270)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2362, N'翠云区', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2363, N'普洱哈尼族彝族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2364, N'墨江哈尼族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2365, N'景东彝族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2366, N'景谷傣族彝族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2367, N'镇沅彝族哈尼族拉祜族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2368, N'江城哈尼族彝族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2369, N'孟连傣族拉祜族佤族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2370, N'澜沧拉祜族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2371, N'西盟佤族自治县', 271)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2372, N'临翔区', 272)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2373, N'凤庆县', 272)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2374, N'云县', 272)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2375, N'永德县', 272)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2376, N'镇康县', 272)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2377, N'双江拉祜族佤族布朗族傣族自治县', 272)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2378, N'耿马傣族佤族自治县', 272)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2379, N'沧源佤族自治县', 272)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2380, N'楚雄市', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2381, N'双柏县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2382, N'牟定县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2383, N'南华县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2384, N'姚安县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2385, N'大姚县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2386, N'永仁县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2387, N'元谋县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2388, N'武定县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2389, N'禄丰县', 273)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2390, N'个旧市', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2391, N'开远市', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2392, N'蒙自县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2393, N'屏边苗族自治县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2394, N'建水县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2395, N'石屏县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2396, N'弥勒县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2397, N'泸西县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2398, N'元阳县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2399, N'红河县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2400, N'金平苗族瑶族傣族自治县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2401, N'绿春县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2402, N'河口瑶族自治县', 274)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2403, N'文山县', 275)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2404, N'砚山县', 275)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2405, N'西畴县', 275)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2406, N'麻栗坡县', 275)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2407, N'马关县', 275)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2408, N'丘北县', 275)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2409, N'广南县', 275)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2410, N'富宁县', 275)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2411, N'景洪市', 276)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2412, N'勐海县', 276)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2413, N'勐腊县', 276)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2414, N'大理市', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2415, N'漾濞彝族自治县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2416, N'祥云县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2417, N'宾川县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2418, N'弥渡县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2419, N'南涧彝族自治县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2420, N'巍山彝族回族自治县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2421, N'永平县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2422, N'云龙县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2423, N'洱源县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2424, N'剑川县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2425, N'鹤庆县', 277)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2426, N'瑞丽市', 278)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2427, N'潞西市', 278)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2428, N'梁河县', 278)
GO
print 'Processed 2400 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2429, N'盈江县', 278)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2430, N'陇川县', 278)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2431, N'泸水县', 279)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2432, N'福贡县', 279)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2433, N'贡山独龙族怒族自治县', 279)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2434, N'兰坪白族普米族自治县', 279)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2435, N'香格里拉县', 280)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2436, N'德钦县', 280)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2437, N'维西傈僳族自治县', 280)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2438, N'城关区', 281)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2439, N'林周县', 281)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2440, N'当雄县', 281)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2441, N'尼木县', 281)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2442, N'曲水县', 281)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2443, N'堆龙德庆县', 281)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2444, N'达孜县', 281)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2445, N'墨竹工卡县', 281)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2446, N'昌都县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2447, N'江达县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2448, N'贡觉县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2449, N'类乌齐县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2450, N'丁青县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2451, N'察雅县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2452, N'八宿县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2453, N'左贡县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2454, N'芒康县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2455, N'洛隆县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2456, N'边坝县', 282)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2457, N'乃东县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2458, N'扎囊县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2459, N'贡嘎县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2460, N'桑日县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2461, N'琼结县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2462, N'曲松县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2463, N'措美县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2464, N'洛扎县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2465, N'加查县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2466, N'隆子县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2467, N'错那县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2468, N'浪卡子县', 283)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2469, N'日喀则市', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2470, N'南木林县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2471, N'江孜县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2472, N'定日县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2473, N'萨迦县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2474, N'拉孜县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2475, N'昂仁县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2476, N'谢通门县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2477, N'白朗县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2478, N'仁布县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2479, N'康马县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2480, N'定结县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2481, N'仲巴县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2482, N'亚东县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2483, N'吉隆县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2484, N'聂拉木县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2485, N'萨嘎县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2486, N'岗巴县', 284)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2487, N'那曲县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2488, N'嘉黎县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2489, N'比如县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2490, N'聂荣县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2491, N'安多县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2492, N'申扎县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2493, N'索县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2494, N'班戈县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2495, N'巴青县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2496, N'尼玛县', 285)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2497, N'普兰县', 286)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2498, N'札达县', 286)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2499, N'噶尔县', 286)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2500, N'日土县', 286)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2501, N'革吉县', 286)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2502, N'改则县', 286)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2503, N'措勤县', 286)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2504, N'林芝县', 287)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2505, N'工布江达县', 287)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2506, N'米林县', 287)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2507, N'墨脱县', 287)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2508, N'波密县', 287)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2509, N'察隅县', 287)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2510, N'朗县', 287)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2511, N'新城区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2512, N'碑林区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2513, N'莲湖区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2514, N'灞桥区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2515, N'未央区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2516, N'雁塔区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2517, N'阎良区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2518, N'临潼区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2519, N'长安区', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2520, N'蓝田县', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2521, N'周至县', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2522, N'户县', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2523, N'高陵县', 288)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2524, N'王益区', 289)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2525, N'印台区', 289)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2526, N'耀州区', 289)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2527, N'宜君县', 289)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2528, N'渭滨区', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2529, N'金台区', 290)
GO
print 'Processed 2500 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2530, N'陈仓区', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2531, N'凤翔县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2532, N'岐山县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2533, N'扶风县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2534, N'眉县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2535, N'陇县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2536, N'千阳县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2537, N'麟游县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2538, N'凤县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2539, N'太白县', 290)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2540, N'秦都区', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2541, N'杨凌区', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2542, N'渭城区', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2543, N'三原县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2544, N'泾阳县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2545, N'乾县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2546, N'礼泉县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2547, N'永寿县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2548, N'彬县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2549, N'长武县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2550, N'旬邑县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2551, N'淳化县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2552, N'武功县', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2553, N'兴平市', 291)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2554, N'临渭区', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2555, N'华县', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2556, N'潼关县', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2557, N'大荔县', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2558, N'合阳县', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2559, N'澄城县', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2560, N'蒲城县', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2561, N'白水县', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2562, N'富平县', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2563, N'韩城市', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2564, N'华阴市', 292)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2565, N'宝塔区', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2566, N'延长县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2567, N'延川县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2568, N'子长县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2569, N'安塞县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2570, N'志丹县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2571, N'吴旗县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2572, N'甘泉县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2573, N'富县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2574, N'洛川县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2575, N'宜川县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2576, N'黄龙县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2577, N'黄陵县', 293)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2578, N'汉台区', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2579, N'南郑县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2580, N'城固县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2581, N'洋县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2582, N'西乡县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2583, N'勉县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2584, N'宁强县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2585, N'略阳县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2586, N'镇巴县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2587, N'留坝县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2588, N'佛坪县', 294)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2589, N'榆阳区', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2590, N'神木县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2591, N'府谷县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2592, N'横山县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2593, N'靖边县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2594, N'定边县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2595, N'绥德县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2596, N'米脂县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2597, N'佳县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2598, N'吴堡县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2599, N'清涧县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2600, N'子洲县', 295)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2601, N'汉滨区', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2602, N'汉阴县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2603, N'石泉县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2604, N'宁陕县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2605, N'紫阳县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2606, N'岚皋县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2607, N'平利县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2608, N'镇坪县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2609, N'旬阳县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2610, N'白河县', 296)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2611, N'商州区', 297)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2612, N'洛南县', 297)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2613, N'丹凤县', 297)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2614, N'商南县', 297)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2615, N'山阳县', 297)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2616, N'镇安县', 297)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2617, N'柞水县', 297)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2618, N'城关区', 298)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2619, N'七里河区', 298)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2620, N'西固区', 298)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2621, N'安宁区', 298)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2622, N'红古区', 298)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2623, N'永登县', 298)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2624, N'皋兰县', 298)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2625, N'榆中县', 298)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2626, N'金川区', 300)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2627, N'永昌县', 300)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2628, N'白银区', 301)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2629, N'平川区', 301)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2630, N'靖远县', 301)
GO
print 'Processed 2600 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2631, N'会宁县', 301)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2632, N'景泰县', 301)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2633, N'秦城区', 302)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2634, N'北道区', 302)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2635, N'清水县', 302)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2636, N'秦安县', 302)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2637, N'甘谷县', 302)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2638, N'武山县', 302)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2639, N'张家川回族自治县', 302)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2640, N'凉州区', 303)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2641, N'民勤县', 303)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2642, N'古浪县', 303)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2643, N'天祝藏族自治县', 303)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2644, N'甘州区', 304)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2645, N'肃南裕固族自治县', 304)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2646, N'民乐县', 304)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2647, N'临泽县', 304)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2648, N'高台县', 304)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2649, N'山丹县', 304)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2650, N'崆峒区', 305)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2651, N'泾川县', 305)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2652, N'灵台县', 305)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2653, N'崇信县', 305)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2654, N'华亭县', 305)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2655, N'庄浪县', 305)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2656, N'静宁县', 305)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2657, N'肃州区', 306)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2658, N'金塔县', 306)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2659, N'安西县', 306)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2660, N'肃北蒙古族自治县', 306)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2661, N'阿克塞哈萨克族自治县', 306)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2662, N'玉门市', 306)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2663, N'敦煌市', 306)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2664, N'西峰区', 307)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2665, N'庆城县', 307)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2666, N'环县', 307)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2667, N'华池县', 307)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2668, N'合水县', 307)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2669, N'正宁县', 307)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2670, N'宁县', 307)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2671, N'镇原县', 307)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2672, N'安定区', 308)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2673, N'通渭县', 308)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2674, N'陇西县', 308)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2675, N'渭源县', 308)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2676, N'临洮县', 308)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2677, N'漳县', 308)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2678, N'岷县', 308)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2679, N'武都区', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2680, N'成县', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2681, N'文县', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2682, N'宕昌县', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2683, N'康县', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2684, N'西和县', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2685, N'礼县', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2686, N'徽县', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2687, N'两当县', 309)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2688, N'临夏市', 310)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2689, N'临夏县', 310)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2690, N'康乐县', 310)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2691, N'永靖县', 310)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2692, N'广河县', 310)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2693, N'和政县', 310)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2694, N'东乡族自治县', 310)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2695, N'积石山保安族东乡族撒拉族自治县', 310)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2696, N'合作市', 311)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2697, N'临潭县', 311)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2698, N'卓尼县', 311)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2699, N'舟曲县', 311)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2700, N'迭部县', 311)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2701, N'玛曲县', 311)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2702, N'碌曲县', 311)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2703, N'夏河县', 311)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2704, N'城东区', 312)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2705, N'城中区', 312)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2706, N'城西区', 312)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2707, N'城北区', 312)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2708, N'大通回族土族自治县', 312)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2709, N'湟中县', 312)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2710, N'湟源县', 312)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2711, N'平安县', 313)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2712, N'民和回族土族自治县', 313)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2713, N'乐都县', 313)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2714, N'互助土族自治县', 313)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2715, N'化隆回族自治县', 313)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2716, N'循化撒拉族自治县', 313)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2717, N'门源回族自治县', 314)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2718, N'祁连县', 314)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2719, N'海晏县', 314)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2720, N'刚察县', 314)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2721, N'同仁县', 315)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2722, N'尖扎县', 315)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2723, N'泽库县', 315)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2724, N'河南蒙古族自治县', 315)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2725, N'共和县', 316)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2726, N'同德县', 316)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2727, N'贵德县', 316)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2728, N'兴海县', 316)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2729, N'贵南县', 316)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2730, N'玛沁县', 317)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2731, N'班玛县', 317)
GO
print 'Processed 2700 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2732, N'甘德县', 317)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2733, N'达日县', 317)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2734, N'久治县', 317)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2735, N'玛多县', 317)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2736, N'玉树县', 318)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2737, N'杂多县', 318)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2738, N'称多县', 318)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2739, N'治多县', 318)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2740, N'囊谦县', 318)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2741, N'曲麻莱县', 318)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2742, N'格尔木市', 319)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2743, N'德令哈市', 319)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2744, N'乌兰县', 319)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2745, N'都兰县', 319)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2746, N'天峻县', 319)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2747, N'兴庆区', 320)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2748, N'西夏区', 320)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2749, N'金凤区', 320)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2750, N'永宁县', 320)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2751, N'贺兰县', 320)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2752, N'灵武市', 320)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2753, N'大武口区', 321)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2754, N'惠农区', 321)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2755, N'平罗县', 321)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2756, N'利通区', 322)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2757, N'盐池县', 322)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2758, N'同心县', 322)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2759, N'青铜峡市', 322)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2760, N'原州区', 323)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2761, N'西吉县', 323)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2762, N'隆德县', 323)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2763, N'泾源县', 323)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2764, N'彭阳县', 323)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2765, N'沙坡头区', 324)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2766, N'中宁县', 324)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2767, N'海原县', 324)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2768, N'天山区', 325)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2769, N'沙依巴克区', 325)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2770, N'新市区', 325)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2771, N'水磨沟区', 325)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2772, N'头屯河区', 325)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2773, N'达坂城区', 325)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2774, N'东山区', 325)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2775, N'乌鲁木齐县', 325)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2776, N'独山子区', 326)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2777, N'克拉玛依区', 326)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2778, N'白碱滩区', 326)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2779, N'乌尔禾区', 326)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2780, N'吐鲁番市', 327)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2781, N'鄯善县', 327)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2782, N'托克逊县', 327)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2783, N'哈密市', 328)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2784, N'巴里坤哈萨克自治县', 328)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2785, N'伊吾县', 328)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2786, N'昌吉市', 329)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2787, N'阜康市', 329)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2788, N'米泉市', 329)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2789, N'呼图壁县', 329)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2790, N'玛纳斯县', 329)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2791, N'奇台县', 329)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2792, N'吉木萨尔县', 329)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2793, N'木垒哈萨克自治县', 329)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2794, N'博乐市', 330)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2795, N'精河县', 330)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2796, N'温泉县', 330)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2797, N'库尔勒市', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2798, N'轮台县', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2799, N'尉犁县', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2800, N'若羌县', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2801, N'且末县', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2802, N'焉耆回族自治县', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2803, N'和静县', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2804, N'和硕县', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2805, N'博湖县', 331)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2806, N'阿克苏市', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2807, N'温宿县', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2808, N'库车县', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2809, N'沙雅县', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2810, N'新和县', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2811, N'拜城县', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2812, N'乌什县', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2813, N'阿瓦提县', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2814, N'柯坪县', 332)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2815, N'阿图什市', 333)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2816, N'阿克陶县', 333)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2817, N'阿合奇县', 333)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2818, N'乌恰县', 333)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2819, N'喀什市', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2820, N'疏附县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2821, N'疏勒县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2822, N'英吉沙县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2823, N'泽普县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2824, N'莎车县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2825, N'叶城县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2826, N'麦盖提县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2827, N'岳普湖县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2828, N'伽师县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2829, N'巴楚县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2830, N'塔什库尔干塔吉克自治县', 334)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2831, N'和田市', 335)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2832, N'和田县', 335)
GO
print 'Processed 2800 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2833, N'墨玉县', 335)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2834, N'皮山县', 335)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2835, N'洛浦县', 335)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2836, N'策勒县', 335)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2837, N'于田县', 335)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2838, N'民丰县', 335)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2839, N'伊宁市', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2840, N'奎屯市', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2841, N'伊宁县', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2842, N'察布查尔锡伯自治县', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2843, N'霍城县', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2844, N'巩留县', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2845, N'新源县', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2846, N'昭苏县', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2847, N'特克斯县', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2848, N'尼勒克县', 336)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2849, N'塔城市', 337)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2850, N'乌苏市', 337)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2851, N'额敏县', 337)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2852, N'沙湾县', 337)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2853, N'托里县', 337)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2854, N'裕民县', 337)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2855, N'和布克赛尔蒙古自治县', 337)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2856, N'阿勒泰市', 338)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2857, N'布尔津县', 338)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2858, N'富蕴县', 338)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2859, N'福海县', 338)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2860, N'哈巴河县', 338)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2861, N'青河县', 338)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2862, N'吉木乃县', 338)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2863, N'石碣镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2864, N'石龙镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2865, N'茶山镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2866, N'石排镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2867, N'企石镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2868, N'横沥镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2869, N'桥头镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2870, N'谢岗镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2871, N'东坑镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2872, N'常平镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2873, N'寮步镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2874, N'大朗镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2875, N'黄江镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2876, N'清溪镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2877, N'塘厦镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2878, N'凤岗镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2879, N'长安镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2880, N'虎门镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2881, N'厚街镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2882, N'沙田镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2883, N'道滘镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2884, N'洪梅镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2885, N'麻涌镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2886, N'中堂镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2887, N'高埗镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2888, N'樟木头镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2889, N'大岭山镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2890, N'望牛墩镇', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2891, N'港口镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2892, N'三角镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2893, N'民众镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2894, N'南朗镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2895, N'三乡镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2896, N'坦洲镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2897, N'神湾镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2898, N'板芙镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2899, N'大涌镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2900, N'沙溪镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2901, N'横栏镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2902, N'古镇镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2903, N'小榄镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2904, N'东凤镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2905, N'南头镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2906, N'阜沙镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2907, N'黄圃镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2908, N'东升镇', 214)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2909, N'市区', 339)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2910, N'市区', 340)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2911, N'市区', 341)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2912, N'市区', 342)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2913, N'莞城区', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2914, N'万江区', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2915, N'东城区', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2916, N'南城区', 213)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2917, N'郭河镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2918, N'郑场镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2919, N'西流河镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2920, N'毛嘴镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2921, N'剅河镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2922, N'三伏潭镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2923, N'长埫口镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2924, N'彭场镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2925, N'沙湖镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2926, N'杨林尾镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2927, N'张沟镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2928, N'沔城回族镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2929, N'通海口镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2930, N'陈场镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2931, N'胡场镇', 351)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2932, N'竹根滩镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2933, N'渔洋镇', 352)
GO
print 'Processed 2900 total records'
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2934, N'老新镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2935, N'龙湾镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2936, N'张金镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2937, N'浩口镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2938, N'熊口镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2939, N'积玉口镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2940, N'王场镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2941, N'高石碑镇', 352)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2942, N'多宝镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2943, N'拖市镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2944, N'张港镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2945, N'蒋场镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2946, N'汪场镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2947, N'渔薪镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2948, N'黄潭镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2949, N'横林镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2950, N'彭市镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2951, N'麻洋镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2952, N'多祥镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2953, N'干驿镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2954, N'马湾镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2955, N'卢市镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2956, N'小板镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2957, N'九真镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2958, N'皂市镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2959, N'胡市镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2960, N'石河镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2961, N'佛子山镇', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2962, N'净潭乡', 353)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2963, N'松柏镇', 182)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2964, N'阳曰镇', 182)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2965, N'红坪镇', 182)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2966, N'木鱼镇', 182)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2967, N'新华乡', 182)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2968, N'宋洛乡', 182)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2969, N'九湖乡', 182)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2970, N'下谷坪土家族乡', 182)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2971, N'弋江区', 99)
INSERT [dbo].[S_District] ([districtId], [districtName], [cityId]) VALUES (2972, N'市区', 354)
/****** Object:  Table [dbo].[ShopSeriesNumber]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShopSeriesNumber]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShopSeriesNumber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[number] [varchar](128) NOT NULL,
	[areaManagerid] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopSeriesNumber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopSellerRole]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShopSellerRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShopSellerRole](
	[roleName] [varchar](50) NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopSellerRole] PRIMARY KEY CLUSTERED 
(
	[roleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpecialRewardPolicy]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecialRewardPolicy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SpecialRewardPolicy](
	[policyId] [int] IDENTITY(1,1) NOT NULL,
	[beginTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[status] [tinyint] NOT NULL,
	[editTime] [datetime] NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SpecialRewardPolicy] PRIMARY KEY CLUSTERED 
(
	[policyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SNRecycleDetail]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SNRecycleDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SNRecycleDetail](
	[id] [int] NOT NULL,
	[recycleTaskId] [int] NOT NULL,
	[SN] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[snPrefix] [varchar](32) NULL,
	[snValue] [int] NULL,
	[userid] [int] NULL,
	[companyname] [varchar](50) NULL,
	[datetime] [datetime] NULL,
	[userjugestatus] [int] NULL,
	[snLast2Char] [varchar](50) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SNRecycleDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[recycleTaskId] ASC,
	[SN] ASC,
	[status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNRecycle]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SNRecycle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SNRecycle](
	[recycleTaskId] [int] IDENTITY(1,1) NOT NULL,
	[orderNumber] [varchar](50) NULL,
	[platformId] [int] NULL,
	[recylceCount] [int] NULL,
	[recylceFailedCount] [int] NULL,
	[reclyceTime] [datetime] NULL,
	[managerUsreName] [varchar](128) NULL,
	[platformName] [varchar](50) NULL,
	[isJobFinished] [bit] NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SNRecycle] PRIMARY KEY CLUSTERED 
(
	[recycleTaskId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNImport]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SNImport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SNImport](
	[importId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[sellerId] [int] NOT NULL,
	[sellTime] [datetime] NOT NULL,
	[score] [int] NOT NULL,
	[productVesionId] [int] NOT NULL,
	[productVesionName] [varchar](50) NOT NULL,
	[productExProperties] [varchar](128) NOT NULL,
	[productSerialId] [int] NOT NULL,
	[productSerialName] [varchar](50) NOT NULL,
	[productLineId] [int] NOT NULL,
	[productLineName] [varchar](50) NOT NULL,
	[importTime] [datetime] NOT NULL,
	[platformProviderManagerId] [int] NOT NULL,
	[areaManagerId] [int] NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[sn] [varchar](50) NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_SNImport] PRIMARY KEY CLUSTERED 
(
	[importId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEMProperty]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SEMProperty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SEMProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[propertyid] [int] NOT NULL,
	[createtime] [datetime] NOT NULL,
	[begintime] [datetime] NOT NULL,
	[endtime] [datetime] NOT NULL,
	[status] [tinyint] NOT NULL,
	[SEMProperty2_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SEMProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ShopScore]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShopScore]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShopScore](
	[shopID] [varchar](50) NOT NULL,
	[total] [bigint] NULL,
	[exchange] [bigint] NULL,
	[remain] [bigint] NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopScore] PRIMARY KEY CLUSTERED 
(
	[shopID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PolicyCategory]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PolicyCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.PolicyCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Policy]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Policy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Policy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[title] [varchar](100) NOT NULL,
	[description] [varchar](100) NULL,
	[filePath] [varchar](100) NOT NULL,
	[type] [varchar](20) NULL,
	[categoryId] [int] NULL,
	[createTime] [datetime] NULL,
	[roleId] [int] NULL,
 CONSTRAINT [PK_dbo.Policy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlatformRecognizedConfirmation]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlatformRecognizedConfirmation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PlatformRecognizedConfirmation](
	[confirmedId] [int] IDENTITY(1,1) NOT NULL,
	[managerId] [int] NOT NULL,
	[recognizedMoney] [decimal](18, 0) NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[confirmedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PlatformRecognizedConfirmation] PRIMARY KEY CLUSTERED 
(
	[confirmedId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MarketingChannel]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MarketingChannel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MarketingChannel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filePath] [varchar](100) NOT NULL,
	[linkUrl] [varchar](100) NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[createTime] [datetime] NOT NULL,
	[roleId] [int] NULL,
 CONSTRAINT [PK_dbo.MarketingChannel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManagerRole]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManagerRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ManagerRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NOT NULL,
	[description] [varchar](128) NULL,
 CONSTRAINT [PK_dbo.ManagerRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ManagerRole] ON
INSERT [dbo].[ManagerRole] ([id], [name], [description]) VALUES (3, N'平台商', N'平台商')
INSERT [dbo].[ManagerRole] ([id], [name], [description]) VALUES (4, N'区域管理员', N'区域管理员')
INSERT [dbo].[ManagerRole] ([id], [name], [description]) VALUES (5, N'大区域管理员', N'大区域管理员')
SET IDENTITY_INSERT [dbo].[ManagerRole] OFF
/****** Object:  Table [dbo].[AgreementApproveResult]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgreementApproveResult]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AgreementApproveResult](
	[approveResult] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.AgreementApproveResult] PRIMARY KEY CLUSTERED 
(
	[approveResult] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FreeTrialCategory]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FreeTrialCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FreeTrialCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[createTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.FreeTrialCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExProperty_Version]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExProperty_Version]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExProperty_Version](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[exPropertyId] [int] NOT NULL,
	[versionId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ExProperty_Version] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EC_Complain]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EC_Complain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EC_Complain](
	[complainId] [int] IDENTITY(1,1) NOT NULL,
	[complainReason] [varchar](256) NULL,
	[complainTime] [datetime] NULL,
	[plaintiffUserId] [int] NOT NULL,
	[status] [varchar](128) NULL,
	[adjudgement] [varchar](128) NULL,
	[adjudgementReport] [varchar](256) NULL,
	[adjudgementTime] [datetime] NULL,
	[attachment] [varchar](256) NULL,
	[shopURL] [varchar](256) NULL,
	[company] [varchar](128) NULL,
	[defendantCompany] [varchar](128) NULL,
 CONSTRAINT [PK_dbo.EC_Complain] PRIMARY KEY CLUSTERED 
(
	[complainId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [nvarchar](10) NOT NULL,
	[LanguageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Languages] ON
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (1, N'en', N'English')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (2, N'ru', N'Russian')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (3, N'es', N'Spanish')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (4, N'tr', N'Turkish')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (5, N'de', N'German')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (6, N'zh-CN', N'Chinese (Simplified)')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (7, N'it', N'Italian')
INSERT [dbo].[Languages] ([Id], [LanguageId], [LanguageName]) VALUES (8, N'pt', N'Portuguese')
SET IDENTITY_INSERT [dbo].[Languages] OFF
/****** Object:  Table [dbo].[Region]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Region](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Region] ON
INSERT [dbo].[Region] ([Id], [Name], [CreateTime]) VALUES (1, N'华北', CAST(0x0000A61E00E8B69C AS DateTime))
INSERT [dbo].[Region] ([Id], [Name], [CreateTime]) VALUES (2, N'华中', CAST(0x0000A61E00000000 AS DateTime))
INSERT [dbo].[Region] ([Id], [Name], [CreateTime]) VALUES (3, N'东北', CAST(0x0000A61E00000000 AS DateTime))
INSERT [dbo].[Region] ([Id], [Name], [CreateTime]) VALUES (4, N'华东', CAST(0x0000A62800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Region] OFF
/****** Object:  Table [dbo].[VersionInfo]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VersionInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VersionInfo](
	[Version] [bigint] NOT NULL,
	[AppliedOn] [datetime] NULL,
	[Description] [nvarchar](1024) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VersionInfo]') AND name = N'UC_Version')
CREATE UNIQUE CLUSTERED INDEX [UC_Version] ON [dbo].[VersionInfo] 
(
	[Version] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160602140000, CAST(0x0000A61B0081E520 AS DateTime), N'AocDB_20160602_140000_Initial')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160603113000, CAST(0x0000A61B0081E520 AS DateTime), N'AocDB_20160603_113000_Permissions')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160603170400, CAST(0x0000A61A00AD38EC AS DateTime), N'AocIPDB_20160603_170400_Initial')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160603185500, CAST(0x0000A61A00B48868 AS DateTime), N'AocDB_20160603_185500_ManagerAccountStatusInt16')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160604072600, CAST(0x0000A61B0081E520 AS DateTime), N'AocDB_20160604_072600_UserPreferences')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160604150000, CAST(0x0000A61B0079D8F8 AS DateTime), N'AocDB_20160604_150000_DeleteSNGenerateCount')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160607135500, CAST(0x0000A61E0064E09C AS DateTime), N'AocDB_20160607_135500_Region')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160615092200, CAST(0x0000A62600914ED4 AS DateTime), N'AocDB_20160615_092200_MultiTenant')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160615182200, CAST(0x0000A62600AE3E40 AS DateTime), N'AocDB_20160615_182200_MultiTenant')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160617170400, CAST(0x0000A62B00A79658 AS DateTime), N'AocDB_20160617_170400_Initial')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (20160620170400, CAST(0x0000A62B00BB074C AS DateTime), N'AocDB_20160620_170400_RolePermissions')
/****** Object:  Table [dbo].[Users]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Source] [nvarchar](4) NOT NULL,
	[PasswordHash] [nvarchar](86) NOT NULL,
	[PasswordSalt] [nvarchar](10) NOT NULL,
	[InsertDate] [datetime] NOT NULL,
	[InsertUserId] [int] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserId] [int] NULL,
	[LastDirectoryUpdate] [datetime] NULL,
	[IsActive] [smallint] NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [LastDirectoryUpdate], [IsActive], [TenantId]) VALUES (1, N'admin', N'admin', N'admin@dummy.com', N'site', N'rfqpSPYs0ekFlPyvIRTXsdhE/qrTHFF+kKsAUla7pFkXL4BgLGlTe89GDX5DBysenMDj8AqbIZPybqvusyCjwQ', N'hJf_F', CAST(0x0000A2A600000000 AS DateTime), 1, CAST(0x0000A6260119DCE6 AS DateTime), 1, NULL, 1, 4)
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [LastDirectoryUpdate], [IsActive], [TenantId]) VALUES (2, N'mnt', N'MNT', NULL, N'site', N'cXrJkpd7KkTxoT+GQP/ULIxIJ9LIhFnvwninFRqIqs/knZIBkLF7D82Q8KV9hXW94evuikCcwK22beg55tXguA', N'9]r4)', CAST(0x0000A61E013B7962 AS DateTime), 1, CAST(0x0000A6260119E5FF AS DateTime), 1, NULL, 1, 1)
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [LastDirectoryUpdate], [IsActive], [TenantId]) VALUES (3, N'factory', N'factory', NULL, N'site', N'wBdBx2/VjOnQdCCLq6ScdBTcn8w/rqT6varoG2jwVoWlJLucTivpA71jEaDaRTap3K6iLDkirbG56Ffq+XVloA', N'-lI|g', CAST(0x0000A61F00E5FBDE AS DateTime), 1, CAST(0x0000A6260119E1BF AS DateTime), 1, NULL, 1, 4)
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [LastDirectoryUpdate], [IsActive], [TenantId]) VALUES (4, N'transaction', N'transaction', NULL, N'site', N'R6f+8ld5w/8z5ZwEmqvlJd1ZLi1lUaaMhahXymjcW6t5dl+JcQFrcpYsliqA5CRvd1jrKO7QMoY0hmUoSBptww', N')n&+k', CAST(0x0000A61F00EABA32 AS DateTime), 1, CAST(0x0000A6260119E9E1 AS DateTime), 1, NULL, 1, 4)
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [LastDirectoryUpdate], [IsActive], [TenantId]) VALUES (5, N'tv', N'TV', NULL, N'site', N'lnAfB8f0vBLQ0abkr2iaIhMHUkw+4JytEN9bmwVflbAK8JimV3hGs4mzgNTY6Js7DIsKsVIcAN2Nso7cW4Yw/w', N'X9c@B', CAST(0x0000A626011A0D5A AS DateTime), 1, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [LastDirectoryUpdate], [IsActive], [TenantId]) VALUES (6, N'si', N'SI', NULL, N'site', N'lGhK/yKZSf5NJZ2LIy9nAMkOGMoGjsjus1+2Bs7HjbVHtsLHPlLWpqWDnFERG5BCEgp6FOSkwZ5pKS0XmwnOKQ', N'U>60m', CAST(0x0000A626011A2159 AS DateTime), 1, NULL, NULL, NULL, 1, 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[SNComplain]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SNComplain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SNComplain](
	[complainId] [int] IDENTITY(1,1) NOT NULL,
	[complainReason] [varchar](256) NULL,
	[complainTime] [datetime] NULL,
	[sn] [varchar](50) NOT NULL,
	[snScore] [int] NULL,
	[snProductVersionId] [int] NOT NULL,
	[plaintiffUserId] [int] NOT NULL,
	[defendantUserId] [int] NOT NULL,
	[defendantSNImportRecordId] [int] NULL,
	[status] [varchar](128) NULL,
	[adjudgement] [varchar](128) NULL,
	[adjudgementReport] [varchar](256) NULL,
	[adjudgementTime] [datetime] NULL,
	[punishScore] [int] NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SNComplain] PRIMARY KEY CLUSTERED 
(
	[complainId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatusCollection]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusCollection]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StatusCollection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_StatusCollection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusCollection]') AND name = N'PK_dbo.Name')
CREATE UNIQUE NONCLUSTERED INDEX [PK_dbo.Name] ON [dbo].[StatusCollection] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StatusCollection] ON
INSERT [dbo].[StatusCollection] ([Id], [Name], [CreateTime]) VALUES (1, N'正常', CAST(0x0000A62801365179 AS DateTime))
INSERT [dbo].[StatusCollection] ([Id], [Name], [CreateTime]) VALUES (2, N'未激活', CAST(0x0000A62801366496 AS DateTime))
INSERT [dbo].[StatusCollection] ([Id], [Name], [CreateTime]) VALUES (3, N'启用', CAST(0x0000A62801366AFD AS DateTime))
INSERT [dbo].[StatusCollection] ([Id], [Name], [CreateTime]) VALUES (4, N'禁用', CAST(0x0000A62801366EAF AS DateTime))
INSERT [dbo].[StatusCollection] ([Id], [Name], [CreateTime]) VALUES (5, N'删除', CAST(0x0000A628013678F8 AS DateTime))
INSERT [dbo].[StatusCollection] ([Id], [Name], [CreateTime]) VALUES (6, N'已生效', CAST(0x0000A62801367EF5 AS DateTime))
INSERT [dbo].[StatusCollection] ([Id], [Name], [CreateTime]) VALUES (7, N'已过期', CAST(0x0000A62801368280 AS DateTime))
SET IDENTITY_INSERT [dbo].[StatusCollection] OFF
/****** Object:  Table [dbo].[UserPunish]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPunish]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserPunish](
	[punishmentId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[socre] [int] NULL,
	[time] [datetime] NULL,
	[managerUserName] [varchar](128) NOT NULL,
	[reason] [varchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.UserPunish] PRIMARY KEY CLUSTERED 
(
	[punishmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPreferences]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPreferences]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserPreferences](
	[UserPreferenceId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PreferenceType] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserPreferences] PRIMARY KEY CLUSTERED 
(
	[UserPreferenceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UserPreferences]') AND name = N'IX_UserPreferences_UserId_PreferenceType_Name')
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserPreferences_UserId_PreferenceType_Name] ON [dbo].[UserPreferences] 
(
	[UserId] ASC,
	[PreferenceType] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingMaterial]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrainingMaterial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrainingMaterial](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[fileType] [varchar](20) NULL,
	[filePath] [nvarchar](max) NULL,
	[fileAmount] [int] NULL,
	[viewAmount] [int] NULL,
	[parentFolderId] [int] NULL,
	[fileSize] [varchar](10) NULL,
	[modifiedDate] [datetime] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TrainingMaterial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tenants]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tenants]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tenants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Tenants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Tenants] ON
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (1, N'MNT Tenant')
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (2, N'TV Tenant')
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (3, N'SI Tenant')
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (4, N'NULL Tenant')
SET IDENTITY_INSERT [dbo].[Tenants] OFF
/****** Object:  Table [dbo].[SysUsreActionRecord]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUsreActionRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysUsreActionRecord](
	[recordId] [int] NOT NULL,
	[userRole] [int] NULL,
	[userName] [varchar](128) NULL,
	[actionName] [varchar](64) NULL,
	[actionData] [varchar](2048) NULL,
	[remark] [varchar](1024) NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_dbo.SysUsreActionRecord] PRIMARY KEY CLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysRewardRecord]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysRewardRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysRewardRecord](
	[id] [int] NOT NULL,
	[userId] [int] NULL,
	[userConfirmTime] [datetime] NULL,
	[money] [decimal](8, 2) NULL,
	[reason] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.SysRewardRecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysMessageHistory]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMessageHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysMessageHistory](
	[taskId] [int] IDENTITY(1,1) NOT NULL,
	[sendStatus] [bit] NULL,
	[numberOfFailures] [int] NULL,
	[numberOfSuccessful] [int] NULL,
	[createTime] [datetime] NULL,
	[messageType] [varchar](20) NULL,
 CONSTRAINT [PK_dbo.SysMessageHistory] PRIMARY KEY CLUSTERED 
(
	[taskId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysMessage]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMessage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysMessage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](128) NULL,
	[bodyUrl] [varchar](256) NULL,
	[body] [varchar](1024) NULL,
	[type] [varchar](50) NULL,
	[source] [varchar](50) NULL,
	[priority] [varchar](50) NULL,
	[sender] [varchar](128) NULL,
	[sendTime] [datetime] NOT NULL,
	[hasRead] [bit] NULL,
	[recipientUserName] [varchar](128) NULL,
	[taskId] [int] NULL,
 CONSTRAINT [PK_dbo.SysMessage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPermissions]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPermissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserPermissions](
	[UserPermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Grant] [bit] NOT NULL,
	[PermissionKey] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED 
(
	[UserPermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UserPermissions]') AND name = N'UQ_UserPermissions_UserId_PermissionKey')
CREATE UNIQUE NONCLUSTERED INDEX [UQ_UserPermissions_UserId_PermissionKey] ON [dbo].[UserPermissions] 
(
	[UserId] ASC,
	[PermissionKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserPermissions] ON
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (2, 4, 1, N'Administration:Translation')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (14, 2, 1, N'Aoc:General')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (18, 2, 1, N'Aoc:ProductSerial:Delete')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (19, 2, 1, N'Aoc:ProductSerial:Modify')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (20, 2, 1, N'Aoc:ProductSerial:View')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (21, 2, 1, N'Aoc:ScorePolicy:Modify')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (22, 2, 1, N'Aoc:ScorePolicy:Delete')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (23, 2, 1, N'Aoc:ScorePolicy:View')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (27, 2, 0, N'Northwind:Customer:Modify')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (28, 2, 0, N'Northwind:Customer:Delete')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (29, 2, 0, N'Northwind:Customer:View')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (30, 2, 1, N'Administration')
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [Grant], [PermissionKey]) VALUES (31, 2, 1, N'Aoc:ShopGrade:View')
SET IDENTITY_INSERT [dbo].[UserPermissions] OFF
/****** Object:  Table [dbo].[SpecialRewardPolicyDetail]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecialRewardPolicyDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SpecialRewardPolicyDetail](
	[itemId] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[productVersionId] [int] NOT NULL,
	[productVersionName] [varchar](50) NOT NULL,
	[platformProviderRewardMoney] [int] NOT NULL,
	[userRewardMoney] [int] NOT NULL,
	[productLineId] [int] NOT NULL,
	[productSerialId] [int] NOT NULL,
	[begintime] [datetime] NOT NULL,
	[endtime] [datetime] NOT NULL,
	[status] [tinyint] NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SpecialRewardPolicyDetail] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductExProperty]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductExProperty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductExProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[orderId] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductExProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductLine]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductLine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductLine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[createTime] [datetime] NOT NULL,
	[status] [nvarchar](6) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductLine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[ProductLine] ON
INSERT [dbo].[ProductLine] ([id], [name], [createTime], [status], [TenantId]) VALUES (1, N'MNT', CAST(0x0000A61B00000000 AS DateTime), N'1', 1)
INSERT [dbo].[ProductLine] ([id], [name], [createTime], [status], [TenantId]) VALUES (2, N'TV', CAST(0x0000A61B00000000 AS DateTime), N'1', 2)
INSERT [dbo].[ProductLine] ([id], [name], [createTime], [status], [TenantId]) VALUES (3, N'test', CAST(0x0000A62B00000000 AS DateTime), N'1', 1)
SET IDENTITY_INSERT [dbo].[ProductLine] OFF
/****** Object:  Table [dbo].[ProductForFreeTrail]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductForFreeTrail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductForFreeTrail](
	[trialId] [int] IDENTITY(1,1) NOT NULL,
	[productVesionId] [int] NOT NULL,
	[productVesionName] [varchar](50) NOT NULL,
	[productSerialId] [int] NOT NULL,
	[productSerialName] [varchar](50) NOT NULL,
	[productLineId] [int] NOT NULL,
	[productLineName] [varchar](50) NOT NULL,
	[beginTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[allowance] [int] NOT NULL,
	[createTime] [datetime] NOT NULL,
	[status] [varchar](50) NOT NULL,
	[category] [int] NOT NULL,
	[classification] [varchar](50) NULL,
	[limit] [nvarchar](150) NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductForFreeTrail] PRIMARY KEY CLUSTERED 
(
	[trialId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FreeTrialPolicy]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FreeTrialPolicy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FreeTrialPolicy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[filePath] [varchar](100) NULL,
	[swfPath] [varchar](100) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.FreeTrialPolicy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExchangeObject]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExchangeObject]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExchangeObject](
	[objectId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NOT NULL,
	[stock] [int] NOT NULL,
	[exchangeCountPerUser] [int] NULL,
	[scorePrice] [int] NOT NULL,
	[price] [decimal](18, 0) NULL,
	[picture] [varchar](64) NULL,
	[description] [varchar](1024) NULL,
	[objectStatus] [varchar](50) NULL,
	[createTime] [datetime] NULL,
	[exchangedCount] [int] NULL,
	[beginTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[category] [varchar](10) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ExchangeObject] PRIMARY KEY CLUSTERED 
(
	[objectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_Province]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_Province]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_Province](
	[provinceId] [int] NOT NULL,
	[provinceName] [varchar](50) NULL,
	[RegionId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.S_Province] PRIMARY KEY CLUSTERED 
(
	[provinceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (1, N'北京市', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (2, N'天津市', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (3, N'河北省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (4, N'山西省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (5, N'内蒙古自治区', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (6, N'辽宁省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (7, N'吉林省', 3)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (8, N'黑龙江省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (9, N'上海市', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (10, N'江苏省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (11, N'浙江省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (12, N'安徽省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (13, N'福建省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (14, N'江西省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (15, N'山东省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (16, N'河南省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (17, N'湖北省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (18, N'湖南省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (19, N'广东省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (20, N'广西壮族自治区', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (21, N'海南省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (22, N'重庆市', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (23, N'四川省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (24, N'贵州省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (25, N'云南省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (26, N'西藏自治区', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (27, N'陕西省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (28, N'甘肃省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (29, N'青海省', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (30, N'宁夏回族自治区', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (31, N'新疆维吾尔自治区', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (32, N'香港特别行政区', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (33, N'澳门特别行政区', 1)
INSERT [dbo].[S_Province] ([provinceId], [provinceName], [RegionId]) VALUES (34, N'台湾省', 1)
/****** Object:  Table [dbo].[ShopReviewRecordDetail]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShopReviewRecordDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShopReviewRecordDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[recordId] [int] NOT NULL,
	[reviewItemId] [int] NOT NULL,
	[score] [int] NOT NULL,
	[reviewTime] [datetime] NULL,
	[userId] [int] NOT NULL,
	[month] [int] NOT NULL,
	[year] [int] NOT NULL,
	[managerUserName] [int] NULL,
	[term] [varchar](50) NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopReviewRecordDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (1, N'系统管理员', 4)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (2, N'MNT管理员', 1)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (3, N'TV管理员', 2)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (4, N'工厂管理员', 4)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (5, N'物流管理员', 4)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (6, N'Transaction', 4)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (7, N'SI管理员', 3)
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[ShopGrade]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShopGrade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShopGrade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NULL,
	[name] [varchar](50) NULL,
	[maxSNNumber] [int] NULL,
	[maxStreetShopMoney] [decimal](18, 2) NULL,
	[maxFreeTrialCount] [int] NOT NULL,
	[status] [int] NOT NULL,
	[specialAmount] [int] NOT NULL,
	[order] [int] NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_dbo.ShopGrade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ShopGrade] ON
INSERT [dbo].[ShopGrade] ([Id], [parentId], [name], [maxSNNumber], [maxStreetShopMoney], [maxFreeTrialCount], [status], [specialAmount], [order], [TenantId]) VALUES (1, NULL, N'金牌店', 0, CAST(0.00 AS Decimal(18, 2)), 0, 1, 1, 1, 1)
INSERT [dbo].[ShopGrade] ([Id], [parentId], [name], [maxSNNumber], [maxStreetShopMoney], [maxFreeTrialCount], [status], [specialAmount], [order], [TenantId]) VALUES (2, NULL, N'皓月店', 0, CAST(0.00 AS Decimal(18, 2)), 0, 1, 1, 20, 2)
INSERT [dbo].[ShopGrade] ([Id], [parentId], [name], [maxSNNumber], [maxStreetShopMoney], [maxFreeTrialCount], [status], [specialAmount], [order], [TenantId]) VALUES (3, 1, N'JA', 0, CAST(0.00 AS Decimal(18, 2)), 2, 1, 2, 3, 1)
INSERT [dbo].[ShopGrade] ([Id], [parentId], [name], [maxSNNumber], [maxStreetShopMoney], [maxFreeTrialCount], [status], [specialAmount], [order], [TenantId]) VALUES (5, 2, N'HY', NULL, NULL, 2, 1, 2, 21, 2)
INSERT [dbo].[ShopGrade] ([Id], [parentId], [name], [maxSNNumber], [maxStreetShopMoney], [maxFreeTrialCount], [status], [specialAmount], [order], [TenantId]) VALUES (6, 1, N'JB', NULL, NULL, 5, 1, 5, 4, 1)
INSERT [dbo].[ShopGrade] ([Id], [parentId], [name], [maxSNNumber], [maxStreetShopMoney], [maxFreeTrialCount], [status], [specialAmount], [order], [TenantId]) VALUES (7, 1, N'JC', NULL, NULL, 5, 1, 2, 5, 1)
SET IDENTITY_INSERT [dbo].[ShopGrade] OFF
/****** Object:  Table [dbo].[SEMRewardPolicy]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SEMRewardPolicy](
	[policyId] [int] IDENTITY(1,1) NOT NULL,
	[shopGradeId] [int] NOT NULL,
	[totalAmount] [int] NOT NULL,
	[status] [tinyint] NOT NULL,
	[editTime] [datetime] NOT NULL,
	[begintime] [datetime] NOT NULL,
	[endtime] [datetime] NOT NULL,
	[amount] [nvarchar](150) NOT NULL,
	[maxScore] [int] NOT NULL,
	[notStreetReward] [decimal](8, 2) NOT NULL,
	[streetReward] [decimal](8, 2) NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SEMRewardPolicy] PRIMARY KEY CLUSTERED 
(
	[policyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[S_City]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_City]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_City](
	[cityId] [int] NOT NULL,
	[provinceId] [int] NULL,
	[cityName] [varchar](50) NULL,
	[areaCode] [varchar](10) NULL,
	[zipCode] [varchar](10) NULL,
 CONSTRAINT [PK_dbo.S_City] PRIMARY KEY CLUSTERED 
(
	[cityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (1, 1, N'北京市', N'010', N'100000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (2, 2, N'天津市', N'022', N'100000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (3, 3, N'石家庄市', N'0311', N'050000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (4, 3, N'唐山市', N'0315', N'063000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (5, 3, N'秦皇岛市', N'0335', N'066000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (6, 3, N'邯郸市', N'0310', N'056000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (7, 3, N'邢台市', N'0319', N'054000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (8, 3, N'保定市', N'0312', N'071000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (9, 3, N'张家口市', N'0313', N'075000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (10, 3, N'承德市', N'0314', N'067000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (11, 3, N'沧州市', N'0317', N'061000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (12, 3, N'廊坊市', N'0316', N'065000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (13, 3, N'衡水市', N'0318', N'053000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (14, 4, N'太原市', N'0351', N'030000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (15, 4, N'大同市', N'0352', N'037000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (16, 4, N'阳泉市', N'0353', N'045000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (17, 4, N'长治市', N'0355', N'046000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (18, 4, N'晋城市', N'0356', N'048000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (19, 4, N'朔州市', N'0349', N'036000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (20, 4, N'晋中市', N'0354', N'030600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (21, 4, N'运城市', N'0359', N'044000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (22, 4, N'忻州市', N'0350', N'034000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (23, 4, N'临汾市', N'0357', N'041000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (24, 4, N'吕梁市', N'0358', N'030500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (25, 5, N'呼和浩特市', N'0471', N'010000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (26, 5, N'包头市', N'0472', N'014000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (27, 30, N'乌海市', N'0473', N'016000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (28, 5, N'赤峰市', N'0476', N'024000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (29, 5, N'通辽市', N'0475', N'028000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (30, 5, N'鄂尔多斯市', N'0477', N'010300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (31, 5, N'呼伦贝尔市', N'0470', N'021000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (32, 5, N'巴彦淖尔市', N'0478', N'014400')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (33, 5, N'乌兰察布市', N'0474', N'011800')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (34, 5, N'兴安盟', N'0482', N'137500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (35, 5, N'锡林郭勒盟', N'0479', N'011100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (36, 5, N'阿拉善盟', N'0483', N'016000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (37, 6, N'沈阳市', N'024', N'110000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (38, 6, N'大连市', N'0411', N'116000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (39, 6, N'鞍山市', N'0412', N'114000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (40, 6, N'抚顺市', N'0413', N'113000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (41, 6, N'本溪市', N'0414', N'117000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (42, 6, N'丹东市', N'0415', N'118000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (43, 6, N'锦州市', N'0416', N'121000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (44, 6, N'营口市', N'0417', N'115000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (45, 6, N'阜新市', N'0418', N'123000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (46, 6, N'辽阳市', N'0419', N'111000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (47, 6, N'盘锦市', N'0427', N'124000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (48, 6, N'铁岭市', N'0410', N'112000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (49, 6, N'朝阳市', N'0421', N'122000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (50, 6, N'葫芦岛市', N'0429', N'125000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (51, 7, N'长春市', N'0431', N'130000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (52, 7, N'吉林市', N'0432', N'132000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (53, 7, N'四平市', N'0434', N'136000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (54, 7, N'辽源市', N'0437', N'136200')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (55, 7, N'通化市', N'0435', N'134000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (56, 7, N'白山市', N'0439', N'134300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (57, 7, N'松原市', N'0438', N'131100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (58, 7, N'白城市', N'0436', N'137000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (59, 7, N'延边朝鲜族自治州', N'0433', N'133000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (60, 8, N'哈尔滨市', N'0451', N'150000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (61, 8, N'齐齐哈尔市', N'0452', N'161000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (62, 8, N'鸡西市', N'0467', N'158100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (63, 8, N'鹤岗市', N'0468', N'154100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (64, 8, N'双鸭山市', N'0469', N'155100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (65, 8, N'大庆市', N'0459', N'163000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (66, 8, N'伊春市', N'0458', N'152300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (67, 8, N'佳木斯市', N'0454', N'154000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (68, 8, N'七台河市', N'0464', N'154600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (69, 8, N'牡丹江市', N'0453', N'157000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (70, 8, N'黑河市', N'0456', N'164300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (71, 8, N'绥化市', N'0455', N'152000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (72, 8, N'大兴安岭地区', N'0457', N'165000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (73, 9, N'上海市', N'021', N'200000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (74, 10, N'南京市', N'025', N'210000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (75, 10, N'无锡市', N'0510', N'214000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (76, 10, N'徐州市', N'0516', N'221000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (77, 10, N'常州市', N'0519', N'213000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (78, 10, N'苏州市', N'0512', N'215000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (79, 10, N'南通市', N'0513', N'226000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (80, 10, N'连云港市', N'0518', N'222000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (81, 10, N'淮安市', N'0517', N'223200')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (82, 10, N'盐城市', N'0515', N'224000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (83, 10, N'扬州市', N'0514', N'225000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (84, 10, N'镇江市', N'0511', N'212000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (85, 10, N'泰州市', N'0523', N'225300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (86, 10, N'宿迁市', N'0527', N'223800')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (87, 11, N'杭州市', N'0571', N'310000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (88, 11, N'宁波市', N'0574', N'315000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (89, 11, N'温州市', N'0577', N'325000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (90, 11, N'嘉兴市', N'0573', N'314000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (91, 11, N'湖州市', N'0572', N'313000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (92, 11, N'绍兴市', N'0575', N'312000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (93, 11, N'金华市', N'0579', N'321000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (94, 11, N'衢州市', N'0570', N'324000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (95, 11, N'舟山市', N'0580', N'316000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (96, 11, N'台州市', N'0576', N'318000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (97, 11, N'丽水市', N'0578', N'323000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (98, 12, N'合肥市', N'0551', N'230000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (99, 12, N'芜湖市', N'0553', N'241000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (100, 12, N'蚌埠市', N'0552', N'233000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (101, 12, N'淮南市', N'0554', N'232000')
GO
print 'Processed 100 total records'
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (102, 12, N'马鞍山市', N'0555', N'243000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (103, 12, N'淮北市', N'0561', N'235000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (104, 12, N'铜陵市', N'0562', N'244000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (105, 12, N'安庆市', N'0556', N'246000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (106, 12, N'黄山市', N'0559', N'242700')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (107, 12, N'滁州市', N'0550', N'239000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (108, 12, N'阜阳市', N'0558', N'236100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (109, 12, N'宿州市', N'0557', N'234100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (110, 12, N'巢湖市', N'0565', N'238000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (111, 12, N'六安市', N'0564', N'237000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (112, 12, N'亳州市', N'0567', N'236800')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (113, 12, N'池州市', N'0566', N'247100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (114, 12, N'宣城市', N'0563', N'366000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (115, 13, N'福州市', N'0591', N'350000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (116, 13, N'厦门市', N'0592', N'361000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (117, 13, N'莆田市', N'0594', N'351100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (118, 13, N'三明市', N'0598', N'365000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (119, 13, N'泉州市', N'0595', N'362000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (120, 13, N'漳州市', N'0596', N'363000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (121, 13, N'南平市', N'0599', N'353000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (122, 13, N'龙岩市', N'0597', N'364000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (123, 13, N'宁德市', N'0593', N'352100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (124, 14, N'南昌市', N'0791', N'330000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (125, 14, N'景德镇市', N'0798', N'333000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (126, 14, N'萍乡市', N'0799', N'337000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (127, 14, N'九江市', N'0792', N'332000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (128, 14, N'新余市', N'0790', N'338000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (129, 14, N'鹰潭市', N'0701', N'335000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (130, 14, N'赣州市', N'0797', N'341000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (131, 14, N'吉安市', N'0796', N'343000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (132, 14, N'宜春市', N'0795', N'336000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (133, 14, N'抚州市', N'0794', N'332900')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (134, 14, N'上饶市', N'0793', N'334000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (135, 15, N'济南市', N'0531', N'250000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (136, 15, N'青岛市', N'0532', N'266000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (137, 15, N'淄博市', N'0533', N'255000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (138, 15, N'枣庄市', N'0632', N'277100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (139, 15, N'东营市', N'0546', N'257000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (140, 15, N'烟台市', N'0535', N'264000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (141, 15, N'潍坊市', N'0536', N'261000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (142, 15, N'济宁市', N'0537', N'272100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (143, 15, N'泰安市', N'0538', N'271000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (144, 15, N'威海市', N'0631', N'265700')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (145, 15, N'日照市', N'0633', N'276800')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (146, 15, N'莱芜市', N'0634', N'271100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (147, 15, N'临沂市', N'0539', N'276000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (148, 15, N'德州市', N'0534', N'253000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (149, 15, N'聊城市', N'0635', N'252000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (150, 15, N'滨州市', N'0543', N'256600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (151, 15, N'荷泽市', N'0530', N'255000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (152, 16, N'郑州市', N'0371', N'450000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (153, 16, N'开封市', N'0378', N'475000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (154, 16, N'洛阳市', N'0379', N'471000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (155, 16, N'平顶山市', N'0375', N'467000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (156, 16, N'安阳市', N'0372', N'454900')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (157, 16, N'鹤壁市', N'0392', N'456600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (158, 16, N'新乡市', N'0373', N'453000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (159, 16, N'焦作市', N'0391', N'454100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (160, 16, N'濮阳市', N'0393', N'457000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (161, 16, N'许昌市', N'0374', N'461000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (162, 16, N'漯河市', N'0395', N'462000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (163, 16, N'三门峡市', N'0398', N'472000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (164, 16, N'南阳市', N'0377', N'473000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (165, 16, N'商丘市', N'0370', N'476000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (166, 16, N'信阳市', N'0376', N'464000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (167, 16, N'周口市', N'0394', N'466000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (168, 16, N'驻马店市', N'0396', N'463000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (169, 17, N'武汉市', N'027', N'430000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (170, 17, N'黄石市', N'0714', N'435000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (171, 17, N'十堰市', N'0719', N'442000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (172, 17, N'宜昌市', N'0717', N'443000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (173, 17, N'襄樊市', N'0710', N'441000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (174, 17, N'鄂州市', N'0711', N'436000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (175, 17, N'荆门市', N'0724', N'448000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (176, 17, N'孝感市', N'0712', N'432100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (177, 17, N'荆州市', N'0716', N'434000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (178, 17, N'黄冈市', N'0713', N'438000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (179, 17, N'咸宁市', N'0715', N'437000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (180, 17, N'随州市', N'0722', N'441300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (181, 17, N'恩施土家族苗族自治州', N'0718', N'445000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (182, 17, N'神农架', N'0719', N'442400')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (183, 18, N'长沙市', N'0731', N'410000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (184, 18, N'株洲市', N'0731', N'412000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (185, 18, N'湘潭市', N'0731', N'411100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (186, 18, N'衡阳市', N'0734', N'421000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (187, 18, N'邵阳市', N'0739', N'422000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (188, 18, N'岳阳市', N'0730', N'414000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (189, 18, N'常德市', N'0736', N'415000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (190, 18, N'张家界市', N'0744', N'427000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (191, 18, N'益阳市', N'0737', N'413000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (192, 18, N'郴州市', N'0735', N'423000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (193, 18, N'永州市', N'0746', N'425000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (194, 18, N'怀化市', N'0745', N'418000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (195, 18, N'娄底市', N'0738', N'417000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (196, 18, N'湘西土家族苗族自治州', N'0743', N'416000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (197, 19, N'广州市', N'020', N'510000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (198, 19, N'韶关市', N'0751', N'521000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (199, 19, N'深圳市', N'0755', N'518000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (200, 19, N'珠海市', N'0756', N'519000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (201, 19, N'汕头市', N'0754', N'515000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (202, 19, N'佛山市', N'0757', N'528000')
GO
print 'Processed 200 total records'
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (203, 19, N'江门市', N'0750', N'529000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (204, 19, N'湛江市', N'0759', N'524000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (205, 19, N'茂名市', N'0668', N'525000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (206, 19, N'肇庆市', N'0758', N'526000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (207, 19, N'惠州市', N'0752', N'516000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (208, 19, N'梅州市', N'0753', N'514000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (209, 19, N'汕尾市', N'0660', N'516600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (210, 19, N'河源市', N'0762', N'517000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (211, 19, N'阳江市', N'0662', N'529500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (212, 19, N'清远市', N'0763', N'511500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (213, 19, N'东莞市', N'0769', N'511700')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (214, 19, N'中山市', N'0760', N'528400')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (215, 19, N'潮州市', N'0768', N'515600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (216, 19, N'揭阳市', N'0663', N'522000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (217, 19, N'云浮市', N'0766', N'527300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (218, 20, N'南宁市', N'0771', N'530000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (219, 20, N'柳州市', N'0772', N'545000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (220, 20, N'桂林市', N'0773', N'541000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (221, 20, N'梧州市', N'0774', N'543000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (222, 20, N'北海市', N'0779', N'536000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (223, 20, N'防城港市', N'0770', N'538000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (224, 20, N'钦州市', N'0777', N'535000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (225, 20, N'贵港市', N'0775', N'537100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (226, 20, N'玉林市', N'0775', N'537000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (227, 20, N'百色市', N'0776', N'533000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (228, 20, N'贺州市', N'0774', N'542800')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (229, 20, N'河池市', N'0778', N'547000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (230, 20, N'来宾市', N'0772', N'546100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (231, 20, N'崇左市', N'0771', N'532200')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (232, 21, N'海口市', N'0898', N'570000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (233, 21, N'三亚市', N'0898', N'572000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (234, 22, N'重庆市', N'023', N'400000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (235, 23, N'成都市', N'028', N'610000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (236, 23, N'自贡市', N'0813', N'643000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (237, 23, N'攀枝花市', N'0812', N'617000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (238, 23, N'泸州市', N'0830', N'646100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (239, 23, N'德阳市', N'0838', N'618000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (240, 23, N'绵阳市', N'0816', N'621000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (241, 23, N'广元市', N'0839', N'628000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (242, 23, N'遂宁市', N'0825', N'629000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (243, 23, N'内江市', N'0832', N'641000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (244, 23, N'乐山市', N'0833', N'614000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (245, 23, N'南充市', N'0817', N'637000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (246, 23, N'眉山市', N'0833', N'612100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (247, 23, N'宜宾市', N'0831', N'644000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (248, 23, N'广安市', N'0826', N'638000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (249, 23, N'达州市', N'0818', N'635000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (250, 23, N'雅安市', N'0835', N'625000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (251, 23, N'巴中市', N'0827', N'635500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (252, 23, N'资阳市', N'0832', N'641300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (253, 23, N'阿坝藏族羌族自治州', N'0837', N'624600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (254, 23, N'甘孜藏族自治州', N'0836', N'626000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (255, 23, N'凉山彝族自治州', N'0834', N'615000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (256, 24, N'贵阳市', N'0851', N'55000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (257, 24, N'六盘水市', N'0858', N'553000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (258, 24, N'遵义市', N'0852', N'563000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (259, 24, N'安顺市', N'0853', N'561000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (260, 24, N'铜仁地区', N'0856', N'554300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (261, 24, N'黔西南布依族苗族自治州', N'0859', N'551500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (262, 24, N'毕节地区', N'0857', N'551700')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (263, 24, N'黔东南苗族侗族自治州', N'0855', N'551500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (264, 24, N'黔南布依族苗族自治州', N'0854', N'550100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (265, 25, N'昆明市', N'0871', N'650000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (266, 25, N'曲靖市', N'0874', N'655000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (267, 25, N'玉溪市', N'0877', N'653100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (268, 25, N'保山市', N'0875', N'678000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (269, 25, N'昭通市', N'0870', N'657000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (270, 25, N'丽江市', N'0888', N'674100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (271, 25, N'思茅市', N'0879', N'665000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (272, 25, N'临沧市', N'0883', N'677000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (273, 25, N'楚雄彝族自治州', N'0878', N'675000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (274, 25, N'红河哈尼族彝族自治州', N'0873', N'654400')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (275, 25, N'文山壮族苗族自治州', N'0876', N'663000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (276, 25, N'西双版纳傣族自治州', N'0691', N'666200')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (277, 25, N'大理白族自治州', N'0872', N'671000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (278, 25, N'德宏傣族景颇族自治州', N'0692', N'678400')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (279, 25, N'怒江傈僳族自治州', N'0886', N'671400')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (280, 25, N'迪庆藏族自治州', N'0887', N'674400')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (281, 26, N'拉萨市', N'0891', N'850000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (282, 26, N'昌都地区', N'0895', N'854000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (283, 26, N'山南地区', N'0893', N'856000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (284, 26, N'日喀则地区', N'0892', N'857000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (285, 26, N'那曲地区', N'0896', N'852000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (286, 26, N'阿里地区', N'0897', N'859100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (287, 26, N'林芝地区', N'0894', N'860100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (288, 27, N'西安市', N'029', N'710000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (289, 27, N'铜川市', N'0919', N'727000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (290, 27, N'宝鸡市', N'0917', N'721000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (291, 27, N'咸阳市', N'029', N'712000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (292, 27, N'渭南市', N'0913', N'714000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (293, 27, N'延安市', N'0911', N'716000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (294, 27, N'汉中市', N'0916', N'723000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (295, 27, N'榆林市', N'0912', N'719000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (296, 27, N'安康市', N'0915', N'725000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (297, 27, N'商洛市', N'0914', N'711500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (298, 28, N'兰州市', N'0931', N'730000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (299, 28, N'嘉峪关市', N'0937', N'735100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (300, 28, N'金昌市', N'0935', N'737100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (301, 28, N'白银市', N'0943', N'730900')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (302, 28, N'天水市', N'0938', N'741000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (303, 28, N'武威市', N'0935', N'733000')
GO
print 'Processed 300 total records'
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (304, 28, N'张掖市', N'0936', N'734000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (305, 28, N'平凉市', N'0933', N'744000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (306, 28, N'酒泉市', N'0937', N'735000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (307, 28, N'庆阳市', N'0934', N'744500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (308, 28, N'定西市', N'0932', N'743000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (309, 28, N'陇南市', N'0939', N'742100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (310, 28, N'临夏回族自治州', N'0930', N'731100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (311, 28, N'甘南藏族自治州', N'0941', N'747000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (312, 29, N'西宁市', N'0971', N'810000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (313, 29, N'海东地区', N'0972', N'810600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (314, 29, N'海北藏族自治州', N'0970', N'810300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (315, 29, N'黄南藏族自治州', N'0973', N'811300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (316, 29, N'海南藏族自治州', N'0974', N'813000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (317, 29, N'果洛藏族自治州', N'0975', N'814000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (318, 29, N'玉树藏族自治州', N'0976', N'815000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (319, 29, N'海西蒙古族藏族自治州', N'0979', N'817000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (320, 30, N'银川市', N'0951', N'750000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (321, 30, N'石嘴山市', N'0952', N'753000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (322, 30, N'吴忠市', N'0953', N'751100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (323, 30, N'固原市', N'0954', N'756000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (324, 30, N'中卫市', N'0955', N'751700')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (325, 31, N'乌鲁木齐市', N'0991', N'830000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (326, 31, N'克拉玛依市', N'0990', N'834000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (327, 31, N'吐鲁番地区', N'0995', N'838000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (328, 31, N'哈密地区', N'0902', N'839000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (329, 31, N'昌吉回族自治州', N'0994', N'831100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (330, 31, N'博尔塔拉蒙古自治州', N'0909', N'833400')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (331, 31, N'巴音郭楞蒙古自治州', N'0996', N'841000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (332, 31, N'阿克苏地区', N'0997', N'843000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (333, 31, N'克孜勒苏柯尔克孜自治州', N'0908', N'835600')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (334, 31, N'喀什地区', N'0998', N'844000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (335, 31, N'和田地区', N'0903', N'848000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (336, 31, N'伊犁哈萨克自治州', N'0999', N'833200')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (337, 31, N'塔城地区', N'0901', N'834700')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (338, 31, N'阿勒泰地区', N'0906', N'836500')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (339, 31, N'石河子市', N'0993', N'832000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (340, 31, N'阿拉尔市', N'0997', N'843300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (341, 31, N'图木舒克市', N'0998', N'843900')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (342, 31, N'五家渠市', N'0994', N'831300')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (343, 32, N'香港特别行政区', N'00852', N'000000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (344, 33, N'澳门特别行政区', N'00853', N'000000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (345, 34, N'台湾省', N'00886', N'000000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (347, 6, N'马房店', N'', N'')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (348, 6, N'普兰店', N'', N'')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (349, 6, N'庄河', N'', N'')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (350, 6, N'旅顺', N'', N'')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (351, 17, N'仙桃市', N'0728', N'433000')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (352, 17, N'潜江市', N'0728', N'433100')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (353, 17, N'天门市', N'0728', N'431700')
INSERT [dbo].[S_City] ([cityId], [provinceId], [cityName], [areaCode], [zipCode]) VALUES (354, 8, N'加格达奇', N'0457', N'165000')
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePermissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RolePermissions](
	[RolePermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[PermissionKey] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[RolePermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RolePermissions]') AND name = N'UQ_RolePermissions_RoleId_PermissionKey')
CREATE UNIQUE NONCLUSTERED INDEX [UQ_RolePermissions_RoleId_PermissionKey] ON [dbo].[RolePermissions] 
(
	[RoleId] ASC,
	[PermissionKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RolePermissions] ON
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (1, 2, N'Administration')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (13, 2, N'Aoc:Agreement:View')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (2, 2, N'Aoc:General')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (4, 2, N'Aoc:ProductLine:Delete')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (3, 2, N'Aoc:ProductLine:Modify')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (5, 2, N'Aoc:ProductLine:View')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (6, 2, N'Aoc:ProductSerial:Delete')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (7, 2, N'Aoc:ProductSerial:Modify')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (8, 2, N'Aoc:ProductSerial:View')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10, 2, N'Aoc:ScorePolicy:Delete')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (9, 2, N'Aoc:ScorePolicy:Modify')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (11, 2, N'Aoc:ScorePolicy:View')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (12, 2, N'Aoc:ShopGrade:View')
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (14, 2, N'Aoc:SnImport:View')
SET IDENTITY_INSERT [dbo].[RolePermissions] OFF
/****** Object:  Table [dbo].[ManagerAccount]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManagerAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ManagerAccount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](128) NOT NULL,
	[status] [smallint] NOT NULL,
	[roleId] [int] NOT NULL,
	[password] [varchar](128) NOT NULL,
	[name] [varchar](128) NULL,
	[gender] [int] NULL,
	[idCardNumber] [varchar](20) NULL,
	[email] [varchar](128) NULL,
	[mobilePhoneNumber] [varchar](20) NULL,
	[telePhoneNumber] [varchar](20) NULL,
	[createTime] [datetime] NULL,
	[lastLoginTime] [datetime] NULL,
	[companyName] [varchar](128) NULL,
	[address] [varchar](128) NULL,
	[RegionId] [int] NOT NULL,
	[ProvinceId] [int] NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ManagerAccount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ManagerAccount]') AND name = N'INDEX_UserName')
CREATE UNIQUE NONCLUSTERED INDEX [INDEX_UserName] ON [dbo].[ManagerAccount] 
(
	[userName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ManagerAccount] ON
INSERT [dbo].[ManagerAccount] ([id], [userName], [status], [roleId], [password], [name], [gender], [idCardNumber], [email], [mobilePhoneNumber], [telePhoneNumber], [createTime], [lastLoginTime], [companyName], [address], [RegionId], [ProvinceId], [TenantId]) VALUES (14, N'BJAOC', 1, 3, N'123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[ManagerAccount] ([id], [userName], [status], [roleId], [password], [name], [gender], [idCardNumber], [email], [mobilePhoneNumber], [telePhoneNumber], [createTime], [lastLoginTime], [companyName], [address], [RegionId], [ProvinceId], [TenantId]) VALUES (15, N'CCAOC', 1, 3, N'12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, 1)
INSERT [dbo].[ManagerAccount] ([id], [userName], [status], [roleId], [password], [name], [gender], [idCardNumber], [email], [mobilePhoneNumber], [telePhoneNumber], [createTime], [lastLoginTime], [companyName], [address], [RegionId], [ProvinceId], [TenantId]) VALUES (18, N'AMAOC', 1, 3, N'serenity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 33, 1)
SET IDENTITY_INSERT [dbo].[ManagerAccount] OFF
/****** Object:  Table [dbo].[FreeTrialList]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FreeTrialList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FreeTrialList](
	[listId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[attachementName] [varchar](128) NULL,
	[attachementFilePath] [varchar](256) NULL,
	[trialTime] [datetime] NULL,
	[userDescription] [varchar](256) NULL,
	[status] [varchar](50) NULL,
	[apr1_PlatformproviderManager] [varchar](50) NULL,
	[apr1_comment] [varchar](500) NULL,
	[apr1_ApproveTime] [datetime] NULL,
	[apr2_AreaManager] [varchar](50) NULL,
	[apr2_comment] [varchar](500) NULL,
	[apr2_ApproveTime] [datetime] NULL,
	[apr3_AdminManager] [varchar](50) NULL,
	[apr3_comment] [varchar](500) NULL,
	[apr3_ApproveTime] [datetime] NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[freeTrialId] [int] NOT NULL,
	[platformProviderManagerId] [int] NULL,
	[areaManagerId] [int] NULL,
	[apr4_comment] [varchar](500) NULL,
	[apr4_ApproveTime] [datetime] NULL,
	[apr4_BigAreaManager] [varchar](50) NULL,
	[bigAreaManagerId] [int] NULL,
	[closeUpFilePath] [varchar](128) NULL,
	[distantViewFilePath] [varchar](128) NULL,
	[requiredFilePath1] [varchar](128) NULL,
	[requiredFilePath2] [varchar](128) NULL,
	[requiredFilePath3] [varchar](128) NULL,
	[requiredFilePath4] [varchar](128) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.FreeTrialList] PRIMARY KEY CLUSTERED 
(
	[listId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgreementTemplate]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgreementTemplate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AgreementTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[agreementType] [int] NOT NULL,
	[shopGradeId] [int] NOT NULL,
	[approveFlow] [varchar](50) NOT NULL,
	[Content] [ntext] NOT NULL,
	[status] [smallint] NOT NULL,
	[type] [varchar](8) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AgreementTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductSerial]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSerial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductSerial](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[createTime] [datetime] NOT NULL,
	[status] [nvarchar](6) NULL,
	[ProductLineId] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductSerial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[ProductSerial] ON
INSERT [dbo].[ProductSerial] ([id], [name], [createTime], [status], [ProductLineId], [TenantId]) VALUES (1, N'81S', CAST(0x0000A61B00000000 AS DateTime), N'1', 1, 1)
INSERT [dbo].[ProductSerial] ([id], [name], [createTime], [status], [ProductLineId], [TenantId]) VALUES (2, N'82S', CAST(0x0000A61B00000000 AS DateTime), N'1', 1, 1)
INSERT [dbo].[ProductSerial] ([id], [name], [createTime], [status], [ProductLineId], [TenantId]) VALUES (3, N'CETV', CAST(0x0000A61B00000000 AS DateTime), N'1', 2, 2)
INSERT [dbo].[ProductSerial] ([id], [name], [createTime], [status], [ProductLineId], [TenantId]) VALUES (4, N'71S', CAST(0x0000A62B00000000 AS DateTime), N'1', 1, 1)
INSERT [dbo].[ProductSerial] ([id], [name], [createTime], [status], [ProductLineId], [TenantId]) VALUES (5, N'99R', CAST(0x0000A62B00000000 AS DateTime), N'1', 1, 1)
INSERT [dbo].[ProductSerial] ([id], [name], [createTime], [status], [ProductLineId], [TenantId]) VALUES (6, N'TV88', CAST(0x0000A62B00000000 AS DateTime), N'1', 2, 2)
INSERT [dbo].[ProductSerial] ([id], [name], [createTime], [status], [ProductLineId], [TenantId]) VALUES (7, N'65E', CAST(0x0000A62B00000000 AS DateTime), N'1', 1, 1)
SET IDENTITY_INSERT [dbo].[ProductSerial] OFF
/****** Object:  Table [dbo].[UserRoles]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserRoles](
	[UserRoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UserRoles]') AND name = N'IX_UserRoles_RoleId_UserId')
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId_UserId] ON [dbo].[UserRoles] 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UserRoles]') AND name = N'UQ_UserRoles_UserId_RoleId')
CREATE UNIQUE NONCLUSTERED INDEX [UQ_UserRoles_UserId_RoleId] ON [dbo].[UserRoles] 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId]) VALUES (4, 2, 2)
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId]) VALUES (9, 3, 4)
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
/****** Object:  Table [dbo].[UserAccount]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserAccount](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[shopId] [varchar](50) NULL,
	[userName] [varchar](128) NOT NULL,
	[password] [varchar](128) NOT NULL,
	[platformProviderManagerId] [int] NULL,
	[platformProviderManagerUserName] [varchar](128) NULL,
	[areaManagerId] [int] NULL,
	[areaManagerUserName] [varchar](128) NULL,
	[addr_ProvinceID] [int] NULL,
	[addr_Province] [varchar](50) NULL,
	[addr_CityID] [int] NULL,
	[addr_City] [varchar](50) NULL,
	[addr_DistrictID] [int] NULL,
	[addr_District] [varchar](50) NULL,
	[addr_Town] [varchar](125) NULL,
	[addr_Street] [varchar](128) NULL,
	[addr_Detail] [varchar](128) NULL,
	[gender] [bit] NULL,
	[idCardNumber] [varchar](20) NULL,
	[name] [varchar](128) NULL,
	[mobilePhoneNumber] [varchar](20) NULL,
	[telePhoneNumber] [varchar](20) NULL,
	[email] [varchar](128) NOT NULL,
	[createTime] [datetime] NOT NULL,
	[lastLoginTime] [datetime] NULL,
	[isNew] [bit] NOT NULL,
	[isRealShop] [bit] NOT NULL,
	[isStreetShop] [bit] NOT NULL,
	[userStatus] [varchar](50) NOT NULL,
	[agreementStatus] [varchar](50) NOT NULL,
	[shopStatus] [varchar](50) NOT NULL,
	[shopName] [varchar](128) NULL,
	[companyName] [varchar](128) NULL,
	[shopExpiredTime] [datetime] NULL,
	[shopOpenTime] [datetime] NULL,
	[shopCloseTime] [datetime] NULL,
	[onlineShopUrl] [varchar](256) NULL,
	[scoreOfTotal] [int] NOT NULL,
	[scoreOfPunish] [int] NOT NULL,
	[scoreOfExchange] [int] NOT NULL,
	[scoreOfRemain] [int] NOT NULL,
	[isFirstAgreement] [bit] NULL,
	[lanhaifuzeren] [varchar](50) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UserAccount] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductVersion]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[createTime] [datetime] NOT NULL,
	[status] [nvarchar](6) NULL,
	[ProductSerialId] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[ProductVersion] ON
INSERT [dbo].[ProductVersion] ([id], [name], [createTime], [status], [ProductSerialId], [TenantId]) VALUES (1, N'I2281FW/BW', CAST(0x0000A61B00000000 AS DateTime), N'1', 2, 1)
INSERT [dbo].[ProductVersion] ([id], [name], [createTime], [status], [ProductSerialId], [TenantId]) VALUES (2, N'LE42A3320/61', CAST(0x0000A61B00000000 AS DateTime), N'1', 3, 2)
INSERT [dbo].[ProductVersion] ([id], [name], [createTime], [status], [ProductSerialId], [TenantId]) VALUES (3, N'LE42A3320/63', CAST(0x0000A62B00000000 AS DateTime), N'1', 4, 1)
INSERT [dbo].[ProductVersion] ([id], [name], [createTime], [status], [ProductSerialId], [TenantId]) VALUES (4, N'99R88792', CAST(0x0000A62B00000000 AS DateTime), N'1', 5, 1)
INSERT [dbo].[ProductVersion] ([id], [name], [createTime], [status], [ProductSerialId], [TenantId]) VALUES (5, N'LEV9879K', CAST(0x0000A62B00000000 AS DateTime), N'1', 2, 1)
SET IDENTITY_INSERT [dbo].[ProductVersion] OFF
/****** Object:  Table [dbo].[SNGenerate]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SNGenerate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SNGenerate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productVersionId] [int] NOT NULL,
	[prefix] [varchar](12) NOT NULL,
	[regionBegin] [int] NOT NULL,
	[regionEnd] [int] NOT NULL,
	[length] [int] NOT NULL,
	[generateTime] [datetime] NOT NULL,
	[managerAccountId] [int] NOT NULL,
	[dateOfProduction] [datetime] NOT NULL,
	[taskStatus] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.SNGenerate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopSeller]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShopSeller]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShopSeller](
	[sellerId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[roleName] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[birthday] [datetime] NULL,
	[idCardNumber] [varchar](20) NOT NULL,
	[createTime] [datetime] NULL,
	[isOnWorking] [bit] NOT NULL,
	[idCardPicPath] [varchar](256) NULL,
	[address] [varchar](256) NULL,
	[phoneNumber] [varchar](20) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopSeller] PRIMARY KEY CLUSTERED 
(
	[sellerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScorePolicy]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScorePolicy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ScorePolicy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productVersionId] [int] NOT NULL,
	[beginTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[score] [int] NOT NULL,
	[description] [varchar](256) NULL,
	[status] [varchar](50) NOT NULL,
	[size] [varchar](20) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ScorePolicy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ScorePolicy] ON
INSERT [dbo].[ScorePolicy] ([id], [productVersionId], [beginTime], [endTime], [score], [description], [status], [size], [TenantId]) VALUES (2, 1, CAST(0x0000A62600000000 AS DateTime), CAST(0x0000A62700000000 AS DateTime), 10, NULL, N'1', N'23.8', 1)
SET IDENTITY_INSERT [dbo].[ScorePolicy] OFF
/****** Object:  Table [dbo].[ScoreExchangeRecord]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScoreExchangeRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ScoreExchangeRecord](
	[exchangeId] [int] IDENTITY(1,1) NOT NULL,
	[objectId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[exchangeTime] [datetime] NULL,
	[scoreCost] [int] NULL,
	[logisticsCompany] [varchar](128) NULL,
	[logisticsNumber] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[userConfirmReceiveTime] [datetime] NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ScoreExchangeRecord] PRIMARY KEY CLUSTERED 
(
	[exchangeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RewardMonthyStatistical]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RewardMonthyStatistical]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RewardMonthyStatistical](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[platformProviderId] [int] NOT NULL,
	[policyId] [int] NOT NULL,
	[taskId] [int] NULL,
	[month] [int] NOT NULL,
	[year] [int] NOT NULL,
	[monthAndYear] [varchar](16) NULL,
	[shopGradeId] [int] NULL,
	[totalAmountRatio] [varchar](20) NULL,
	[totalAmount] [int] NULL,
	[totalRewardMoney] [decimal](8, 2) NULL,
	[SMAomout] [int] NULL,
	[SMAomoutRatio] [varchar](20) NULL,
	[SMRewardMoney] [decimal](8, 2) NULL,
	[TVAmount] [int] NULL,
	[TVAmountRatio] [varchar](20) NULL,
	[TVRewardMoney] [decimal](8, 2) NULL,
	[realShopAppearanceScore] [int] NULL,
	[realShopAppearanceRewardMoney] [decimal](8, 2) NULL,
	[statisticalTime] [datetime] NULL,
	[statisticalRemark] [varchar](1024) NULL,
	[finalPolicyMoney] [decimal](8, 2) NULL,
	[finalSumMoney] [decimal](8, 2) NULL,
	[finalMaxMoney] [decimal](8, 2) NULL,
	[areaManagerId] [int] NULL,
	[userSpecialAward] [decimal](8, 2) NULL,
	[platformSpecialAward] [decimal](8, 2) NULL,
	[specialAmountRate] [varchar](20) NULL,
	[specialAmount] [int] NULL,
	[scoreOfMonth] [int] NULL,
	[scoreOfMonthRatio] [varchar](20) NULL,
	[recognizedAmount] [decimal](18, 0) NULL,
	[isReceivedConfirmation] [bit] NULL,
	[isConfirmPrototypeAmountunt] [bit] NULL,
	[isConfirmSpecialAmount] [bit] NULL,
	[isConfirmBrandAmount] [bit] NULL,
	[GDPAmountRatio] [varchar](20) NULL,
	[GDPAmount] [int] NULL,
	[GDPRewardMoney] [decimal](8, 2) NULL,
	[ScoreRewardMoney] [decimal](8, 2) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RewardMonthyStatistical] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductExPropertyProductVersions]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductExPropertyProductVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductExPropertyProductVersions](
	[ProductVersion_id] [int] NOT NULL,
	[ProductExProperty_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductExPropertyProductVersions] PRIMARY KEY CLUSTERED 
(
	[ProductExProperty_id] ASC,
	[ProductVersion_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Agreement]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agreement]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Agreement](
	[agreementId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[shopID] [varchar](50) NOT NULL,
	[platformProviderManagerId] [int] NOT NULL,
	[areaProviderCompanyName] [varchar](128) NULL,
	[areaManagerId] [int] NULL,
	[agreementTemplate] [int] NOT NULL,
	[agrementYearOfDate] [int] NULL,
	[agreementType] [int] NULL,
	[agreementStatus] [varchar](50) NULL,
	[agreementContent] [varchar](max) NOT NULL,
	[beginTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[approveFlow] [varchar](50) NULL,
	[nextApproveRole] [int] NOT NULL,
	[attachment] [varchar](128) NULL,
	[createTime] [datetime] NULL,
	[clienttype] [varchar](20) NULL,
	[fixture] [varchar](20) NULL,
	[samplenum] [int] NULL,
	[samplemoney] [decimal](8, 2) NULL,
	[sampledate] [datetime] NULL,
	[rentLimitTime] [datetime] NULL,
	[shopdoortype] [varchar](20) NULL,
	[idCardNumber] [varchar](20) NULL,
	[name] [varchar](128) NULL,
	[mobilePhoneNumber] [varchar](20) NULL,
	[email] [varchar](128) NULL,
	[shopGrade] [int] NULL,
	[addr_ProvinceID] [int] NULL,
	[addr_CityID] [int] NULL,
	[addr_DistrictID] [int] NULL,
	[addr_Province] [varchar](50) NULL,
	[addr_City] [varchar](50) NULL,
	[addr_District] [varchar](128) NULL,
	[addr_Town] [varchar](128) NULL,
	[addr_Street] [varchar](128) NULL,
	[addr_Detail] [varchar](128) NULL,
	[shopName] [varchar](128) NULL,
	[companyName] [varchar](128) NULL,
	[shopUrl] [varchar](256) NULL,
	[lanhaifuzeren] [varchar](128) NULL,
	[isFirstAgreement] [bit] NULL,
	[isRealShop] [bit] NULL,
	[wangwang] [varchar](100) NULL,
	[totalAmount] [int] NULL,
	[modelAmount] [int] NULL,
	[amountRatio] [varchar](10) NULL,
	[dpxz] [varchar](10) NULL,
	[originOpenTime] [datetime] NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_dbo.Agreement] PRIMARY KEY CLUSTERED 
(
	[agreementId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SN]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SN](
	[number] [varchar](50) NOT NULL,
	[generateTaskId] [int] NOT NULL,
	[productVersionId] [int] NULL,
	[snPrefix] [varchar](16) NULL,
	[snValue] [int] NULL,
	[snLast2Char] [varchar](4) NULL,
	[status] [varchar](50) NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SN] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgreementApproveRecord]    Script Date: 06/20/2016 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgreementApproveRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AgreementApproveRecord](
	[recordId] [int] IDENTITY(1,1) NOT NULL,
	[shopAgreementId] [int] NOT NULL,
	[approverUserId] [int] NOT NULL,
	[approverUserName] [varchar](128) NULL,
	[approvResult] [varchar](50) NOT NULL,
	[comment] [varchar](128) NULL,
	[approveTime] [datetime] NULL,
	[shopGrade] [varchar](50) NULL,
	[shopdoortype] [varchar](20) NULL,
	[clienttype] [varchar](20) NULL,
	[fixture] [varchar](20) NULL,
	[samplenum] [int] NULL,
	[samplemoney] [decimal](8, 2) NULL,
	[sampledate] [datetime] NULL,
	[rentLimittime] [datetime] NULL,
	[lanhaifuzeren] [varchar](128) NULL,
	[companyName] [varchar](128) NULL,
	[addr_District] [varchar](128) NULL,
	[addr_Town] [varchar](128) NULL,
	[addr_Detail] [varchar](128) NULL,
	[name] [varchar](50) NULL,
	[mobilePhoneNumber] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.AgreementApproveRecord] PRIMARY KEY CLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Agreement_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Agreement_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Agreement_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_AgreementTemplate_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AgreementTemplate_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementTemplate]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AgreementTemplate_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AgreementTemplate] ADD  CONSTRAINT [DF_AgreementTemplate_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ExchangeObject_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ExchangeObject_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExchangeObject]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ExchangeObject_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ExchangeObject] ADD  CONSTRAINT [DF_ExchangeObject_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_FreeTrialList_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_FreeTrialList_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FreeTrialList]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_FreeTrialList_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FreeTrialList] ADD  CONSTRAINT [DF_FreeTrialList_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_FreeTrialPolicy_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_FreeTrialPolicy_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FreeTrialPolicy]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_FreeTrialPolicy_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FreeTrialPolicy] ADD  CONSTRAINT [DF_FreeTrialPolicy_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ManagerAccount_RegionId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ManagerAccount_RegionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ManagerAccount_RegionId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManagerAccount] ADD  CONSTRAINT [DF_ManagerAccount_RegionId]  DEFAULT ((1)) FOR [RegionId]
END


End
GO
/****** Object:  Default [DF_ManagerAccount_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ManagerAccount_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ManagerAccount_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManagerAccount] ADD  CONSTRAINT [DF_ManagerAccount_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ProductExProperty_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductExProperty_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductExProperty]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ProductExProperty_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductExProperty] ADD  CONSTRAINT [DF_ProductExProperty_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ProductForFreeTrail_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductForFreeTrail_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductForFreeTrail]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ProductForFreeTrail_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductForFreeTrail] ADD  CONSTRAINT [DF_ProductForFreeTrail_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ProductLine_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductLine_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductLine]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ProductLine_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductLine] ADD  CONSTRAINT [DF_ProductLine_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ProductSerial_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductSerial_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSerial]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ProductSerial_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductSerial] ADD  CONSTRAINT [DF_ProductSerial_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ProductVersion_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductVersion_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductVersion]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ProductVersion_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductVersion] ADD  CONSTRAINT [DF_ProductVersion_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_Region_CreateTime]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Region_CreateTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Region_CreateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_CreateTime]  DEFAULT ('2016-06-07T14:07:17') FOR [CreateTime]
END


End
GO
/****** Object:  Default [DF_RewardMonthyStatistical_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_RewardMonthyStatistical_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RewardMonthyStatistical]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_RewardMonthyStatistical_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RewardMonthyStatistical] ADD  CONSTRAINT [DF_RewardMonthyStatistical_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_Roles_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Roles_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Roles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Roles_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_S_Province_RegionId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_S_Province_RegionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[S_Province]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_S_Province_RegionId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[S_Province] ADD  CONSTRAINT [DF_S_Province_RegionId]  DEFAULT ((1)) FOR [RegionId]
END


End
GO
/****** Object:  Default [DF_ScoreExchangeRecord_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ScoreExchangeRecord_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScoreExchangeRecord]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ScoreExchangeRecord_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ScoreExchangeRecord] ADD  CONSTRAINT [DF_ScoreExchangeRecord_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ScorePolicy_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ScorePolicy_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScorePolicy]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ScorePolicy_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ScorePolicy] ADD  CONSTRAINT [DF_ScorePolicy_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF__SEMReward__maxSc__336AA144]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SEMReward__maxSc__336AA144]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SEMReward__maxSc__336AA144]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SEMRewardPolicy] ADD  DEFAULT ((0)) FOR [maxScore]
END


End
GO
/****** Object:  Default [DF__SEMReward__notSt__345EC57D]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SEMReward__notSt__345EC57D]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SEMReward__notSt__345EC57D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SEMRewardPolicy] ADD  DEFAULT ((0)) FOR [notStreetReward]
END


End
GO
/****** Object:  Default [DF__SEMReward__stree__3552E9B6]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SEMReward__stree__3552E9B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SEMReward__stree__3552E9B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SEMRewardPolicy] ADD  DEFAULT ((0)) FOR [streetReward]
END


End
GO
/****** Object:  Default [DF_SEMRewardPolicy_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SEMRewardPolicy_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SEMRewardPolicy_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SEMRewardPolicy] ADD  CONSTRAINT [DF_SEMRewardPolicy_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ShopGrade_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ShopGrade_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopGrade]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ShopGrade_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShopGrade] ADD  CONSTRAINT [DF_ShopGrade_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ShopReviewItem_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ShopReviewItem_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopReviewItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ShopReviewItem_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShopReviewItem] ADD  CONSTRAINT [DF_ShopReviewItem_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ShopReviewRecord_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ShopReviewRecord_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopReviewRecord]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ShopReviewRecord_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShopReviewRecord] ADD  CONSTRAINT [DF_ShopReviewRecord_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ShopReviewRecordDetail_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ShopReviewRecordDetail_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopReviewRecordDetail]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ShopReviewRecordDetail_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShopReviewRecordDetail] ADD  CONSTRAINT [DF_ShopReviewRecordDetail_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ShopScore_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ShopScore_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopScore]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ShopScore_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShopScore] ADD  CONSTRAINT [DF_ShopScore_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ShopSeller_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ShopSeller_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopSeller]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ShopSeller_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShopSeller] ADD  CONSTRAINT [DF_ShopSeller_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ShopSellerRole_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ShopSellerRole_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopSellerRole]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ShopSellerRole_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShopSellerRole] ADD  CONSTRAINT [DF_ShopSellerRole_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_ShopSeriesNumber_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ShopSeriesNumber_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopSeriesNumber]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ShopSeriesNumber_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShopSeriesNumber] ADD  CONSTRAINT [DF_ShopSeriesNumber_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_SN_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SN_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SN]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SN_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SN] ADD  CONSTRAINT [DF_SN_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_SNComplain_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SNComplain_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SNComplain]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SNComplain_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SNComplain] ADD  CONSTRAINT [DF_SNComplain_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF__SNImport__sn__214BF109]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SNImport__sn__214BF109]') AND parent_object_id = OBJECT_ID(N'[dbo].[SNImport]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SNImport__sn__214BF109]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SNImport] ADD  DEFAULT ('') FOR [sn]
END


End
GO
/****** Object:  Default [DF_SNImport_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SNImport_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SNImport]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SNImport_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SNImport] ADD  CONSTRAINT [DF_SNImport_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_SNRecycle_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SNRecycle_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SNRecycle]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SNRecycle_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SNRecycle] ADD  CONSTRAINT [DF_SNRecycle_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_SNRecycleDetail_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SNRecycleDetail_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SNRecycleDetail]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SNRecycleDetail_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SNRecycleDetail] ADD  CONSTRAINT [DF_SNRecycleDetail_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_SpecialRewardPolicy_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SpecialRewardPolicy_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecialRewardPolicy]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SpecialRewardPolicy_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SpecialRewardPolicy] ADD  CONSTRAINT [DF_SpecialRewardPolicy_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_SpecialRewardPolicyDetail_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SpecialRewardPolicyDetail_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecialRewardPolicyDetail]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SpecialRewardPolicyDetail_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SpecialRewardPolicyDetail] ADD  CONSTRAINT [DF_SpecialRewardPolicyDetail_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_StatusCollection_CreateTime]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_StatusCollection_CreateTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusCollection]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_StatusCollection_CreateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[StatusCollection] ADD  CONSTRAINT [DF_StatusCollection_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
END


End
GO
/****** Object:  Default [DF_UserAccount_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_UserAccount_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserAccount]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserAccount_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  Default [DF_UserPermissions_Grant]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_UserPermissions_Grant]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPermissions]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserPermissions_Grant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserPermissions] ADD  CONSTRAINT [DF_UserPermissions_Grant]  DEFAULT ((1)) FOR [Grant]
END


End
GO
/****** Object:  Default [DF_Users_IsActive]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Users_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
END


End
GO
/****** Object:  Default [DF_Users_TenantId]    Script Date: 06/20/2016 20:33:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_TenantId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Users_TenantId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_TenantId]  DEFAULT ((1)) FOR [TenantId]
END


End
GO
/****** Object:  ForeignKey [FK_Agreement_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Agreement_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Agreement_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.Agreement_dbo.AgreementTemplate_agreementTemplate]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agreement_dbo.AgreementTemplate_agreementTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agreement_dbo.AgreementTemplate_agreementTemplate] FOREIGN KEY([agreementTemplate])
REFERENCES [dbo].[AgreementTemplate] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agreement_dbo.AgreementTemplate_agreementTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_dbo.Agreement_dbo.AgreementTemplate_agreementTemplate]
GO
/****** Object:  ForeignKey [FK_dbo.Agreement_dbo.ManagerRole_nextApproveRole]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agreement_dbo.ManagerRole_nextApproveRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agreement_dbo.ManagerRole_nextApproveRole] FOREIGN KEY([nextApproveRole])
REFERENCES [dbo].[ManagerRole] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agreement_dbo.ManagerRole_nextApproveRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_dbo.Agreement_dbo.ManagerRole_nextApproveRole]
GO
/****** Object:  ForeignKey [FK_dbo.Agreement_dbo.UserAccount_userId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agreement_dbo.UserAccount_userId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agreement_dbo.UserAccount_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[UserAccount] ([userId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agreement_dbo.UserAccount_userId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agreement]'))
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_dbo.Agreement_dbo.UserAccount_userId]
GO
/****** Object:  ForeignKey [FK_dbo.AgreementApproveRecord_dbo.Agreement_shopAgreementId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgreementApproveRecord_dbo.Agreement_shopAgreementId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementApproveRecord]'))
ALTER TABLE [dbo].[AgreementApproveRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgreementApproveRecord_dbo.Agreement_shopAgreementId] FOREIGN KEY([shopAgreementId])
REFERENCES [dbo].[Agreement] ([agreementId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgreementApproveRecord_dbo.Agreement_shopAgreementId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementApproveRecord]'))
ALTER TABLE [dbo].[AgreementApproveRecord] CHECK CONSTRAINT [FK_dbo.AgreementApproveRecord_dbo.Agreement_shopAgreementId]
GO
/****** Object:  ForeignKey [FK_dbo.AgreementApproveRecord_dbo.AgreementApproveResult_approvResult]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgreementApproveRecord_dbo.AgreementApproveResult_approvResult]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementApproveRecord]'))
ALTER TABLE [dbo].[AgreementApproveRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgreementApproveRecord_dbo.AgreementApproveResult_approvResult] FOREIGN KEY([approvResult])
REFERENCES [dbo].[AgreementApproveResult] ([approveResult])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgreementApproveRecord_dbo.AgreementApproveResult_approvResult]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementApproveRecord]'))
ALTER TABLE [dbo].[AgreementApproveRecord] CHECK CONSTRAINT [FK_dbo.AgreementApproveRecord_dbo.AgreementApproveResult_approvResult]
GO
/****** Object:  ForeignKey [FK_AgreementTemplate_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AgreementTemplate_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementTemplate]'))
ALTER TABLE [dbo].[AgreementTemplate]  WITH CHECK ADD  CONSTRAINT [FK_AgreementTemplate_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AgreementTemplate_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementTemplate]'))
ALTER TABLE [dbo].[AgreementTemplate] CHECK CONSTRAINT [FK_AgreementTemplate_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.AgreementTemplate_dbo.ShopGrade_shopGradId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgreementTemplate_dbo.ShopGrade_shopGradId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementTemplate]'))
ALTER TABLE [dbo].[AgreementTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgreementTemplate_dbo.ShopGrade_shopGradId] FOREIGN KEY([shopGradeId])
REFERENCES [dbo].[ShopGrade] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgreementTemplate_dbo.ShopGrade_shopGradId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgreementTemplate]'))
ALTER TABLE [dbo].[AgreementTemplate] CHECK CONSTRAINT [FK_dbo.AgreementTemplate_dbo.ShopGrade_shopGradId]
GO
/****** Object:  ForeignKey [FK_ExchangeObject_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExchangeObject_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExchangeObject]'))
ALTER TABLE [dbo].[ExchangeObject]  WITH CHECK ADD  CONSTRAINT [FK_ExchangeObject_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExchangeObject_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExchangeObject]'))
ALTER TABLE [dbo].[ExchangeObject] CHECK CONSTRAINT [FK_ExchangeObject_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.ProductFreeTrialList_dbo.ProductForFreeTrail_freeTrialId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductFreeTrialList_dbo.ProductForFreeTrail_freeTrialId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FreeTrialList]'))
ALTER TABLE [dbo].[FreeTrialList]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductFreeTrialList_dbo.ProductForFreeTrail_freeTrialId] FOREIGN KEY([freeTrialId])
REFERENCES [dbo].[ProductForFreeTrail] ([trialId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductFreeTrialList_dbo.ProductForFreeTrail_freeTrialId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FreeTrialList]'))
ALTER TABLE [dbo].[FreeTrialList] CHECK CONSTRAINT [FK_dbo.ProductFreeTrialList_dbo.ProductForFreeTrail_freeTrialId]
GO
/****** Object:  ForeignKey [FK_FreeTrialList_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FreeTrialList_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[FreeTrialList]'))
ALTER TABLE [dbo].[FreeTrialList]  WITH CHECK ADD  CONSTRAINT [FK_FreeTrialList_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FreeTrialList_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[FreeTrialList]'))
ALTER TABLE [dbo].[FreeTrialList] CHECK CONSTRAINT [FK_FreeTrialList_Tenants]
GO
/****** Object:  ForeignKey [FK_FreeTrialPolicy_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FreeTrialPolicy_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[FreeTrialPolicy]'))
ALTER TABLE [dbo].[FreeTrialPolicy]  WITH CHECK ADD  CONSTRAINT [FK_FreeTrialPolicy_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FreeTrialPolicy_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[FreeTrialPolicy]'))
ALTER TABLE [dbo].[FreeTrialPolicy] CHECK CONSTRAINT [FK_FreeTrialPolicy_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.ManagerAccount_dbo.ManagerRole_roleId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ManagerAccount_dbo.ManagerRole_roleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
ALTER TABLE [dbo].[ManagerAccount]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ManagerAccount_dbo.ManagerRole_roleId] FOREIGN KEY([roleId])
REFERENCES [dbo].[ManagerRole] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ManagerAccount_dbo.ManagerRole_roleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
ALTER TABLE [dbo].[ManagerAccount] CHECK CONSTRAINT [FK_dbo.ManagerAccount_dbo.ManagerRole_roleId]
GO
/****** Object:  ForeignKey [FK_ManagerAccount_ProvinceId_S_Province_provinceId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManagerAccount_ProvinceId_S_Province_provinceId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
ALTER TABLE [dbo].[ManagerAccount]  WITH CHECK ADD  CONSTRAINT [FK_ManagerAccount_ProvinceId_S_Province_provinceId] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[S_Province] ([provinceId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManagerAccount_ProvinceId_S_Province_provinceId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
ALTER TABLE [dbo].[ManagerAccount] CHECK CONSTRAINT [FK_ManagerAccount_ProvinceId_S_Province_provinceId]
GO
/****** Object:  ForeignKey [FK_ManagerAccount_RegionId_Region_Id]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManagerAccount_RegionId_Region_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
ALTER TABLE [dbo].[ManagerAccount]  WITH CHECK ADD  CONSTRAINT [FK_ManagerAccount_RegionId_Region_Id] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManagerAccount_RegionId_Region_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
ALTER TABLE [dbo].[ManagerAccount] CHECK CONSTRAINT [FK_ManagerAccount_RegionId_Region_Id]
GO
/****** Object:  ForeignKey [FK_ManagerAccount_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManagerAccount_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
ALTER TABLE [dbo].[ManagerAccount]  WITH CHECK ADD  CONSTRAINT [FK_ManagerAccount_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManagerAccount_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManagerAccount]'))
ALTER TABLE [dbo].[ManagerAccount] CHECK CONSTRAINT [FK_ManagerAccount_Tenants]
GO
/****** Object:  ForeignKey [FK_ProductExProperty_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductExProperty_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductExProperty]'))
ALTER TABLE [dbo].[ProductExProperty]  WITH CHECK ADD  CONSTRAINT [FK_ProductExProperty_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductExProperty_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductExProperty]'))
ALTER TABLE [dbo].[ProductExProperty] CHECK CONSTRAINT [FK_ProductExProperty_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.ProductVersionProductExProperties_dbo.ProductExProperty_ProductExProperty_id]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductVersionProductExProperties_dbo.ProductExProperty_ProductExProperty_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductExPropertyProductVersions]'))
ALTER TABLE [dbo].[ProductExPropertyProductVersions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVersionProductExProperties_dbo.ProductExProperty_ProductExProperty_id] FOREIGN KEY([ProductExProperty_id])
REFERENCES [dbo].[ProductExProperty] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductVersionProductExProperties_dbo.ProductExProperty_ProductExProperty_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductExPropertyProductVersions]'))
ALTER TABLE [dbo].[ProductExPropertyProductVersions] CHECK CONSTRAINT [FK_dbo.ProductVersionProductExProperties_dbo.ProductExProperty_ProductExProperty_id]
GO
/****** Object:  ForeignKey [FK_dbo.ProductVersionProductExProperties_dbo.ProductVersion_ProductVersion_id]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductVersionProductExProperties_dbo.ProductVersion_ProductVersion_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductExPropertyProductVersions]'))
ALTER TABLE [dbo].[ProductExPropertyProductVersions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVersionProductExProperties_dbo.ProductVersion_ProductVersion_id] FOREIGN KEY([ProductVersion_id])
REFERENCES [dbo].[ProductVersion] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductVersionProductExProperties_dbo.ProductVersion_ProductVersion_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductExPropertyProductVersions]'))
ALTER TABLE [dbo].[ProductExPropertyProductVersions] CHECK CONSTRAINT [FK_dbo.ProductVersionProductExProperties_dbo.ProductVersion_ProductVersion_id]
GO
/****** Object:  ForeignKey [FK_ProductForFreeTrail_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductForFreeTrail_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductForFreeTrail]'))
ALTER TABLE [dbo].[ProductForFreeTrail]  WITH CHECK ADD  CONSTRAINT [FK_ProductForFreeTrail_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductForFreeTrail_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductForFreeTrail]'))
ALTER TABLE [dbo].[ProductForFreeTrail] CHECK CONSTRAINT [FK_ProductForFreeTrail_Tenants]
GO
/****** Object:  ForeignKey [FK_ProductLine_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductLine_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductLine]'))
ALTER TABLE [dbo].[ProductLine]  WITH CHECK ADD  CONSTRAINT [FK_ProductLine_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductLine_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductLine]'))
ALTER TABLE [dbo].[ProductLine] CHECK CONSTRAINT [FK_ProductLine_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.ProductSerial_dbo.ProductLine_ProductLineId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductSerial_dbo.ProductLine_ProductLineId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSerial]'))
ALTER TABLE [dbo].[ProductSerial]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductSerial_dbo.ProductLine_ProductLineId] FOREIGN KEY([ProductLineId])
REFERENCES [dbo].[ProductLine] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductSerial_dbo.ProductLine_ProductLineId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSerial]'))
ALTER TABLE [dbo].[ProductSerial] CHECK CONSTRAINT [FK_dbo.ProductSerial_dbo.ProductLine_ProductLineId]
GO
/****** Object:  ForeignKey [FK_ProductSerial_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductSerial_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSerial]'))
ALTER TABLE [dbo].[ProductSerial]  WITH CHECK ADD  CONSTRAINT [FK_ProductSerial_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductSerial_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSerial]'))
ALTER TABLE [dbo].[ProductSerial] CHECK CONSTRAINT [FK_ProductSerial_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.ProductVersion_dbo.ProductSerial_ProductSerialId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductVersion_dbo.ProductSerial_ProductSerialId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductVersion]'))
ALTER TABLE [dbo].[ProductVersion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVersion_dbo.ProductSerial_ProductSerialId] FOREIGN KEY([ProductSerialId])
REFERENCES [dbo].[ProductSerial] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductVersion_dbo.ProductSerial_ProductSerialId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductVersion]'))
ALTER TABLE [dbo].[ProductVersion] CHECK CONSTRAINT [FK_dbo.ProductVersion_dbo.ProductSerial_ProductSerialId]
GO
/****** Object:  ForeignKey [FK_ProductVersion_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductVersion_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductVersion]'))
ALTER TABLE [dbo].[ProductVersion]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersion_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductVersion_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductVersion]'))
ALTER TABLE [dbo].[ProductVersion] CHECK CONSTRAINT [FK_ProductVersion_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.RewardMonthyStatistical_dbo.UserAccount_userId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RewardMonthyStatistical_dbo.UserAccount_userId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RewardMonthyStatistical]'))
ALTER TABLE [dbo].[RewardMonthyStatistical]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RewardMonthyStatistical_dbo.UserAccount_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[UserAccount] ([userId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RewardMonthyStatistical_dbo.UserAccount_userId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RewardMonthyStatistical]'))
ALTER TABLE [dbo].[RewardMonthyStatistical] CHECK CONSTRAINT [FK_dbo.RewardMonthyStatistical_dbo.UserAccount_userId]
GO
/****** Object:  ForeignKey [FK_RewardMonthyStatistical_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RewardMonthyStatistical_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[RewardMonthyStatistical]'))
ALTER TABLE [dbo].[RewardMonthyStatistical]  WITH CHECK ADD  CONSTRAINT [FK_RewardMonthyStatistical_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RewardMonthyStatistical_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[RewardMonthyStatistical]'))
ALTER TABLE [dbo].[RewardMonthyStatistical] CHECK CONSTRAINT [FK_RewardMonthyStatistical_Tenants]
GO
/****** Object:  ForeignKey [FK_RolePermissions_RoleId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RolePermissions_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RolePermissions]'))
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RolePermissions_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RolePermissions]'))
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_RoleId]
GO
/****** Object:  ForeignKey [FK_Roles_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Roles_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[Roles]'))
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Roles_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[Roles]'))
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.S_City_dbo.S_Province_provinceId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.S_City_dbo.S_Province_provinceId]') AND parent_object_id = OBJECT_ID(N'[dbo].[S_City]'))
ALTER TABLE [dbo].[S_City]  WITH CHECK ADD  CONSTRAINT [FK_dbo.S_City_dbo.S_Province_provinceId] FOREIGN KEY([provinceId])
REFERENCES [dbo].[S_Province] ([provinceId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.S_City_dbo.S_Province_provinceId]') AND parent_object_id = OBJECT_ID(N'[dbo].[S_City]'))
ALTER TABLE [dbo].[S_City] CHECK CONSTRAINT [FK_dbo.S_City_dbo.S_Province_provinceId]
GO
/****** Object:  ForeignKey [FK_S_Province_RegionId_Region_Id]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_S_Province_RegionId_Region_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[S_Province]'))
ALTER TABLE [dbo].[S_Province]  WITH CHECK ADD  CONSTRAINT [FK_S_Province_RegionId_Region_Id] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_S_Province_RegionId_Region_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[S_Province]'))
ALTER TABLE [dbo].[S_Province] CHECK CONSTRAINT [FK_S_Province_RegionId_Region_Id]
GO
/****** Object:  ForeignKey [FK_dbo.ScoreExchangeRecord_dbo.ExchangeObject_objectId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ScoreExchangeRecord_dbo.ExchangeObject_objectId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScoreExchangeRecord]'))
ALTER TABLE [dbo].[ScoreExchangeRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScoreExchangeRecord_dbo.ExchangeObject_objectId] FOREIGN KEY([objectId])
REFERENCES [dbo].[ExchangeObject] ([objectId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ScoreExchangeRecord_dbo.ExchangeObject_objectId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScoreExchangeRecord]'))
ALTER TABLE [dbo].[ScoreExchangeRecord] CHECK CONSTRAINT [FK_dbo.ScoreExchangeRecord_dbo.ExchangeObject_objectId]
GO
/****** Object:  ForeignKey [FK_dbo.ScoreExchangeRecord_dbo.UserAccount_userId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ScoreExchangeRecord_dbo.UserAccount_userId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScoreExchangeRecord]'))
ALTER TABLE [dbo].[ScoreExchangeRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScoreExchangeRecord_dbo.UserAccount_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[UserAccount] ([userId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ScoreExchangeRecord_dbo.UserAccount_userId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScoreExchangeRecord]'))
ALTER TABLE [dbo].[ScoreExchangeRecord] CHECK CONSTRAINT [FK_dbo.ScoreExchangeRecord_dbo.UserAccount_userId]
GO
/****** Object:  ForeignKey [FK_ScoreExchangeRecord_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScoreExchangeRecord_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScoreExchangeRecord]'))
ALTER TABLE [dbo].[ScoreExchangeRecord]  WITH CHECK ADD  CONSTRAINT [FK_ScoreExchangeRecord_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScoreExchangeRecord_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScoreExchangeRecord]'))
ALTER TABLE [dbo].[ScoreExchangeRecord] CHECK CONSTRAINT [FK_ScoreExchangeRecord_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.ScorePolicy_dbo.ProductVersion_productVersionId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ScorePolicy_dbo.ProductVersion_productVersionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScorePolicy]'))
ALTER TABLE [dbo].[ScorePolicy]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScorePolicy_dbo.ProductVersion_productVersionId] FOREIGN KEY([productVersionId])
REFERENCES [dbo].[ProductVersion] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ScorePolicy_dbo.ProductVersion_productVersionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScorePolicy]'))
ALTER TABLE [dbo].[ScorePolicy] CHECK CONSTRAINT [FK_dbo.ScorePolicy_dbo.ProductVersion_productVersionId]
GO
/****** Object:  ForeignKey [FK_ScorePolicy_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScorePolicy_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScorePolicy]'))
ALTER TABLE [dbo].[ScorePolicy]  WITH CHECK ADD  CONSTRAINT [FK_ScorePolicy_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScorePolicy_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScorePolicy]'))
ALTER TABLE [dbo].[ScorePolicy] CHECK CONSTRAINT [FK_ScorePolicy_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.SEMProperty_dbo.SEMProperty_SEMProperty2_id]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SEMProperty_dbo.SEMProperty_SEMProperty2_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMProperty]'))
ALTER TABLE [dbo].[SEMProperty]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SEMProperty_dbo.SEMProperty_SEMProperty2_id] FOREIGN KEY([SEMProperty2_id])
REFERENCES [dbo].[SEMProperty] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SEMProperty_dbo.SEMProperty_SEMProperty2_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMProperty]'))
ALTER TABLE [dbo].[SEMProperty] CHECK CONSTRAINT [FK_dbo.SEMProperty_dbo.SEMProperty_SEMProperty2_id]
GO
/****** Object:  ForeignKey [FK_dbo.SEMRewardPolicy_dbo.ShopGrade_shopGradeId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SEMRewardPolicy_dbo.ShopGrade_shopGradeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]'))
ALTER TABLE [dbo].[SEMRewardPolicy]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SEMRewardPolicy_dbo.ShopGrade_shopGradeId] FOREIGN KEY([shopGradeId])
REFERENCES [dbo].[ShopGrade] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SEMRewardPolicy_dbo.ShopGrade_shopGradeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]'))
ALTER TABLE [dbo].[SEMRewardPolicy] CHECK CONSTRAINT [FK_dbo.SEMRewardPolicy_dbo.ShopGrade_shopGradeId]
GO
/****** Object:  ForeignKey [FK_SEMRewardPolicy_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SEMRewardPolicy_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]'))
ALTER TABLE [dbo].[SEMRewardPolicy]  WITH CHECK ADD  CONSTRAINT [FK_SEMRewardPolicy_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SEMRewardPolicy_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEMRewardPolicy]'))
ALTER TABLE [dbo].[SEMRewardPolicy] CHECK CONSTRAINT [FK_SEMRewardPolicy_Tenants]
GO
/****** Object:  ForeignKey [FK_ShopGrade_ShopGrade]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ShopGrade_ShopGrade]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopGrade]'))
ALTER TABLE [dbo].[ShopGrade]  WITH CHECK ADD  CONSTRAINT [FK_ShopGrade_ShopGrade] FOREIGN KEY([Id])
REFERENCES [dbo].[ShopGrade] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ShopGrade_ShopGrade]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopGrade]'))
ALTER TABLE [dbo].[ShopGrade] CHECK CONSTRAINT [FK_ShopGrade_ShopGrade]
GO
/****** Object:  ForeignKey [FK_ShopGrade_StatusCollection]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ShopGrade_StatusCollection]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopGrade]'))
ALTER TABLE [dbo].[ShopGrade]  WITH CHECK ADD  CONSTRAINT [FK_ShopGrade_StatusCollection] FOREIGN KEY([status])
REFERENCES [dbo].[StatusCollection] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ShopGrade_StatusCollection]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopGrade]'))
ALTER TABLE [dbo].[ShopGrade] CHECK CONSTRAINT [FK_ShopGrade_StatusCollection]
GO
/****** Object:  ForeignKey [FK_ShopGrade_Tenants]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ShopGrade_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopGrade]'))
ALTER TABLE [dbo].[ShopGrade]  WITH CHECK ADD  CONSTRAINT [FK_ShopGrade_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ShopGrade_Tenants]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopGrade]'))
ALTER TABLE [dbo].[ShopGrade] CHECK CONSTRAINT [FK_ShopGrade_Tenants]
GO
/****** Object:  ForeignKey [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewItem_reviewItemId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewItem_reviewItemId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopReviewRecordDetail]'))
ALTER TABLE [dbo].[ShopReviewRecordDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewItem_reviewItemId] FOREIGN KEY([reviewItemId])
REFERENCES [dbo].[ShopReviewItem] ([itemId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewItem_reviewItemId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopReviewRecordDetail]'))
ALTER TABLE [dbo].[ShopReviewRecordDetail] CHECK CONSTRAINT [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewItem_reviewItemId]
GO
/****** Object:  ForeignKey [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewRecord_recordId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewRecord_recordId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopReviewRecordDetail]'))
ALTER TABLE [dbo].[ShopReviewRecordDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewRecord_recordId] FOREIGN KEY([recordId])
REFERENCES [dbo].[ShopReviewRecord] ([reviewId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewRecord_recordId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopReviewRecordDetail]'))
ALTER TABLE [dbo].[ShopReviewRecordDetail] CHECK CONSTRAINT [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewRecord_recordId]
GO
/****** Object:  ForeignKey [FK_dbo.ShopSeller_dbo.ShopSellerRole_roleName]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShopSeller_dbo.ShopSellerRole_roleName]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopSeller]'))
ALTER TABLE [dbo].[ShopSeller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopSeller_dbo.ShopSellerRole_roleName] FOREIGN KEY([roleName])
REFERENCES [dbo].[ShopSellerRole] ([roleName])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShopSeller_dbo.ShopSellerRole_roleName]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopSeller]'))
ALTER TABLE [dbo].[ShopSeller] CHECK CONSTRAINT [FK_dbo.ShopSeller_dbo.ShopSellerRole_roleName]
GO
/****** Object:  ForeignKey [FK_dbo.ShopSeller_dbo.UserAccount_userId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShopSeller_dbo.UserAccount_userId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopSeller]'))
ALTER TABLE [dbo].[ShopSeller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopSeller_dbo.UserAccount_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[UserAccount] ([userId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShopSeller_dbo.UserAccount_userId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShopSeller]'))
ALTER TABLE [dbo].[ShopSeller] CHECK CONSTRAINT [FK_dbo.ShopSeller_dbo.UserAccount_userId]
GO
/****** Object:  ForeignKey [FK_dbo.SN_dbo.SNGenerate_generateTaskId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SN_dbo.SNGenerate_generateTaskId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SN]'))
ALTER TABLE [dbo].[SN]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SN_dbo.SNGenerate_generateTaskId] FOREIGN KEY([generateTaskId])
REFERENCES [dbo].[SNGenerate] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SN_dbo.SNGenerate_generateTaskId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SN]'))
ALTER TABLE [dbo].[SN] CHECK CONSTRAINT [FK_dbo.SN_dbo.SNGenerate_generateTaskId]
GO
/****** Object:  ForeignKey [FK_dbo.SNGenerate_dbo.ProductVersion_productVersionId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SNGenerate_dbo.ProductVersion_productVersionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SNGenerate]'))
ALTER TABLE [dbo].[SNGenerate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SNGenerate_dbo.ProductVersion_productVersionId] FOREIGN KEY([productVersionId])
REFERENCES [dbo].[ProductVersion] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SNGenerate_dbo.ProductVersion_productVersionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SNGenerate]'))
ALTER TABLE [dbo].[SNGenerate] CHECK CONSTRAINT [FK_dbo.SNGenerate_dbo.ProductVersion_productVersionId]
GO
/****** Object:  ForeignKey [FK_dbo.SpecialRewardPolicyDetail_dbo.SpecialRewardPolicy_policyId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SpecialRewardPolicyDetail_dbo.SpecialRewardPolicy_policyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecialRewardPolicyDetail]'))
ALTER TABLE [dbo].[SpecialRewardPolicyDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SpecialRewardPolicyDetail_dbo.SpecialRewardPolicy_policyId] FOREIGN KEY([policyId])
REFERENCES [dbo].[SpecialRewardPolicy] ([policyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SpecialRewardPolicyDetail_dbo.SpecialRewardPolicy_policyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecialRewardPolicyDetail]'))
ALTER TABLE [dbo].[SpecialRewardPolicyDetail] CHECK CONSTRAINT [FK_dbo.SpecialRewardPolicyDetail_dbo.SpecialRewardPolicy_policyId]
GO
/****** Object:  ForeignKey [FK_dbo.SysMessage_dbo.SysMessageHistory_taskId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SysMessage_dbo.SysMessageHistory_taskId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SysMessage]'))
ALTER TABLE [dbo].[SysMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SysMessage_dbo.SysMessageHistory_taskId] FOREIGN KEY([taskId])
REFERENCES [dbo].[SysMessageHistory] ([taskId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SysMessage_dbo.SysMessageHistory_taskId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SysMessage]'))
ALTER TABLE [dbo].[SysMessage] CHECK CONSTRAINT [FK_dbo.SysMessage_dbo.SysMessageHistory_taskId]
GO
/****** Object:  ForeignKey [FK_dbo.UserAccount_dbo.S_City_addr_CityID]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserAccount_dbo.S_City_addr_CityID]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserAccount]'))
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAccount_dbo.S_City_addr_CityID] FOREIGN KEY([addr_CityID])
REFERENCES [dbo].[S_City] ([cityId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserAccount_dbo.S_City_addr_CityID]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserAccount]'))
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_dbo.UserAccount_dbo.S_City_addr_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.UserAccount_dbo.S_District_addr_DistrictID]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserAccount_dbo.S_District_addr_DistrictID]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserAccount]'))
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAccount_dbo.S_District_addr_DistrictID] FOREIGN KEY([addr_DistrictID])
REFERENCES [dbo].[S_District] ([districtId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserAccount_dbo.S_District_addr_DistrictID]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserAccount]'))
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_dbo.UserAccount_dbo.S_District_addr_DistrictID]
GO
/****** Object:  ForeignKey [FK_dbo.UserAccount_dbo.S_Province_addr_ProvinceID]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserAccount_dbo.S_Province_addr_ProvinceID]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserAccount]'))
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAccount_dbo.S_Province_addr_ProvinceID] FOREIGN KEY([addr_ProvinceID])
REFERENCES [dbo].[S_Province] ([provinceId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserAccount_dbo.S_Province_addr_ProvinceID]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserAccount]'))
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_dbo.UserAccount_dbo.S_Province_addr_ProvinceID]
GO
/****** Object:  ForeignKey [FK_UserPermissions_UserId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserPermissions_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPermissions]'))
ALTER TABLE [dbo].[UserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_UserPermissions_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserPermissions_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPermissions]'))
ALTER TABLE [dbo].[UserPermissions] CHECK CONSTRAINT [FK_UserPermissions_UserId]
GO
/****** Object:  ForeignKey [FK_UserRoles_RoleId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRoles]'))
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRoles]'))
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_UserRoles_UserId]    Script Date: 06/20/2016 20:33:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRoles_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRoles]'))
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserRoles_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRoles]'))
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_UserId]
GO
