USE [ProjectReporting]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 06/01/2020 4:07:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RAGTemplate]    Script Date: 06/01/2020 4:07:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAGTemplate](
	[RAGId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NOT NULL,
	[ReportId] [int] NOT NULL,
	[Division] [nvarchar](50) NULL,
	[BU_Account] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[Highlights] [nvarchar](max) NULL,
	[IssuesRisks] [nvarchar](max) NULL,
	[RAGType] [nvarchar](50) NULL,
	[Backlog] [nvarchar](50) NULL,
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_RAGTemplate] PRIMARY KEY CLUSTERED 
(
	[RAGId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Report]    Script Date: 06/01/2020 4:07:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[ReportName] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Template]    Script Date: 06/01/2020 4:07:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Template] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProjectId], [ProjectName]) VALUES (1, N'Geofield')
INSERT [dbo].[Project] ([ProjectId], [ProjectName]) VALUES (2, N'Meter Flow')
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[RAGTemplate] ON 

INSERT [dbo].[RAGTemplate] ([RAGId], [TemplateId], [ReportId], [Division], [BU_Account], [Project], [Category], [CategoryDescription], [Highlights], [IssuesRisks], [RAGType], [Backlog], [Version]) VALUES (2, 1, 1, N'Software', N'AMT-Sybex', N'Geofield', N'SGN', N'New Product', N'SGN Release v 2.11 is planned on Dec 13th and is on track.UAT for Release 2.10 is signed off', N'"There have concerns raised by Leads in Edinburgh regarding the skill and ownership of the Bangalore team members. An action plan is put in place to improve them.   Functional Tranings are conducted as a part of the Sprint.  Plural sight and Udemy licenses are acquired for traninings.  Proper mentorship program in place"', N'Amber', N'N/A', 0)
INSERT [dbo].[RAGTemplate] ([RAGId], [TemplateId], [ReportId], [Division], [BU_Account], [Project], [Category], [CategoryDescription], [Highlights], [IssuesRisks], [RAGType], [Backlog], [Version]) VALUES (3, 1, 4, N'Software', N'AMT-Sybex', N'Meter Flow', N'Scottish Power', N'New Product', N'"Scottish power Fixed defects for releases R81, R82, R83, and R84 15+ defects fixed/invalidated in last month​  "', N'Some concerns around Scala resources leaving. A total of 7 resignations in the Scala team. All are juniors. All positions have been replaced. ', N'Green', N'TEST', 0)
INSERT [dbo].[RAGTemplate] ([RAGId], [TemplateId], [ReportId], [Division], [BU_Account], [Project], [Category], [CategoryDescription], [Highlights], [IssuesRisks], [RAGType], [Backlog], [Version]) VALUES (4, 2, 3, N'Software', N'AMT-Sybex', N'Meter Flow', N'SSE', N'New Product', N'"All Sprints Delivered.  Currently in SIT from November till the end of December. Production deployment in Jan.  Phase 3 user stories refinement in progress Team supporting with any fixes. "', N'The next set of work for the team is yet to be identified. This could cause some idle time. ', N'Green', N'N/A', 0)
INSERT [dbo].[RAGTemplate] ([RAGId], [TemplateId], [ReportId], [Division], [BU_Account], [Project], [Category], [CategoryDescription], [Highlights], [IssuesRisks], [RAGType], [Backlog], [Version]) VALUES (16, 1, 4, N'Software', N'AMT-Sybex', N'Meter Flow', N'Scottish Power', N'New Product', N'"Scottish power Fixed defects for releases R81, R82, R83, and R84 15+ defects fixed/invalidated in last month​  "', N'Some concerns around Scala resources leaving. A total of 7 resignations in the Scala team. All are juniors. All positions have been replaced. ', N'Green', N'Update1', 1)
INSERT [dbo].[RAGTemplate] ([RAGId], [TemplateId], [ReportId], [Division], [BU_Account], [Project], [Category], [CategoryDescription], [Highlights], [IssuesRisks], [RAGType], [Backlog], [Version]) VALUES (18, 1, 4, N'Software', N'AMT-Sybex', N'Meter Flow', N'Scottish Power', N'New Product', N'"Scottish power Fixed defects for releases R81, R82, R83, and R84 15+ defects fixed/invalidated in last month​  "', N'Some concerns around Scala resources leaving. A total of 7 resignations in the Scala team. All are juniors. All positions have been replaced. ', N'YELLOW', N'Update2', 2)
SET IDENTITY_INSERT [dbo].[RAGTemplate] OFF
SET IDENTITY_INSERT [dbo].[Report] ON 

INSERT [dbo].[Report] ([ReportId], [ProjectId], [ReportName], [CreatedBy], [ModifiedBy]) VALUES (1, 1, N'SGN', NULL, NULL)
INSERT [dbo].[Report] ([ReportId], [ProjectId], [ReportName], [CreatedBy], [ModifiedBy]) VALUES (2, 1, N'UKPN', NULL, NULL)
INSERT [dbo].[Report] ([ReportId], [ProjectId], [ReportName], [CreatedBy], [ModifiedBy]) VALUES (3, 2, N'SSE', NULL, NULL)
INSERT [dbo].[Report] ([ReportId], [ProjectId], [ReportName], [CreatedBy], [ModifiedBy]) VALUES (4, 2, N'Scottish Power', NULL, NULL)
INSERT [dbo].[Report] ([ReportId], [ProjectId], [ReportName], [CreatedBy], [ModifiedBy]) VALUES (5, 2, N'E&A', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Report] OFF
SET IDENTITY_INSERT [dbo].[Template] ON 

INSERT [dbo].[Template] ([TemplateId], [TemplateName]) VALUES (1, N'RAG')
INSERT [dbo].[Template] ([TemplateId], [TemplateName]) VALUES (3, N'ReleaseData')
SET IDENTITY_INSERT [dbo].[Template] OFF
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([TemplateId])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_Template]
GO
