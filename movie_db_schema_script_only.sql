/****** Object:  Table [dbo].[dim_actor]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_actor](
	[actor_id] [int] NOT NULL,
	[actor] [nvarchar](155) NULL,
 CONSTRAINT [PK_dim_actor] PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_actor_movie_assoc]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_actor_movie_assoc](
	[dim_actor_movie_assoc_id] [int] NOT NULL,
	[actor_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
 CONSTRAINT [PK_dim_actor_movie_assoc] PRIMARY KEY CLUSTERED 
(
	[dim_actor_movie_assoc_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_director]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_director](
	[director_id] [int] NOT NULL,
	[director] [nvarchar](255) NULL,
 CONSTRAINT [PK_dim_director] PRIMARY KEY CLUSTERED 
(
	[director_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_genre]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_genre](
	[genre_id] [int] NOT NULL,
	[genre] [nvarchar](155) NULL,
 CONSTRAINT [PK_dim_genre] PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_genre_movie_assoc]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_genre_movie_assoc](
	[dim_genre_movie_assoc_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
 CONSTRAINT [PK_dim_genre_movie_assoc] PRIMARY KEY CLUSTERED 
(
	[dim_genre_movie_assoc_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_movie]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_movie](
	[film_id] [int] NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](450) NULL,
 CONSTRAINT [PK_dim_movie] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_year]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_year](
	[date_id] [int] NOT NULL,
	[year] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fact_film]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_film](
	[runtime_minutes] [float] NULL,
	[rating] [float] NULL,
	[revenue_millions] [float] NULL,
	[votes] [int] NULL,
	[metascore] [int] NULL,
	[film_id] [int] NOT NULL,
	[director_id] [int] NOT NULL,
	[year_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[land_movies]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[land_movies](
	[Rank] [smallint] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Genre] [nvarchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Director] [nvarchar](50) NOT NULL,
	[Actors] [nvarchar](100) NOT NULL,
	[Year] [smallint] NOT NULL,
	[Runtime_Minutes] [tinyint] NOT NULL,
	[Rating] [float] NOT NULL,
	[Votes] [int] NOT NULL,
	[Revenue_Millions] [float] NULL,
	[Metascore] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[map_actor]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[map_actor](
	[actor_id] [int] IDENTITY(1,1) NOT NULL,
	[actor] [nvarchar](155) NULL,
 CONSTRAINT [PK_map_actor] PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[map_director]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[map_director](
	[director_id] [int] IDENTITY(1,1) NOT NULL,
	[director] [nvarchar](155) NULL,
 CONSTRAINT [PK_map_director] PRIMARY KEY CLUSTERED 
(
	[director_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[map_film]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[map_film](
	[film_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[film_year] [int] NULL,
	[director] [nvarchar](155) NULL,
 CONSTRAINT [PK_map_film] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[map_genre]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[map_genre](
	[genre_id] [int] IDENTITY(1,1) NOT NULL,
	[genre] [nvarchar](155) NULL,
 CONSTRAINT [PK_map_genre] PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[map_year]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[map_year](
	[year_id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [year_year] PRIMARY KEY CLUSTERED 
(
	[year_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_actor]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_actor](
	[actor_id] [int] NOT NULL,
	[actor] [nvarchar](155) NULL,
 CONSTRAINT [PK_stg_actor] PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_actor_film_assoc]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_actor_film_assoc](
	[stg_actor_film_id] [int] IDENTITY(1,1) NOT NULL,
	[actor_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
 CONSTRAINT [PK_stg_actor_film] PRIMARY KEY CLUSTERED 
(
	[stg_actor_film_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_film]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_film](
	[film_id] [int] NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[director] [nvarchar](155) NULL,
	[film_year] [int] NULL,
	[runtime_minutes] [int] NULL,
	[rating] [float] NULL,
	[votes] [int] NULL,
	[revenue_millions] [float] NULL,
	[metascore] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[film_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_genre]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_genre](
	[genre_id] [int] NOT NULL,
	[genre] [nvarchar](155) NULL,
 CONSTRAINT [PK_stg_genre] PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_genre_film_assoc]    Script Date: 9/22/2023 1:18:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_genre_film_assoc](
	[stg_genre_film_id] [int] IDENTITY(1,1) NOT NULL,
	[genre_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
 CONSTRAINT [PK_stg_genre_film_id] PRIMARY KEY CLUSTERED 
(
	[stg_genre_film_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
