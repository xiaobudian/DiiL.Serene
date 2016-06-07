USE Aoc
GO

/****** Object:  Table [dbo].[ShopType]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[createtime] [datetime] NOT NULL,
	[description] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.ShopType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopSeriesNumber]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopSeriesNumber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[number] [varchar](128) NOT NULL,
	[areaManagerid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopSeriesNumber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopSellerRole]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopSellerRole](
	[roleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.ShopSellerRole] PRIMARY KEY CLUSTERED 
(
	[roleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopReviewRecord]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.ShopReviewRecord] PRIMARY KEY CLUSTERED 
(
	[reviewId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopReviewItem]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopReviewItem](
	[itemId] [int] IDENTITY(1,1) NOT NULL,
	[parentItemId] [int] NOT NULL,
	[content] [varchar](500) NOT NULL,
	[orders] [int] NOT NULL,
	[score] [int] NULL,
	[status] [varchar](50) NOT NULL,
	[editTime] [datetime] NULL,
	[level] [int] NULL,
 CONSTRAINT [PK_dbo.ShopReviewItem] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpecialRewardPolicy]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialRewardPolicy](
	[policyId] [int] IDENTITY(1,1) NOT NULL,
	[beginTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[status] [tinyint] NOT NULL,
	[editTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.SpecialRewardPolicy] PRIMARY KEY CLUSTERED 
(
	[policyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SNRecycleDetail]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.SNRecycleDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[recycleTaskId] ASC,
	[SN] ASC,
	[status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNRecycle]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.SNRecycle] PRIMARY KEY CLUSTERED 
(
	[recycleTaskId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNImport]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_SNImport] PRIMARY KEY CLUSTERED 
(
	[importId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNComplain]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.SNComplain] PRIMARY KEY CLUSTERED 
(
	[complainId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopScore]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopScore](
	[shopID] [varchar](50) NOT NULL,
	[total] [bigint] NULL,
	[exchange] [bigint] NULL,
	[remain] [bigint] NULL,
 CONSTRAINT [PK_dbo.ShopScore] PRIMARY KEY CLUSTERED 
(
	[shopID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ExportHistory]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ExportHistory](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](128) NULL,
	[dbSqlString] [varchar](4000) NULL,
	[fileName] [varchar](128) NULL,
	[fileExName] [varchar](16) NULL,
	[exportTime] [datetime] NULL,
	[managerId] [int] NULL,
	[managerUserName] [varchar](128) NULL,
 CONSTRAINT [PK_dbo.Sys_ExportHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Exception]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Exception](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [varchar](4096) NULL,
	[statckTrace] [varchar](4096) NULL,
	[helpLink] [varchar](4096) NULL,
	[source] [varchar](4096) NULL,
	[occurredTime] [datetime] NULL,
	[module] [varchar](128) NULL,
	[userData1] [varchar](4096) NULL,
	[userData2] [varchar](4096) NULL,
	[binException] [varbinary](8000) NULL,
	[bin2] [varbinary](8000) NULL,
	[bin3] [varbinary](8000) NULL,
	[bin4] [varbinary](8000) NULL,
	[xml1] [varchar](4096) NULL,
	[xml2] [varchar](4096) NULL,
	[xml3] [varchar](4096) NULL,
	[xml4] [varchar](4096) NULL,
 CONSTRAINT [PK_dbo.Sys_Exception] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Swtich]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Swtich](
	[id] [int] NOT NULL,
	[isOpen] [bit] NULL,
 CONSTRAINT [PK_dbo.Swtich] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingMaterial]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysUsreActionRecord]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysRewardRecord]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysMessageHistory]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPunish]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManagerRole]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManagerRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NOT NULL,
	[description] [varchar](128) NULL,
 CONSTRAINT [PK_dbo.ManagerRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManagerAction]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManagerAction](
	[actionId] [int] IDENTITY(1,1) NOT NULL,
	[actionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.ManagerAction] PRIMARY KEY CLUSTERED 
(
	[actionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExaminationStaff]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExaminationStaff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](40) NOT NULL,
	[idCardNo] [varchar](30) NOT NULL,
	[idCardPhotoPath] [varchar](200) NULL,
	[phoneNo] [varchar](20) NULL,
	[gender] [int] NOT NULL,
	[address] [varchar](200) NOT NULL,
	[jobStatus] [int] NULL,
	[createDate] [datetime] NULL,
	[userAccountId] [int] NULL,
	[managerAccountId] [int] NULL,
 CONSTRAINT [PK_dbo.ExaminationStaff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamPrizeCategory]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamPrizeCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.ExamPrizeCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Examination]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Examination](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[beginTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[createDate] [datetime] NULL,
	[fullMark] [int] NULL,
	[descirption] [varchar](200) NULL,
	[status] [int] NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Examination] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EC_Complain]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandingAwardPolicy]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BrandingAwardPolicy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[description] [varchar](200) NULL,
	[filePath] [varchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.BrandingAwardPolicy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Article]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Article] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgreementStatus]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgreementStatus](
	[agreementStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.AgreementStatus] PRIMARY KEY CLUSTERED 
(
	[agreementStatus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgreementApproveResult]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgreementApproveResult](
	[approveResult] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.AgreementApproveResult] PRIMARY KEY CLUSTERED 
(
	[approveResult] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExaminationPoint]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExaminationPoint](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[availablePoint] [int] NULL,
	[usedExamPoint] [int] NULL,
	[redeemedExaminationPoint] [int] NULL,
	[userAccountId] [int] NULL,
	[managerAccountId] [int] NULL,
 CONSTRAINT [PK_dbo.ExaminationPoint] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FreeTrialCategory]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FreeTrialCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](20) NOT NULL,
	[createTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.FreeTrialCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExProperty_Version]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExProperty_Version](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[exPropertyId] [int] NOT NULL,
	[versionId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ExProperty_Version] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExchangeObject]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.ExchangeObject] PRIMARY KEY CLUSTERED 
(
	[objectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductExProperty]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductExProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductExProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PolicyCategory]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PolicyCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.PolicyCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Policy]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlatformRecognizedConfirmation]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[MarketingChannel]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Logistics_Region]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Logistics_Region](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[logisticsId] [int] NULL,
	[regionId] [int] NULL,
	[createDate] [datetime] NULL,
	[regionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Logistics_Region] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FreeTrialPolicy]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FreeTrialPolicy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[filePath] [varchar](100) NULL,
	[swfPath] [varchar](100) NULL,
 CONSTRAINT [PK_dbo.FreeTrialPolicy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductLine]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[createTime] [datetime] NOT NULL,
	[status] [nvarchar](6) NULL,
 CONSTRAINT [PK_dbo.ProductLine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_Province]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_Province](
	[provinceId] [int] NOT NULL,
	[provinceName] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.S_Province] PRIMARY KEY CLUSTERED 
(
	[provinceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_District]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_District](
	[districtId] [int] NOT NULL,
	[districtName] [varchar](50) NULL,
	[cityId] [int] NULL,
 CONSTRAINT [PK_dbo.S_District] PRIMARY KEY CLUSTERED 
(
	[districtId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Question]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NOT NULL,
	[score] [int] NOT NULL,
	[type] [int] NOT NULL,
	[examinationType] [int] NOT NULL,
	[correctAnswer] [varchar](20) NOT NULL,
	[choiceA] [varchar](100) NULL,
	[choiceB] [varchar](100) NULL,
	[choiceC] [varchar](100) NULL,
	[choiceD] [varchar](100) NULL,
 CONSTRAINT [PK_dbo.Question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEMProperty]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Role_Product]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NULL,
	[productlineId] [int] NOT NULL,
	[createDate] [datetime] NULL,
	[ManagerRole_id] [int] NULL,
 CONSTRAINT [PK_dbo.Role_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_ExchangePrize]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_ExchangePrize](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NULL,
	[prizeid] [int] NULL,
	[createDate] [datetime] NULL,
	[ManagerRole_id] [int] NULL,
 CONSTRAINT [PK_dbo.Role_ExchangePrize] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_City]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductForFreeTrail]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.ProductForFreeTrail] PRIMARY KEY CLUSTERED 
(
	[trialId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductSerial]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSerial](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[createTime] [datetime] NOT NULL,
	[status] [nvarchar](6) NULL,
	[ProductLineId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductSerial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManagerRole_ManageAction]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagerRole_ManageAction](
	[actionId] [int] NOT NULL,
	[roleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ManagerRole_ManageAction] PRIMARY KEY CLUSTERED 
(
	[actionId] ASC,
	[roleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExaminationPaper]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExaminationPaper](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[questionId] [int] NOT NULL,
	[examinationId] [int] NOT NULL,
	[titleSequence] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ExaminationPaper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerRecord]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AnswerRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isCorrect] [bit] NULL,
	[userAnswers] [varchar](20) NULL,
	[examinationId] [int] NOT NULL,
	[examinationStaffId] [int] NULL,
	[examinationPaperId] [int] NULL,
	[examRecordId] [int] NULL,
	[questionId] [int] NULL,
	[answerTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AnswerRecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamPrize]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamPrize](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prizeName] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[prizePicture] [varchar](200) NOT NULL,
	[description] [varchar](200) NOT NULL,
	[inventory] [int] NOT NULL,
	[exchangeTimes] [int] NULL,
	[examPrizeStatus] [int] NULL,
	[createTime] [datetime] NOT NULL,
	[examPrizeCategoryId] [int] NULL,
 CONSTRAINT [PK_dbo.ExamPrize] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExaminationRecord]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExaminationRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[beginAnswerTime] [datetime] NULL,
	[endAnswerTime] [datetime] NULL,
	[score] [int] NULL,
	[status] [int] NOT NULL,
	[examinationStaffId] [int] NOT NULL,
	[examinationId] [int] NULL,
 CONSTRAINT [PK_dbo.ExaminationRecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManagerAccount]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManagerAccount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](128) NOT NULL,
	[status] [varchar](6) NOT NULL,
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
 CONSTRAINT [PK_dbo.ManagerAccount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [Aoc]
GO

/****** Object:  Index [INDEX_UserName]    Script Date: 06/07/2016 14:59:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [INDEX_UserName] ON [dbo].[ManagerAccount] 
(
	[userName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuestionnaireFeedback]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionnaireFeedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [text] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[examinationStaffId] [int] NOT NULL,
	[examinationId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.QuestionnaireFeedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMessage]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpecialRewardPolicyDetail]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.SpecialRewardPolicyDetail] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopReviewRecordDetail]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.ShopReviewRecordDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopGrade]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopGrade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[maxSNNumber] [int] NULL,
	[maxStreetShopMoney] [decimal](18, 2) NULL,
	[maxFreeTrialCount] [int] NOT NULL,
	[status] [nvarchar](max) NULL,
	[category] [int] NOT NULL,
	[specialAmount] [int] NOT NULL,
	[order] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShopGrade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEMRewardPolicy]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
 CONSTRAINT [PK_dbo.SEMRewardPolicy] PRIMARY KEY CLUSTERED 
(
	[policyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.UserAccount] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manager_City]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manager_City](
	[cityId] [int] NOT NULL,
	[provinceId] [int] NOT NULL,
	[cityName] [varchar](50) NULL,
	[provinceName] [varchar](50) NULL,
	[bigAreaManagerId] [int] NULL,
	[areaManagerId] [int] NULL,
	[platformId] [int] NULL,
	[areaProviderId] [int] NULL,
	[bigAreaManagerUserName] [varchar](128) NULL,
	[platformProviderUserName] [varchar](128) NULL,
	[areaManagerUserName] [varchar](128) NULL,
	[areaProviderUserName] [varchar](128) NULL,
 CONSTRAINT [PK_dbo.Manager_City] PRIMARY KEY CLUSTERED 
(
	[cityId] ASC,
	[provinceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgreementTemplate]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgreementTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[agreementType] [int] NOT NULL,
	[shopGradeId] [int] NOT NULL,
	[approveFlow] [varchar](50) NOT NULL,
	[Content] [ntext] NOT NULL,
	--[bookMarks] [varchar](1024) NOT NULL,
	--[yearOfDate] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	--[expiredTime] [datetime] NULL,
	[type] [varchar](8) NULL,
 CONSTRAINT [PK_dbo.AgreementTemplate] PRIMARY KEY CLUSTERED 
(
	[agreementTemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExchangeExamPrizeRecord]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExchangeExamPrizeRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[spendExamScore] [int] NOT NULL,
	[exchangeTime] [datetime] NOT NULL,
	[confirmTime] [datetime] NULL,
	[examPrizeId] [int] NULL,
	[exchangeStatus] [int] NOT NULL,
	[userAccountId] [int] NULL,
	[managerAccountId] [int] NULL,
	[awardingPerson] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.ExchangeExamPrizeRecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FreeTrialList]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.FreeTrialList] PRIMARY KEY CLUSTERED 
(
	[listId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role_ShopGarde]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_ShopGarde](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NULL,
	[shopGradeId] [int] NULL,
	[ManagerRole_id] [int] NULL,
 CONSTRAINT [PK_dbo.Role_ShopGarde] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVersion]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[createTime] [datetime] NOT NULL,
	[status] [nvarchar](6) NULL,
	[ProductSerialId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScorePolicy]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScorePolicy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productVersionId] [int] NOT NULL,
	[beginTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[score] [int] NOT NULL,
	[description] [varchar](256) NULL,
	[status] [varchar](50) NOT NULL,
	[size] [varchar](20) NULL,
	--[category] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ScorePolicy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScoreExchangeRecord]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.ScoreExchangeRecord] PRIMARY KEY CLUSTERED 
(
	[exchangeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RewardMonthyStatistical]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.RewardMonthyStatistical] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductExPropertyProductVersions]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductExPropertyProductVersions](
	[ProductVersion_id] [int] NOT NULL,
	[ProductExProperty_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductExPropertyProductVersions] PRIMARY KEY CLUSTERED 
(
	[ProductExProperty_id] ASC,
	[ProductVersion_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agreement]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.Agreement] PRIMARY KEY CLUSTERED 
(
	[agreementId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserShopGrade]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserShopGrade](
	[userid] [int] NOT NULL,
	[shopgradeid] [int] NOT NULL,
	[status] [tinyint] NOT NULL,
	[createtime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.UserShopGrade] PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[shopgradeid] ASC,
	[status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopSeller]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_dbo.ShopSeller] PRIMARY KEY CLUSTERED 
(
	[sellerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNGenerate]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNGenerate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productVersionId] [int] NOT NULL,
	[prefix] [varchar](12) NOT NULL,
	[regionBegin] [int] NOT NULL,
	[regionEnd] [int] NOT NULL,
	--[count] [int] NOT NULL,
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SN]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SN](
	[number] [varchar](50) NOT NULL,
	[generateTaskId] [int] NOT NULL,
	[productVersionId] [int] NULL,
	[snPrefix] [varchar](16) NULL,
	[snValue] [int] NULL,
	[snLast2Char] [varchar](4) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.SN] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgreementApproveRecord]    Script Date: 06/03/2016 17:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__SEMReward__maxSc__503BEA1C]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SEMRewardPolicy] ADD  DEFAULT ((0)) FOR [maxScore]
GO
/****** Object:  Default [DF__SEMReward__notSt__51300E55]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SEMRewardPolicy] ADD  DEFAULT ((0)) FOR [notStreetReward]
GO
/****** Object:  Default [DF__SEMReward__stree__5224328E]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SEMRewardPolicy] ADD  DEFAULT ((0)) FOR [streetReward]
GO
/****** Object:  Default [DF__SNImport__sn__56E8E7AB]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SNImport] ADD  DEFAULT ('') FOR [sn]
GO
/****** Object:  ForeignKey [FK_dbo.Agreement_dbo.AgreementStatus_agreementStatus]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agreement_dbo.AgreementStatus_agreementStatus] FOREIGN KEY([agreementStatus])
REFERENCES [dbo].[AgreementStatus] ([agreementStatus])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_dbo.Agreement_dbo.AgreementStatus_agreementStatus]
GO
/****** Object:  ForeignKey [FK_dbo.Agreement_dbo.AgreementTemplate_agreementTemplate]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agreement_dbo.AgreementTemplate_agreementTemplate] FOREIGN KEY([agreementTemplate])
REFERENCES [dbo].[AgreementTemplate] ([Id])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_dbo.Agreement_dbo.AgreementTemplate_agreementTemplate]
GO
/****** Object:  ForeignKey [FK_dbo.Agreement_dbo.ManagerRole_nextApproveRole]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agreement_dbo.ManagerRole_nextApproveRole] FOREIGN KEY([nextApproveRole])
REFERENCES [dbo].[ManagerRole] ([id])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_dbo.Agreement_dbo.ManagerRole_nextApproveRole]
GO
/****** Object:  ForeignKey [FK_dbo.Agreement_dbo.UserAccount_userId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agreement_dbo.UserAccount_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[UserAccount] ([userId])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_dbo.Agreement_dbo.UserAccount_userId]
GO
/****** Object:  ForeignKey [FK_dbo.AgreementApproveRecord_dbo.Agreement_shopAgreementId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[AgreementApproveRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgreementApproveRecord_dbo.Agreement_shopAgreementId] FOREIGN KEY([shopAgreementId])
REFERENCES [dbo].[Agreement] ([agreementId])
GO
ALTER TABLE [dbo].[AgreementApproveRecord] CHECK CONSTRAINT [FK_dbo.AgreementApproveRecord_dbo.Agreement_shopAgreementId]
GO
/****** Object:  ForeignKey [FK_dbo.AgreementApproveRecord_dbo.AgreementApproveResult_approvResult]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[AgreementApproveRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgreementApproveRecord_dbo.AgreementApproveResult_approvResult] FOREIGN KEY([approvResult])
REFERENCES [dbo].[AgreementApproveResult] ([approveResult])
GO
ALTER TABLE [dbo].[AgreementApproveRecord] CHECK CONSTRAINT [FK_dbo.AgreementApproveRecord_dbo.AgreementApproveResult_approvResult]
GO
/****** Object:  ForeignKey [FK_dbo.AgreementTemplate_dbo.ShopGrade_shopGradId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[AgreementTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgreementTemplate_dbo.ShopGrade_shopGradId] FOREIGN KEY([shopGradId])
REFERENCES [dbo].[ShopGrade] ([Id])
GO
ALTER TABLE [dbo].[AgreementTemplate] CHECK CONSTRAINT [FK_dbo.AgreementTemplate_dbo.ShopGrade_shopGradId]
GO
/****** Object:  ForeignKey [FK_dbo.AnswerRecord_dbo.ExaminationStaff_examinationStaffId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[AnswerRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AnswerRecord_dbo.ExaminationStaff_examinationStaffId] FOREIGN KEY([examinationStaffId])
REFERENCES [dbo].[ExaminationStaff] ([id])
GO
ALTER TABLE [dbo].[AnswerRecord] CHECK CONSTRAINT [FK_dbo.AnswerRecord_dbo.ExaminationStaff_examinationStaffId]
GO
/****** Object:  ForeignKey [FK_dbo.AnswerRecord_dbo.Question_questionId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[AnswerRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AnswerRecord_dbo.Question_questionId] FOREIGN KEY([questionId])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[AnswerRecord] CHECK CONSTRAINT [FK_dbo.AnswerRecord_dbo.Question_questionId]
GO
/****** Object:  ForeignKey [FK_dbo.ExaminationPaper_dbo.Examination_examinationId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ExaminationPaper]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExaminationPaper_dbo.Examination_examinationId] FOREIGN KEY([examinationId])
REFERENCES [dbo].[Examination] ([id])
GO
ALTER TABLE [dbo].[ExaminationPaper] CHECK CONSTRAINT [FK_dbo.ExaminationPaper_dbo.Examination_examinationId]
GO
/****** Object:  ForeignKey [FK_dbo.ExaminationPaper_dbo.Question_questionId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ExaminationPaper]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExaminationPaper_dbo.Question_questionId] FOREIGN KEY([questionId])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[ExaminationPaper] CHECK CONSTRAINT [FK_dbo.ExaminationPaper_dbo.Question_questionId]
GO
/****** Object:  ForeignKey [FK_dbo.ExaminationRecord_dbo.Examination_examinationId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ExaminationRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExaminationRecord_dbo.Examination_examinationId] FOREIGN KEY([examinationId])
REFERENCES [dbo].[Examination] ([id])
GO
ALTER TABLE [dbo].[ExaminationRecord] CHECK CONSTRAINT [FK_dbo.ExaminationRecord_dbo.Examination_examinationId]
GO
/****** Object:  ForeignKey [FK_dbo.ExaminationRecord_dbo.ExaminationStaff_examinationStaffId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ExaminationRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExaminationRecord_dbo.ExaminationStaff_examinationStaffId] FOREIGN KEY([examinationStaffId])
REFERENCES [dbo].[ExaminationStaff] ([id])
GO
ALTER TABLE [dbo].[ExaminationRecord] CHECK CONSTRAINT [FK_dbo.ExaminationRecord_dbo.ExaminationStaff_examinationStaffId]
GO
/****** Object:  ForeignKey [FK_dbo.ExamPrize_dbo.ExamPrizeCategory_examPrizeCategoryId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ExamPrize]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExamPrize_dbo.ExamPrizeCategory_examPrizeCategoryId] FOREIGN KEY([examPrizeCategoryId])
REFERENCES [dbo].[ExamPrizeCategory] ([id])
GO
ALTER TABLE [dbo].[ExamPrize] CHECK CONSTRAINT [FK_dbo.ExamPrize_dbo.ExamPrizeCategory_examPrizeCategoryId]
GO
/****** Object:  ForeignKey [FK_dbo.ExchangeExamPrizeRecord_dbo.ExamPrize_examPrizeId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ExchangeExamPrizeRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExchangeExamPrizeRecord_dbo.ExamPrize_examPrizeId] FOREIGN KEY([examPrizeId])
REFERENCES [dbo].[ExamPrize] ([id])
GO
ALTER TABLE [dbo].[ExchangeExamPrizeRecord] CHECK CONSTRAINT [FK_dbo.ExchangeExamPrizeRecord_dbo.ExamPrize_examPrizeId]
GO
/****** Object:  ForeignKey [FK_dbo.ProductFreeTrialList_dbo.ProductForFreeTrail_freeTrialId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[FreeTrialList]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductFreeTrialList_dbo.ProductForFreeTrail_freeTrialId] FOREIGN KEY([freeTrialId])
REFERENCES [dbo].[ProductForFreeTrail] ([trialId])
GO
ALTER TABLE [dbo].[FreeTrialList] CHECK CONSTRAINT [FK_dbo.ProductFreeTrialList_dbo.ProductForFreeTrail_freeTrialId]
GO
/****** Object:  ForeignKey [FK_dbo.Manager_City_dbo.S_City_cityId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Manager_City]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Manager_City_dbo.S_City_cityId] FOREIGN KEY([cityId])
REFERENCES [dbo].[S_City] ([cityId])
GO
ALTER TABLE [dbo].[Manager_City] CHECK CONSTRAINT [FK_dbo.Manager_City_dbo.S_City_cityId]
GO
/****** Object:  ForeignKey [FK_dbo.ManagerAccount_dbo.ManagerRole_roleId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ManagerAccount]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ManagerAccount_dbo.ManagerRole_roleId] FOREIGN KEY([roleId])
REFERENCES [dbo].[ManagerRole] ([id])
GO
ALTER TABLE [dbo].[ManagerAccount] CHECK CONSTRAINT [FK_dbo.ManagerAccount_dbo.ManagerRole_roleId]
GO
/****** Object:  ForeignKey [FK_dbo.ManagerRole_ManageAction_dbo.ManagerAction_actionId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ManagerRole_ManageAction]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ManagerRole_ManageAction_dbo.ManagerAction_actionId] FOREIGN KEY([actionId])
REFERENCES [dbo].[ManagerAction] ([actionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ManagerRole_ManageAction] CHECK CONSTRAINT [FK_dbo.ManagerRole_ManageAction_dbo.ManagerAction_actionId]
GO
/****** Object:  ForeignKey [FK_dbo.ManagerRole_ManageAction_dbo.ManagerRole_roleId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ManagerRole_ManageAction]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ManagerRole_ManageAction_dbo.ManagerRole_roleId] FOREIGN KEY([roleId])
REFERENCES [dbo].[ManagerRole] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ManagerRole_ManageAction] CHECK CONSTRAINT [FK_dbo.ManagerRole_ManageAction_dbo.ManagerRole_roleId]
GO
/****** Object:  ForeignKey [FK_dbo.ProductVersionProductExProperties_dbo.ProductExProperty_ProductExProperty_id]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ProductExPropertyProductVersions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVersionProductExProperties_dbo.ProductExProperty_ProductExProperty_id] FOREIGN KEY([ProductExProperty_id])
REFERENCES [dbo].[ProductExProperty] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductExPropertyProductVersions] CHECK CONSTRAINT [FK_dbo.ProductVersionProductExProperties_dbo.ProductExProperty_ProductExProperty_id]
GO
/****** Object:  ForeignKey [FK_dbo.ProductVersionProductExProperties_dbo.ProductVersion_ProductVersion_id]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ProductExPropertyProductVersions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVersionProductExProperties_dbo.ProductVersion_ProductVersion_id] FOREIGN KEY([ProductVersion_id])
REFERENCES [dbo].[ProductVersion] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductExPropertyProductVersions] CHECK CONSTRAINT [FK_dbo.ProductVersionProductExProperties_dbo.ProductVersion_ProductVersion_id]
GO
/****** Object:  ForeignKey [FK_dbo.ProductForFreeTrail_dbo.ShopType_category]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ProductForFreeTrail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductForFreeTrail_dbo.ShopType_category] FOREIGN KEY([category])
REFERENCES [dbo].[ShopType] ([id])
GO
ALTER TABLE [dbo].[ProductForFreeTrail] CHECK CONSTRAINT [FK_dbo.ProductForFreeTrail_dbo.ShopType_category]
GO
/****** Object:  ForeignKey [FK_dbo.ProductSerial_dbo.ProductLine_ProductLineId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ProductSerial]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductSerial_dbo.ProductLine_ProductLineId] FOREIGN KEY([ProductLineId])
REFERENCES [dbo].[ProductLine] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSerial] CHECK CONSTRAINT [FK_dbo.ProductSerial_dbo.ProductLine_ProductLineId]
GO
/****** Object:  ForeignKey [FK_dbo.ProductVersion_dbo.ProductSerial_ProductSerialId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ProductVersion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVersion_dbo.ProductSerial_ProductSerialId] FOREIGN KEY([ProductSerialId])
REFERENCES [dbo].[ProductSerial] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductVersion] CHECK CONSTRAINT [FK_dbo.ProductVersion_dbo.ProductSerial_ProductSerialId]
GO
/****** Object:  ForeignKey [FK_dbo.QuestionnaireFeedback_dbo.Examination_examinationId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[QuestionnaireFeedback]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuestionnaireFeedback_dbo.Examination_examinationId] FOREIGN KEY([examinationId])
REFERENCES [dbo].[Examination] ([id])
GO
ALTER TABLE [dbo].[QuestionnaireFeedback] CHECK CONSTRAINT [FK_dbo.QuestionnaireFeedback_dbo.Examination_examinationId]
GO
/****** Object:  ForeignKey [FK_dbo.QuestionnaireFeedback_dbo.ExaminationStaff_examinationStaffId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[QuestionnaireFeedback]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuestionnaireFeedback_dbo.ExaminationStaff_examinationStaffId] FOREIGN KEY([examinationStaffId])
REFERENCES [dbo].[ExaminationStaff] ([id])
GO
ALTER TABLE [dbo].[QuestionnaireFeedback] CHECK CONSTRAINT [FK_dbo.QuestionnaireFeedback_dbo.ExaminationStaff_examinationStaffId]
GO
/****** Object:  ForeignKey [FK_dbo.RewardMonthyStatistical_dbo.UserAccount_userId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[RewardMonthyStatistical]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RewardMonthyStatistical_dbo.UserAccount_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[UserAccount] ([userId])
GO
ALTER TABLE [dbo].[RewardMonthyStatistical] CHECK CONSTRAINT [FK_dbo.RewardMonthyStatistical_dbo.UserAccount_userId]
GO
/****** Object:  ForeignKey [FK_dbo.Role_ExchangePrize_dbo.ExchangeObject_prizeid]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Role_ExchangePrize]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_ExchangePrize_dbo.ExchangeObject_prizeid] FOREIGN KEY([prizeid])
REFERENCES [dbo].[ExchangeObject] ([objectId])
GO
ALTER TABLE [dbo].[Role_ExchangePrize] CHECK CONSTRAINT [FK_dbo.Role_ExchangePrize_dbo.ExchangeObject_prizeid]
GO
/****** Object:  ForeignKey [FK_dbo.Role_ExchangePrize_dbo.ManagerRole_ManagerRole_id]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Role_ExchangePrize]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_ExchangePrize_dbo.ManagerRole_ManagerRole_id] FOREIGN KEY([ManagerRole_id])
REFERENCES [dbo].[ManagerRole] ([id])
GO
ALTER TABLE [dbo].[Role_ExchangePrize] CHECK CONSTRAINT [FK_dbo.Role_ExchangePrize_dbo.ManagerRole_ManagerRole_id]
GO
/****** Object:  ForeignKey [FK_dbo.Role_Product_dbo.ManagerRole_ManagerRole_id]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Role_Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_Product_dbo.ManagerRole_ManagerRole_id] FOREIGN KEY([ManagerRole_id])
REFERENCES [dbo].[ManagerRole] ([id])
GO
ALTER TABLE [dbo].[Role_Product] CHECK CONSTRAINT [FK_dbo.Role_Product_dbo.ManagerRole_ManagerRole_id]
GO
/****** Object:  ForeignKey [FK_dbo.Role_ShopGarde_dbo.ManagerRole_ManagerRole_id]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Role_ShopGarde]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_ShopGarde_dbo.ManagerRole_ManagerRole_id] FOREIGN KEY([ManagerRole_id])
REFERENCES [dbo].[ManagerRole] ([id])
GO
ALTER TABLE [dbo].[Role_ShopGarde] CHECK CONSTRAINT [FK_dbo.Role_ShopGarde_dbo.ManagerRole_ManagerRole_id]
GO
/****** Object:  ForeignKey [FK_dbo.Role_ShopGarde_dbo.ShopGrade_shopGradeId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[Role_ShopGarde]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Role_ShopGarde_dbo.ShopGrade_shopGradeId] FOREIGN KEY([shopGradeId])
REFERENCES [dbo].[ShopGrade] ([Id])
GO
ALTER TABLE [dbo].[Role_ShopGarde] CHECK CONSTRAINT [FK_dbo.Role_ShopGarde_dbo.ShopGrade_shopGradeId]
GO
/****** Object:  ForeignKey [FK_dbo.S_City_dbo.S_Province_provinceId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[S_City]  WITH CHECK ADD  CONSTRAINT [FK_dbo.S_City_dbo.S_Province_provinceId] FOREIGN KEY([provinceId])
REFERENCES [dbo].[S_Province] ([provinceId])
GO
ALTER TABLE [dbo].[S_City] CHECK CONSTRAINT [FK_dbo.S_City_dbo.S_Province_provinceId]
GO
/****** Object:  ForeignKey [FK_dbo.ScoreExchangeRecord_dbo.ExchangeObject_objectId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ScoreExchangeRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScoreExchangeRecord_dbo.ExchangeObject_objectId] FOREIGN KEY([objectId])
REFERENCES [dbo].[ExchangeObject] ([objectId])
GO
ALTER TABLE [dbo].[ScoreExchangeRecord] CHECK CONSTRAINT [FK_dbo.ScoreExchangeRecord_dbo.ExchangeObject_objectId]
GO
/****** Object:  ForeignKey [FK_dbo.ScoreExchangeRecord_dbo.UserAccount_userId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ScoreExchangeRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScoreExchangeRecord_dbo.UserAccount_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[UserAccount] ([userId])
GO
ALTER TABLE [dbo].[ScoreExchangeRecord] CHECK CONSTRAINT [FK_dbo.ScoreExchangeRecord_dbo.UserAccount_userId]
GO
/****** Object:  ForeignKey [FK_dbo.ScorePolicy_dbo.ProductVersion_productVersionId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ScorePolicy]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScorePolicy_dbo.ProductVersion_productVersionId] FOREIGN KEY([productVersionId])
REFERENCES [dbo].[ProductVersion] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScorePolicy] CHECK CONSTRAINT [FK_dbo.ScorePolicy_dbo.ProductVersion_productVersionId]
GO
/****** Object:  ForeignKey [FK_dbo.ScorePolicy_dbo.ShopType_category]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ScorePolicy]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScorePolicy_dbo.ShopType_category] FOREIGN KEY([category])
REFERENCES [dbo].[ShopType] ([id])
GO
ALTER TABLE [dbo].[ScorePolicy] CHECK CONSTRAINT [FK_dbo.ScorePolicy_dbo.ShopType_category]
GO
/****** Object:  ForeignKey [FK_dbo.SEMProperty_dbo.SEMProperty_SEMProperty2_id]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SEMProperty]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SEMProperty_dbo.SEMProperty_SEMProperty2_id] FOREIGN KEY([SEMProperty2_id])
REFERENCES [dbo].[SEMProperty] ([id])
GO
ALTER TABLE [dbo].[SEMProperty] CHECK CONSTRAINT [FK_dbo.SEMProperty_dbo.SEMProperty_SEMProperty2_id]
GO
/****** Object:  ForeignKey [FK_dbo.SEMRewardPolicy_dbo.ShopGrade_shopGradeId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SEMRewardPolicy]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SEMRewardPolicy_dbo.ShopGrade_shopGradeId] FOREIGN KEY([shopGradeId])
REFERENCES [dbo].[ShopGrade] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SEMRewardPolicy] CHECK CONSTRAINT [FK_dbo.SEMRewardPolicy_dbo.ShopGrade_shopGradeId]
GO
/****** Object:  ForeignKey [FK_dbo.ShopGrade_dbo.ShopType_category]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ShopGrade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopGrade_dbo.ShopType_category] FOREIGN KEY([category])
REFERENCES [dbo].[ShopType] ([id])
GO
ALTER TABLE [dbo].[ShopGrade] CHECK CONSTRAINT [FK_dbo.ShopGrade_dbo.ShopType_category]
GO
/****** Object:  ForeignKey [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewItem_reviewItemId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ShopReviewRecordDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewItem_reviewItemId] FOREIGN KEY([reviewItemId])
REFERENCES [dbo].[ShopReviewItem] ([itemId])
GO
ALTER TABLE [dbo].[ShopReviewRecordDetail] CHECK CONSTRAINT [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewItem_reviewItemId]
GO
/****** Object:  ForeignKey [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewRecord_recordId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ShopReviewRecordDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewRecord_recordId] FOREIGN KEY([recordId])
REFERENCES [dbo].[ShopReviewRecord] ([reviewId])
GO
ALTER TABLE [dbo].[ShopReviewRecordDetail] CHECK CONSTRAINT [FK_dbo.ShopReviewRecordDetail_dbo.ShopReviewRecord_recordId]
GO
/****** Object:  ForeignKey [FK_dbo.ShopSeller_dbo.ShopSellerRole_roleName]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ShopSeller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopSeller_dbo.ShopSellerRole_roleName] FOREIGN KEY([roleName])
REFERENCES [dbo].[ShopSellerRole] ([roleName])
GO
ALTER TABLE [dbo].[ShopSeller] CHECK CONSTRAINT [FK_dbo.ShopSeller_dbo.ShopSellerRole_roleName]
GO
/****** Object:  ForeignKey [FK_dbo.ShopSeller_dbo.UserAccount_userId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[ShopSeller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShopSeller_dbo.UserAccount_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[UserAccount] ([userId])
GO
ALTER TABLE [dbo].[ShopSeller] CHECK CONSTRAINT [FK_dbo.ShopSeller_dbo.UserAccount_userId]
GO
/****** Object:  ForeignKey [FK_dbo.SN_dbo.SNGenerate_generateTaskId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SN]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SN_dbo.SNGenerate_generateTaskId] FOREIGN KEY([generateTaskId])
REFERENCES [dbo].[SNGenerate] ([id])
GO
ALTER TABLE [dbo].[SN] CHECK CONSTRAINT [FK_dbo.SN_dbo.SNGenerate_generateTaskId]
GO
--/****** Object:  ForeignKey [FK_dbo.SNGenerate_dbo.ManagerAccount_managerAccountId]    Script Date: 06/03/2016 17:02:25 ******/
--ALTER TABLE [dbo].[SNGenerate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SNGenerate_dbo.ManagerAccount_managerAccountId] FOREIGN KEY([managerAccountId])
--REFERENCES [dbo].[ManagerAccount] ([id])
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[SNGenerate] CHECK CONSTRAINT [FK_dbo.SNGenerate_dbo.ManagerAccount_managerAccountId]
--GO
/****** Object:  ForeignKey [FK_dbo.SNGenerate_dbo.ProductVersion_productVersionId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SNGenerate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SNGenerate_dbo.ProductVersion_productVersionId] FOREIGN KEY([productVersionId])
REFERENCES [dbo].[ProductVersion] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SNGenerate] CHECK CONSTRAINT [FK_dbo.SNGenerate_dbo.ProductVersion_productVersionId]
GO
/****** Object:  ForeignKey [FK_dbo.SpecialRewardPolicyDetail_dbo.SpecialRewardPolicy_policyId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SpecialRewardPolicyDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SpecialRewardPolicyDetail_dbo.SpecialRewardPolicy_policyId] FOREIGN KEY([policyId])
REFERENCES [dbo].[SpecialRewardPolicy] ([policyId])
GO
ALTER TABLE [dbo].[SpecialRewardPolicyDetail] CHECK CONSTRAINT [FK_dbo.SpecialRewardPolicyDetail_dbo.SpecialRewardPolicy_policyId]
GO
/****** Object:  ForeignKey [FK_dbo.SysMessage_dbo.SysMessageHistory_taskId]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[SysMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SysMessage_dbo.SysMessageHistory_taskId] FOREIGN KEY([taskId])
REFERENCES [dbo].[SysMessageHistory] ([taskId])
GO
ALTER TABLE [dbo].[SysMessage] CHECK CONSTRAINT [FK_dbo.SysMessage_dbo.SysMessageHistory_taskId]
GO
/****** Object:  ForeignKey [FK_dbo.UserAccount_dbo.S_City_addr_CityID]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAccount_dbo.S_City_addr_CityID] FOREIGN KEY([addr_CityID])
REFERENCES [dbo].[S_City] ([cityId])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_dbo.UserAccount_dbo.S_City_addr_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.UserAccount_dbo.S_District_addr_DistrictID]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAccount_dbo.S_District_addr_DistrictID] FOREIGN KEY([addr_DistrictID])
REFERENCES [dbo].[S_District] ([districtId])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_dbo.UserAccount_dbo.S_District_addr_DistrictID]
GO
/****** Object:  ForeignKey [FK_dbo.UserAccount_dbo.S_Province_addr_ProvinceID]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAccount_dbo.S_Province_addr_ProvinceID] FOREIGN KEY([addr_ProvinceID])
REFERENCES [dbo].[S_Province] ([provinceId])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_dbo.UserAccount_dbo.S_Province_addr_ProvinceID]
GO
/****** Object:  ForeignKey [FK_dbo.UserShopGrade_dbo.ShopGrade_shopgradeid]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[UserShopGrade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserShopGrade_dbo.ShopGrade_shopgradeid] FOREIGN KEY([shopgradeid])
REFERENCES [dbo].[ShopGrade] ([Id])
GO
ALTER TABLE [dbo].[UserShopGrade] CHECK CONSTRAINT [FK_dbo.UserShopGrade_dbo.ShopGrade_shopgradeid]
GO
/****** Object:  ForeignKey [FK_dbo.UserShopGrade_dbo.UserAccount_userid]    Script Date: 06/03/2016 17:02:25 ******/
ALTER TABLE [dbo].[UserShopGrade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserShopGrade_dbo.UserAccount_userid] FOREIGN KEY([userid])
REFERENCES [dbo].[UserAccount] ([userId])
GO
ALTER TABLE [dbo].[UserShopGrade] CHECK CONSTRAINT [FK_dbo.UserShopGrade_dbo.UserAccount_userid]
GO
