USE [CityTutorsDB]
GO
/****** Object:  Table [dbo].[Tbl_Enquiry]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Enquiry](
	[EId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](60) NOT NULL,
	[EmailId] [varchar](120) NOT NULL,
	[Mob] [varchar](20) NOT NULL,
	[Msg] [varchar](max) NOT NULL,
	[EnqueryDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Enquiry_1] PRIMARY KEY CLUSTERED 
(
	[EId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Enquiry] ON
INSERT [dbo].[Tbl_Enquiry] ([EId], [Name], [EmailId], [Mob], [Msg], [EnqueryDate]) VALUES (35, N'Akash Chaturvedi', N'chaturvediakash5@gmail.com', N'8400493702', N'hello', CAST(0x0000A84700000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_Enquiry] OFF
/****** Object:  Table [dbo].[tbl_contactUs]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_contactUs](
	[Eid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](60) NOT NULL,
	[EmailId] [varchar](120) NOT NULL,
	[Mob] [varchar](20) NOT NULL,
	[msg] [varchar](max) NOT NULL,
	[ecdate] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_contactUs] PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_contactUs] ON
INSERT [dbo].[tbl_contactUs] ([Eid], [Name], [EmailId], [Mob], [msg], [ecdate]) VALUES (3, N'Sumit Chaturvedi', N'akashchaturvedi325@gmail.com', N'8447793476', N'hii', CAST(0x0000A84500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_contactUs] OFF
/****** Object:  Table [dbo].[Tbl_City]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](80) NULL,
 CONSTRAINT [PK_Tbl_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_City] ON
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (1, N'Jhansi')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (2, N'Kanpur')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (3, N'Lucknow')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (5, N'Delhi')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (6, N'Agra')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (7, N'Gorakhpur')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (8, N'Varanasi')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (9, N'Bhopal')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (10, N'Mumbai')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (11, N'Pune')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (12, N'Banglore')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (13, N'Chennai')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (14, N'Gwalior')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (15, N'Mathura')
INSERT [dbo].[Tbl_City] ([CityId], [CityName]) VALUES (16, N'Bhusaval')






SET IDENTITY_INSERT [dbo].[Tbl_City] OFF
/****** Object:  Table [dbo].[Tbl_Qulification]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Qulification](
	[Qid] [int] IDENTITY(1,1) NOT NULL,
	[Qualification] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Qulification] PRIMARY KEY CLUSTERED 
(
	[Qid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Qulification] ON

INSERT [dbo].[Tbl_Qulification] ([Qid], [Qualification]) VALUES (1, N'Dlit')
INSERT [dbo].[Tbl_Qulification] ([Qid], [Qualification]) VALUES (2, N'Phd')
INSERT [dbo].[Tbl_Qulification] ([Qid], [Qualification]) VALUES (3, N'Mtech')
INSERT [dbo].[Tbl_Qulification] ([Qid], [Qualification]) VALUES (4, N'Btech')
INSERT [dbo].[Tbl_Qulification] ([Qid], [Qualification]) VALUES (5, N'MBBS')
INSERT [dbo].[Tbl_Qulification] ([Qid], [Qualification]) VALUES (6, N'Bsc')

INSERT [dbo].[Tbl_Qulification] ([Qid], [Qualification]) VALUES (7, N'Bcom')
INSERT [dbo].[Tbl_Qulification] ([Qid], [Qualification]) VALUES (8, N'Diploma')

SET IDENTITY_INSERT [dbo].[Tbl_Qulification] OFF
/****** Object:  Table [dbo].[Tbl_Subject]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Subject](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Subject] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Subject] ON
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (1, N'Maths')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (2, N'Chemistry')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (3, N'Physics')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (4, N'English')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (5, N'Java')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (6, N'C & C++')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (7, N'Python')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (8, N'Java Script')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (9, N'.Net')
INSERT [dbo].[Tbl_Subject] ([Sid], [SubjectName]) VALUES (10, N'Biology')
SET IDENTITY_INSERT [dbo].[Tbl_Subject] OFF
/****** Object:  Table [dbo].[Tbl_RStudent]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_RStudent](
	[Name] [varchar](60) NOT NULL,
	[FName] [varchar](60) NOT NULL,
	[City] [int] NOT NULL,
	[Adddress] [varchar](max) NOT NULL,
	[MobNo] [varchar](20) NOT NULL,
	[EmailId] [varchar](120) NOT NULL,
	[Courses] [int] NOT NULL,
	[CourseYear] [int] NOT NULL,
	[RaDate] [datetime] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
 CONSTRAINT [PK_Tbl_RStudent] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Tutors](
	[TuName] [varchar](800) NULL,
	[Gender] [bit] NULL,
	[HQId] [int] NULL,
	[PassoutYear] [int] NULL,
	[CityId] [int] NULL,
	[Address] [varchar](max) NULL,
	[ExpertiseSub] [int] NULL,
	[MobNo] [varchar](20) NULL,
	[EmailId] [varchar](120) NOT NULL,
	[DTReg] [datetime] NULL,
	[Minfee] [float] NULL,
	[maxfee] [float] NULL,
 CONSTRAINT [PK_Tbl_Tutors] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TblReview]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblReview](
	[Reviewid] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [varchar](120) NULL,
	[TutorID] [varchar](120) NULL,
	[Star] [int] NULL,
	[msg] [varchar](max) NULL,
	[RDT] [datetime] NULL,
 CONSTRAINT [PK_TblReview] PRIMARY KEY CLUSTERED 
(
	[Reviewid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Tbl_UserPic]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_UserPic](
	[PicId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](120) NULL,
	[FileName] [varchar](100) NULL,
	[FolderName] [varchar](30) NULL,
	[FIileType] [varchar](10) NULL,
	[FileSize] [float] NULL,
	[UploadDt] [datetime] NULL,
 CONSTRAINT [PK_Tbl_UserPic] PRIMARY KEY CLUSTERED 
(
	[PicId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_UserPic] ON
INSERT [dbo].[Tbl_UserPic] ([PicId], [UserId], [FileName], [FolderName], [FIileType], [FileSize], [UploadDt]) VALUES (1, N'chaturvediakash5@gmail.com', N'3gfbdqzx.fwr[034313].jpg', N'StudentPic', N'.jpg', 504, CAST(0x0000A84A00000000 AS DateTime))

SET IDENTITY_INSERT [dbo].[Tbl_UserPic] OFF
/****** Object:  Table [dbo].[Tbl_TuitionRequests]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_TuitionRequests](
	[RequestNo] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [varchar](120) NOT NULL,
	[TutorId] [varchar](120) NOT NULL,
	[FromDt] [varchar](20) NOT NULL,
	[ToDate] [varchar](20) NOT NULL,
	[Status] [varchar](50) NULL,
	[FinalFee] [float] NULL,
	[Remark] [varchar](300) NULL,
	[RequestDT] [date] NULL,
 CONSTRAINT [PK_Tbl_TuitionRequests] PRIMARY KEY CLUSTERED 
(
	[RequestNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Tbl_StudenPic]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_StudenPic](
	[PicId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](120) NULL,
	[FileName] [varchar](100) NULL,
	[folderName] [varchar](30) NULL,
	[filetype] [varchar](10) NULL,
	[fileSizeKb] [float] NULL,
	[UpDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_StudenPic] PRIMARY KEY CLUSTERED 
(
	[PicId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Tbl_PasswordRecovery]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_PasswordRecovery](
	[Rid] [int] IDENTITY(1,1) NOT NULL,
	[RCode] [int] NULL,
	[UserId] [varchar](120) NULL,
	[ValidTill] [datetime] NULL,
	[Status] [bit] NULL,
	[RequestDT] [datetime] NULL,
 CONSTRAINT [PK_Tbl_PasswordRecovery] PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[LUserId] [varchar](120) NULL,
	[Pass] [varchar](200) NULL,
	[type] [bit] NULL,
	[LastLogin] [datetime] NULL,
	[Lcount] [int] NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_Login] ([LUserId], [Pass], [type], [LastLogin], [Lcount], [Status]) VALUES (N'chaturvediakash5@gmail.com', N'O47oigPSeHJylrh3l2sVgQ==', 1, CAST(0x0000A85200000000 AS DateTime), 0, 1)
/****** Object:  Table [dbo].[Tbl_ForgotPassword]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_ForgotPassword](
	[ForgotId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](120) NULL,
	[Code] [int] NULL,
	[ValidTill] [datetime] NULL,
	[Status] [bit] NULL,
	[RequestDT] [datetime] NULL,
 CONSTRAINT [PK_Tbl_ForgotPassword] PRIMARY KEY CLUSTERED 
(
	[ForgotId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Tbl_Feedback]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Feedback](
	[Fid] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](120) NULL,
	[Subject] [varchar](200) NULL,
	[FeedbackMsg] [varchar](max) NULL,
	[FDT] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Feedback] PRIMARY KEY CLUSTERED 
(
	[Fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Tbl_Artical]    Script Date: 12/25/2017 00:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Artical](
	[AId] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [int] NULL,
	[Title] [varchar](200) NULL,
	[Article] [varchar](max) NULL,
	[TutorsId] [varchar](120) NULL,
	[ADT] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Artical] PRIMARY KEY CLUSTERED 
(
	[AId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  ForeignKey [FK_Tbl_Artical_Tbl_Subject1]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_Artical]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Artical_Tbl_Subject1] FOREIGN KEY([Subject])
REFERENCES [dbo].[Tbl_Subject] ([Sid])
GO
ALTER TABLE [dbo].[Tbl_Artical] CHECK CONSTRAINT [FK_Tbl_Artical_Tbl_Subject1]
GO
/****** Object:  ForeignKey [FK_Tbl_Artical_Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_Artical]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Artical_Tbl_Tutors] FOREIGN KEY([TutorsId])
REFERENCES [dbo].[Tbl_Tutors] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_Artical] CHECK CONSTRAINT [FK_Tbl_Artical_Tbl_Tutors]
GO
/****** Object:  ForeignKey [FK_Tbl_Feedback_Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Feedback_Tbl_Tutors] FOREIGN KEY([UserId])
REFERENCES [dbo].[Tbl_Tutors] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_Feedback] CHECK CONSTRAINT [FK_Tbl_Feedback_Tbl_Tutors]
GO
/****** Object:  ForeignKey [FK_Tbl_ForgotPassword_Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_ForgotPassword]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ForgotPassword_Tbl_Tutors] FOREIGN KEY([UserId])
REFERENCES [dbo].[Tbl_Tutors] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_ForgotPassword] CHECK CONSTRAINT [FK_Tbl_ForgotPassword_Tbl_Tutors]
GO
/****** Object:  ForeignKey [FK_Tbl_Login_Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_Login]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Login_Tbl_Tutors] FOREIGN KEY([LUserId])
REFERENCES [dbo].[Tbl_Tutors] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_Login] CHECK CONSTRAINT [FK_Tbl_Login_Tbl_Tutors]
GO
/****** Object:  ForeignKey [FK_Tbl_PasswordRecovery_Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_PasswordRecovery]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PasswordRecovery_Tbl_Tutors] FOREIGN KEY([UserId])
REFERENCES [dbo].[Tbl_Tutors] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_PasswordRecovery] CHECK CONSTRAINT [FK_Tbl_PasswordRecovery_Tbl_Tutors]
GO
/****** Object:  ForeignKey [FK_Tbl_RStudent_Tbl_City]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_RStudent]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_RStudent_Tbl_City] FOREIGN KEY([City])
REFERENCES [dbo].[Tbl_City] ([CityId])
GO
ALTER TABLE [dbo].[Tbl_RStudent] CHECK CONSTRAINT [FK_Tbl_RStudent_Tbl_City]
GO
/****** Object:  ForeignKey [FK_Tbl_RStudent_Tbl_Qulification]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_RStudent]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_RStudent_Tbl_Qulification] FOREIGN KEY([City])
REFERENCES [dbo].[Tbl_City] ([CityId])
GO
ALTER TABLE [dbo].[Tbl_RStudent] CHECK CONSTRAINT [FK_Tbl_RStudent_Tbl_Qulification]
GO
/****** Object:  ForeignKey [FK_Tbl_RStudent_Tbl_Subject]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_RStudent]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_RStudent_Tbl_Subject] FOREIGN KEY([Courses])
REFERENCES [dbo].[Tbl_Subject] ([Sid])
GO
ALTER TABLE [dbo].[Tbl_RStudent] CHECK CONSTRAINT [FK_Tbl_RStudent_Tbl_Subject]
GO
/****** Object:  ForeignKey [FK_Tbl_StudenPic_Tbl_RStudent]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_StudenPic]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudenPic_Tbl_RStudent] FOREIGN KEY([UserId])
REFERENCES [dbo].[Tbl_RStudent] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_StudenPic] CHECK CONSTRAINT [FK_Tbl_StudenPic_Tbl_RStudent]
GO
/****** Object:  ForeignKey [FK_Tbl_TuitionRequests_Tbl_RStudent]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_TuitionRequests]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_TuitionRequests_Tbl_RStudent] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Tbl_RStudent] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_TuitionRequests] CHECK CONSTRAINT [FK_Tbl_TuitionRequests_Tbl_RStudent]
GO
/****** Object:  ForeignKey [FK_Tbl_TuitionRequests_Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_TuitionRequests]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_TuitionRequests_Tbl_Tutors] FOREIGN KEY([TutorId])
REFERENCES [dbo].[Tbl_Tutors] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_TuitionRequests] CHECK CONSTRAINT [FK_Tbl_TuitionRequests_Tbl_Tutors]
GO
/****** Object:  ForeignKey [FK_Tbl_Tutors_Tbl_City]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_Tutors]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tutors_Tbl_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[Tbl_City] ([CityId])
GO
ALTER TABLE [dbo].[Tbl_Tutors] CHECK CONSTRAINT [FK_Tbl_Tutors_Tbl_City]
GO
/****** Object:  ForeignKey [FK_Tbl_Tutors_Tbl_Qulification]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_Tutors]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tutors_Tbl_Qulification] FOREIGN KEY([HQId])
REFERENCES [dbo].[Tbl_Qulification] ([Qid])
GO
ALTER TABLE [dbo].[Tbl_Tutors] CHECK CONSTRAINT [FK_Tbl_Tutors_Tbl_Qulification]
GO
/****** Object:  ForeignKey [FK_Tbl_Tutors_Tbl_Subject]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_Tutors]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tutors_Tbl_Subject] FOREIGN KEY([ExpertiseSub])
REFERENCES [dbo].[Tbl_Subject] ([Sid])
GO
ALTER TABLE [dbo].[Tbl_Tutors] CHECK CONSTRAINT [FK_Tbl_Tutors_Tbl_Subject]
GO
/****** Object:  ForeignKey [FK_Tbl_UserPic_Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[Tbl_UserPic]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_UserPic_Tbl_Tutors] FOREIGN KEY([UserId])
REFERENCES [dbo].[Tbl_Tutors] ([EmailId])
GO
ALTER TABLE [dbo].[Tbl_UserPic] CHECK CONSTRAINT [FK_Tbl_UserPic_Tbl_Tutors]
GO
/****** Object:  ForeignKey [FK_TblReview_Tbl_RStudent]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[TblReview]  WITH CHECK ADD  CONSTRAINT [FK_TblReview_Tbl_RStudent] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Tbl_RStudent] ([EmailId])
GO
ALTER TABLE [dbo].[TblReview] CHECK CONSTRAINT [FK_TblReview_Tbl_RStudent]
GO
/****** Object:  ForeignKey [FK_TblReview_Tbl_Tutors]    Script Date: 12/25/2017 00:09:30 ******/
ALTER TABLE [dbo].[TblReview]  WITH CHECK ADD  CONSTRAINT [FK_TblReview_Tbl_Tutors] FOREIGN KEY([TutorID])
REFERENCES [dbo].[Tbl_Tutors] ([EmailId])
GO
ALTER TABLE [dbo].[TblReview] CHECK CONSTRAINT [FK_TblReview_Tbl_Tutors]
GO
