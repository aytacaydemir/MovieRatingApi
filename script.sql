USE [movieRatingDb]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/10/2023 6:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[MovieId] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 5/10/2023 6:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Year] [int] NOT NULL,
	[ImdbRating] [nvarchar](max) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 5/10/2023 6:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[MovieId] [int] NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/10/2023 6:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Description], [CreatedAt], [UserId], [MovieId]) VALUES (1, N'I''m gonna make him an offer he cant'' refuse.. _o_', CAST(N'2023-05-10T02:25:40.0807160' AS DateTime2), N'1', 2)
INSERT [dbo].[Comments] ([Id], [Description], [CreatedAt], [UserId], [MovieId]) VALUES (2, N'Strongly recommended!!', CAST(N'2023-05-10T04:23:39.2021277' AS DateTime2), N'2', 16)
INSERT [dbo].[Comments] ([Id], [Description], [CreatedAt], [UserId], [MovieId]) VALUES (3, N'Overrated movie', CAST(N'2023-05-10T04:39:05.2547831' AS DateTime2), N'3', 23)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (1, N'The Shawshank Redemption', 1994, N'9.3')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (2, N'The Godfather', 1972, N'9.2')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (3, N'The Godfather: Part II', 1974, N'9.0')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (4, N'The Dark Knight', 2008, N'9.0')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (5, N'12 Angry Men', 1957, N'8.9')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (6, N'Schindler''s List', 1993, N'8.9')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (7, N'The Lord of the Rings: The Return of the King', 2003, N'8.9')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (8, N'Pulp Fiction', 1994, N'8.9')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (9, N'The Lord of the Rings: The Fellowship of the Ring', 2001, N'8.8')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (10, N'Forrest Gump', 1994, N'8.8')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (11, N'Fight Club', 1999, N'8.8')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (12, N'Inception', 2010, N'8.8')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (13, N'The Lord of the Rings: The Two Towers', 2002, N'8.7')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (14, N'Star Wars: Episode V - The Empire Strikes Back', 1980, N'8.7')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (15, N'The Matrix', 1999, N'8.7')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (16, N'Goodfellas', 1990, N'8.7')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (17, N'One Flew Over the Cuckoo''s Nest', 1975, N'8.6')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (18, N'Se7en', 1995, N'8.6')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (19, N'It''s a Wonderful Life', 1946, N'8.6')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (20, N'The Silence of the Lambs', 1991, N'8.6')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (21, N'Saving Private Ryan', 1998, N'8.6')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (22, N'Life Is Beautiful', 1997, N'8.6')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (23, N'Interstellar', 2014, N'8.6')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (24, N'City of God', 2002, N'8.6')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (25, N'Spirited Away', 2001, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (26, N'The Green Mile', 1999, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (27, N'Léon: The Professional', 1994, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (28, N'The Usual Suspects', 1995, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (29, N'The Lion King', 1994, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (30, N'American History X', 1998, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (31, N'Terminator 2: Judgment Day', 1991, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (32, N'Back to the Future', 1985, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (33, N'Whiplash', 2014, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (34, N'Gladiator', 2000, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (35, N'The Prestige', 2006, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (36, N'The Departed', 2006, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (37, N'The Intouchables', 2011, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (38, N'The Pianist', 2002, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (39, N'The Departed', 2006, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (40, N'The Lion King', 1994, N'8.5')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (41, N'Joker', 2019, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (42, N'Alien', 1979, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (43, N'Blade Runner', 1982, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (44, N'Indiana Jones and the Raiders of the Lost Ark', 1981, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (45, N'Monty Python and the Holy Grail', 1975, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (46, N'A Clockwork Orange', 1971, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (47, N'Amélie', 2001, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (48, N'The Lives of Others', 2006, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (49, N'Dangal', 2016, N'8.4')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [ImdbRating]) VALUES (50, N'Come and See', 1985, N'8.4')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [Value], [UserId], [MovieId]) VALUES (1, 9, N'1', 2)
INSERT [dbo].[Ratings] ([Id], [Value], [UserId], [MovieId]) VALUES (2, 8, N'1', 4)
INSERT [dbo].[Ratings] ([Id], [Value], [UserId], [MovieId]) VALUES (3, 10, N'2', 16)
INSERT [dbo].[Ratings] ([Id], [Value], [UserId], [MovieId]) VALUES (4, 4, N'3', 23)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (N'1', N'user1', N'12345')
INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (N'2', N'user2', N'23456')
INSERT [dbo].[Users] ([Id], [Username], [Password]) VALUES (N'3', N'user3', N'34567')
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Movies_MovieId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users_UserId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Movies_MovieId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Users_UserId]
GO
