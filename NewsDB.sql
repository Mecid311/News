USE [News]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 03/10/2019 21:03:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](50) NOT NULL,
	[NewsImg] [nvarchar](max) NOT NULL,
	[NewsDate] [datetime] NOT NULL,
	[CatogoryId] [int] NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Source] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catogorys]    Script Date: 03/10/2019 21:03:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catogorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatogoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Catogorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_CatogoryNews] FOREIGN KEY([CatogoryId])
REFERENCES [dbo].[Catogorys] ([Id])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_CatogoryNews]
GO
