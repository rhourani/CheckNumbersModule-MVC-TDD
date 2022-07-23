USE [Nordia]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 23/07/2022 13:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[WORKER_REF_ID] [int] NOT NULL,
	[WORKER_TITLE] [varchar](50) NOT NULL,
	[AFFECTED_FROM] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 23/07/2022 13:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[WORKER_ID] [int] NOT NULL,
	[FIRST_NAME] [varchar](50) NOT NULL,
	[LAST_NAME] [varchar](50) NOT NULL,
	[SALARY] [bigint] NOT NULL,
	[JOINING_DATE] [date] NOT NULL,
	[DEPARTMENT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[WORKER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Title] ([WORKER_REF_ID], [WORKER_TITLE], [AFFECTED_FROM]) VALUES (1, N'Manager', CAST(N'2014-06-11' AS Date))
INSERT [dbo].[Title] ([WORKER_REF_ID], [WORKER_TITLE], [AFFECTED_FROM]) VALUES (2, N'Executive', CAST(N'2014-06-11' AS Date))
INSERT [dbo].[Title] ([WORKER_REF_ID], [WORKER_TITLE], [AFFECTED_FROM]) VALUES (8, N'Executive', CAST(N'2014-06-11' AS Date))
INSERT [dbo].[Title] ([WORKER_REF_ID], [WORKER_TITLE], [AFFECTED_FROM]) VALUES (5, N'Manager', CAST(N'2014-06-11' AS Date))
INSERT [dbo].[Title] ([WORKER_REF_ID], [WORKER_TITLE], [AFFECTED_FROM]) VALUES (4, N'Asst. Manager', CAST(N'2014-06-11' AS Date))
INSERT [dbo].[Title] ([WORKER_REF_ID], [WORKER_TITLE], [AFFECTED_FROM]) VALUES (7, N'Executive', CAST(N'2016-06-11' AS Date))
INSERT [dbo].[Title] ([WORKER_REF_ID], [WORKER_TITLE], [AFFECTED_FROM]) VALUES (6, N'Lead', CAST(N'2016-06-11' AS Date))
INSERT [dbo].[Title] ([WORKER_REF_ID], [WORKER_TITLE], [AFFECTED_FROM]) VALUES (3, N'Lead', CAST(N'2016-06-11' AS Date))
GO
INSERT [dbo].[Worker] ([WORKER_ID], [FIRST_NAME], [LAST_NAME], [SALARY], [JOINING_DATE], [DEPARTMENT]) VALUES (1, N'Monika', N'Arora', 100000, CAST(N'2014-02-20' AS Date), N'HR')
INSERT [dbo].[Worker] ([WORKER_ID], [FIRST_NAME], [LAST_NAME], [SALARY], [JOINING_DATE], [DEPARTMENT]) VALUES (2, N'Niharika', N'Verma', 80000, CAST(N'2014-06-11' AS Date), N'Admin')
INSERT [dbo].[Worker] ([WORKER_ID], [FIRST_NAME], [LAST_NAME], [SALARY], [JOINING_DATE], [DEPARTMENT]) VALUES (3, N'Vishal', N'Singhal', 300000, CAST(N'2014-06-11' AS Date), N'HR')
INSERT [dbo].[Worker] ([WORKER_ID], [FIRST_NAME], [LAST_NAME], [SALARY], [JOINING_DATE], [DEPARTMENT]) VALUES (4, N'Amitabh', N'Singh', 500000, CAST(N'2014-06-11' AS Date), N'Admin')
INSERT [dbo].[Worker] ([WORKER_ID], [FIRST_NAME], [LAST_NAME], [SALARY], [JOINING_DATE], [DEPARTMENT]) VALUES (5, N'Vivek', N'Bhati', 500000, CAST(N'2014-06-11' AS Date), N'Admin')
INSERT [dbo].[Worker] ([WORKER_ID], [FIRST_NAME], [LAST_NAME], [SALARY], [JOINING_DATE], [DEPARTMENT]) VALUES (6, N'Vipul', N'Diwan', 200000, CAST(N'2014-06-11' AS Date), N'Account')
INSERT [dbo].[Worker] ([WORKER_ID], [FIRST_NAME], [LAST_NAME], [SALARY], [JOINING_DATE], [DEPARTMENT]) VALUES (7, N'Satish', N'Kymar', 75000, CAST(N'2014-06-11' AS Date), N'Account')
INSERT [dbo].[Worker] ([WORKER_ID], [FIRST_NAME], [LAST_NAME], [SALARY], [JOINING_DATE], [DEPARTMENT]) VALUES (8, N'Geetika', N'Chauhan', 90000, CAST(N'2014-06-11' AS Date), N'Admin')
GO
