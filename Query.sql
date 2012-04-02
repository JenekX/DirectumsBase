USE [master]
GO
/****** Object:  Database [Files]    Script Date: 04/02/2012 22:53:50 ******/
CREATE DATABASE [Files] ON  PRIMARY 
( NAME = N'Files', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Files.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Files_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Files_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Files] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Files].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Files] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Files] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Files] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Files] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Files] SET ARITHABORT OFF
GO
ALTER DATABASE [Files] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Files] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Files] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Files] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Files] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Files] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Files] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Files] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Files] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Files] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Files] SET  DISABLE_BROKER
GO
ALTER DATABASE [Files] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Files] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Files] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Files] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Files] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Files] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Files] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Files] SET  READ_WRITE
GO
ALTER DATABASE [Files] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Files] SET  MULTI_USER
GO
ALTER DATABASE [Files] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Files] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Files', N'ON'
GO
USE [Files]
GO
/****** Object:  Table [dbo].[FileVersions]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileVersions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFile] [int] NOT NULL,
	[Number] [tinyint] NOT NULL,
	[Data] [image] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_FileVersions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FileVersions] ON
INSERT [dbo].[FileVersions] ([Id], [IdFile], [Number], [Data], [Created]) VALUES (1, 6, 2, 0x50726F66696C65203D20307832303034334530343334303433303034334430340D0A4C6F63616C65203D20656E0D0A0D0A5B6F7074696F6E5D0D0A20206175746F6C6F61643A2020300D0A20207375627469746C65733A2020310D0A20207475746F7269616C3A2020310D0A2020636F6D706C65786974793A20206E6F726D616C0D0A0D0A5B736F756E645D0D0A2020456666656374733A2020310D0A20204D757369633A2020310D0A20205370656563683A2020310D0A0D0A5B646973706C61795D0D0A20205265736F6C7574696F6E3A20203139323020313038300D0A2020436F6C6F72426974733A202033320D0A20204272696768746E6573733A2020302E350D0A2020416E7469616C696173696E673A2020300D0A202044657461696C733A2020320D0A20205465787475726544657461696C733A2020320D0A20204578706F737572653A2020310D0A0D0A5B6B6579626F6172645D0D0A20204D6F757365526573706F6E63653A2020310D0A2020466C69704D6F7573653A2020300D0A0D0A5B67616D657061645D0D0A20205468756D62526573706F6E63653A2020310D0A2020466C69705468756D623A2020300D0A, CAST(0x0000A02701751166 AS DateTime))
INSERT [dbo].[FileVersions] ([Id], [IdFile], [Number], [Data], [Created]) VALUES (2, 6, 2, 0x22453A5C47616D65735C436F6C6C6170736520315C67616D652E65786522200D0A20206275696C642034384337443443452028576564205365702031302031383A30383A31342032303038290D0A5468657365206D6F64756C6573206D6179206361757365206D656D6F727920616C6C6F636174696F6E2070726F626C656D733A0D0A0931303030303030303A20453A5C47616D65735C436F6C6C6170736520315C70726F746563742E646C6C0D0A0936443539303030303A20433A5C50524F4752417E315C4B41535045527E312E30464F5C6B6C6F65686B2E646C6C0D0A09094B6173706572736B79204C6162205A414F0D0A09094B6173706572736B7920416E74692D56697275730D0A09094B6173706572736B79204F4520706C7567696E206C6F616465720D0A0936443032303030303A20433A5C50524F4752417E315C4B41535045527E312E30464F5C616469616C686B2E646C6C0D0A09094B6173706572736B79204C6162205A414F0D0A09094B6173706572736B7920416E74692D56697275730D0A09096B6C6469616C686B0D0A0D0A73747265616D2D3E4F70656E206661696C656420283830303730303033290D0A30303A30303A322E313720696E697420646973706C61790D0A094E5649444941204765466F726365204754203234304D20202C2076656E646F72203433313820284E5669646961292C2064657669636520323631320D0A09447269766572206275696C6420383536320D0A0953637265656E20343832783237312C203139323078313038302C2033326269742C20616120300D0A20204372656174654465766963652072657475726E65642038383736303836630D0A73747265616D2D3E4F70656E206661696C656420283830303730303033290D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A20204372656174654465766963652072657475726E65642038383736303836630D0A30303A30303A352E383220696E697420646973706C61790D0A094E5649444941204765466F726365204754203234304D20202C2076656E646F72203433313820284E5669646961292C2064657669636520323631320D0A09447269766572206275696C6420383536320D0A0953637265656E20343832783237312C2031303234783736382C2033326269742C20616120300D0A09617661696C61626C65206D656D6F72793A203235372E304D0D0A09646F6E650D0A30303A30303A31312E3937206C6F6164696E67207363656E65206D61726B5F636173746C650D0A0D0A30303A30303A34302E3234207363656E6520737461727465640D0A30303A32313A33352E3931206C6F6164696E67207363656E65206D61726B5F636173746C655F696E746572696F720D0A0D0A30303A32313A34342E3939207363656E6520737461727465640D0A30303A32343A33312E313420646973706C61792073687574646F776E0D0A657869740D0A, CAST(0x0000A027017521DA AS DateTime))
SET IDENTITY_INSERT [dbo].[FileVersions] OFF
/****** Object:  Table [dbo].[Items]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[IdParent] [int] NULL,
	[IdFile] [int] NULL,
	[IdItem] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип элемента
 0 - файл или директория
 1 - расшаренная директория - одна во всей таблице
 2 - корневая директория пользователя
 3 - ссылка на объект' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'Type'
GO
SET IDENTITY_INSERT [dbo].[Items] ON
INSERT [dbo].[Items] ([Id], [Type], [IdParent], [IdFile], [IdItem]) VALUES (1, 2, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Type], [IdParent], [IdFile], [IdItem]) VALUES (8, 0, 1, 3, NULL)
INSERT [dbo].[Items] ([Id], [Type], [IdParent], [IdFile], [IdItem]) VALUES (9, 1, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Type], [IdParent], [IdFile], [IdItem]) VALUES (10, 0, 1, 4, NULL)
INSERT [dbo].[Items] ([Id], [Type], [IdParent], [IdFile], [IdItem]) VALUES (11, 2, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Type], [IdParent], [IdFile], [IdItem]) VALUES (12, 2, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Type], [IdParent], [IdFile], [IdItem]) VALUES (14, 0, 9, 6, NULL)
SET IDENTITY_INSERT [dbo].[Items] OFF
/****** Object:  Table [dbo].[HistoryFiles]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryFiles](
	[Id] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[IdFile] [int] NOT NULL,
	[Param1] [int] NULL,
	[Param2] [int] NULL,
	[Param3] [nvarchar](64) NULL,
	[Param4] [nvarchar](64) NULL,
 CONSTRAINT [PK_HistoryFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryUsers]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryUsers](
	[Id] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[IdUser] [int] NOT NULL,
	[Param1] [int] NULL,
	[Param2] [int] NULL,
	[Param3] [nvarchar](64) NULL,
	[Param4] [nvarchar](64) NULL,
 CONSTRAINT [PK_HistoryUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](32) NOT NULL,
	[PasswordHash] [nvarchar](32) NOT NULL,
	[Surname] [nvarchar](64) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Patronymic] [nvarchar](64) NOT NULL,
	[Email] [nvarchar](64) NOT NULL,
	[BornDate] [date] NULL,
	[Status] [tinyint] NOT NULL,
	[IdRootFolder] [int] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Статус пользователя
 0 - неактивен
 1 - активен
 2 - заблокирован' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Status'
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([Id], [Login], [PasswordHash], [Surname], [Name], [Patronymic], [Email], [BornDate], [Status], [IdRootFolder], [IsAdmin]) VALUES (1, N'Emil', N'd41d8cd98f00b204e9800998ecf8427e', N'', N'', N'', N'xilofon@mail.ru', NULL, 1, 1, 1)
INSERT [dbo].[Users] ([Id], [Login], [PasswordHash], [Surname], [Name], [Patronymic], [Email], [BornDate], [Status], [IdRootFolder], [IsAdmin]) VALUES (2, N'JenekX', N'd41d8cd98f00b204e9800998ecf8427e', N'', N'', N'', N'JenekX@yandex.ru', NULL, 1, 11, 1)
INSERT [dbo].[Users] ([Id], [Login], [PasswordHash], [Surname], [Name], [Patronymic], [Email], [BornDate], [Status], [IdRootFolder], [IsAdmin]) VALUES (3, N'Tester', N'd41d8cd98f00b204e9800998ecf8427e', N'', N'', N'', N'Tester@Tester.ru', NULL, 1, 12, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[FileTags]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFile] [int] NOT NULL,
	[IdTag] [int] NOT NULL,
 CONSTRAINT [PK_ItemTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGroup] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserGroups] ON
INSERT [dbo].[UserGroups] ([Id], [IdGroup], [IdUser]) VALUES (9, 1, 3)
INSERT [dbo].[UserGroups] ([Id], [IdGroup], [IdUser]) VALUES (10, 1, 1)
INSERT [dbo].[UserGroups] ([Id], [IdGroup], [IdUser]) VALUES (11, 1, 2)
INSERT [dbo].[UserGroups] ([Id], [IdGroup], [IdUser]) VALUES (12, 2, 1)
INSERT [dbo].[UserGroups] ([Id], [IdGroup], [IdUser]) VALUES (13, 2, 2)
SET IDENTITY_INSERT [dbo].[UserGroups] OFF
/****** Object:  Table [dbo].[Messages]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] NOT NULL,
	[IdUserFrom] [int] NOT NULL,
	[IdUserFor] [int] NOT NULL,
	[IdGroupFor] [int] NOT NULL,
	[Text] [text] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[Created] [timestamp] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessRights]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRights](
	[Id] [int] NOT NULL,
	[IdFile] [int] NOT NULL,
	[IdUser] [int] NULL,
	[IdGroup] [int] NULL,
	[Type] [tinyint] NOT NULL,
 CONSTRAINT [PK_AccessRights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Права доступа к элементу
 0 - только чтение
 1 - чтение и запись' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessRights', @level2type=N'COLUMN',@level2name=N'Type'
GO
INSERT [dbo].[AccessRights] ([Id], [IdFile], [IdUser], [IdGroup], [Type]) VALUES (0, 6, 1, NULL, 1)
INSERT [dbo].[AccessRights] ([Id], [IdFile], [IdUser], [IdGroup], [Type]) VALUES (1, 3, 1, 1, 1)
INSERT [dbo].[AccessRights] ([Id], [IdFile], [IdUser], [IdGroup], [Type]) VALUES (2, 4, 1, 1, 1)
/****** Object:  Table [dbo].[Groups]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Groups] ON
INSERT [dbo].[Groups] ([Id], [Name], [Status]) VALUES (1, N'<Все>', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Status]) VALUES (2, N'Админы', 1)
SET IDENTITY_INSERT [dbo].[Groups] OFF
/****** Object:  Table [dbo].[Files]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdOwner] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[IdExtension] [int] NOT NULL,
	[Description] [text] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип файла:
 0 - файл
 1 - директория' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Files', @level2type=N'COLUMN',@level2name=N'Type'
GO
SET IDENTITY_INSERT [dbo].[Files] ON
INSERT [dbo].[Files] ([Id], [IdOwner], [Type], [Name], [IdExtension], [Description], [Created]) VALUES (3, 1, 1, N'Каталог 1', 1, N'Хуй', CAST(0x00000000000007D4 AS DateTime))
INSERT [dbo].[Files] ([Id], [IdOwner], [Type], [Name], [IdExtension], [Description], [Created]) VALUES (4, 1, 0, N'Жопа', 1, N'Очень офигенный файл', CAST(0x0000000000000FA1 AS DateTime))
INSERT [dbo].[Files] ([Id], [IdOwner], [Type], [Name], [IdExtension], [Description], [Created]) VALUES (6, 1, 0, N'setup', 2, N'', CAST(0x0000A02701751161 AS DateTime))
SET IDENTITY_INSERT [dbo].[Files] OFF
/****** Object:  Table [dbo].[Extensions]    Script Date: 04/02/2012 22:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Extensions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_Extensions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Extensions] ON
INSERT [dbo].[Extensions] ([Id], [Name]) VALUES (1, N'Хрен')
INSERT [dbo].[Extensions] ([Id], [Name]) VALUES (2, N'.ini')
SET IDENTITY_INSERT [dbo].[Extensions] OFF
/****** Object:  Default [DF_Items_Type]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_users_status]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_users_status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Users_IsAdmin]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
/****** Object:  Default [DF_Messages_Status]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_AccessRights_Type]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[AccessRights] ADD  CONSTRAINT [DF_AccessRights_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_Groups_Status]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Files_Type]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Files] ADD  CONSTRAINT [DF_Files_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Check [CK_Users_Status]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK_Users_Status] CHECK  (([Status]=(0) OR [Status]=(1) OR [Status]=(2)))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK_Users_Status]
GO
/****** Object:  Check [CK_Files_Type]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [CK_Files_Type] CHECK  (([Type]=(1) OR [Type]=(0)))
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [CK_Files_Type]
GO
/****** Object:  ForeignKey [FK_FileVersions_Files]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[FileVersions]  WITH CHECK ADD  CONSTRAINT [FK_FileVersions_Files] FOREIGN KEY([IdFile])
REFERENCES [dbo].[Files] ([Id])
GO
ALTER TABLE [dbo].[FileVersions] CHECK CONSTRAINT [FK_FileVersions_Files]
GO
/****** Object:  ForeignKey [FK_Items_Files]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Files] FOREIGN KEY([IdFile])
REFERENCES [dbo].[Files] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Files]
GO
/****** Object:  ForeignKey [FK_Items_Items1]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Items1] FOREIGN KEY([IdItem])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Items1]
GO
/****** Object:  ForeignKey [FK_Items_ItemsParent]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemsParent] FOREIGN KEY([IdParent])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ItemsParent]
GO
/****** Object:  ForeignKey [FK_HistoryFiles_Files]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[HistoryFiles]  WITH CHECK ADD  CONSTRAINT [FK_HistoryFiles_Files] FOREIGN KEY([IdFile])
REFERENCES [dbo].[Files] ([Id])
GO
ALTER TABLE [dbo].[HistoryFiles] CHECK CONSTRAINT [FK_HistoryFiles_Files]
GO
/****** Object:  ForeignKey [FK_HistoryUsers_Users]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[HistoryUsers]  WITH CHECK ADD  CONSTRAINT [FK_HistoryUsers_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[HistoryUsers] CHECK CONSTRAINT [FK_HistoryUsers_Users]
GO
/****** Object:  ForeignKey [FK_Users_Items]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Items] FOREIGN KEY([IdRootFolder])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Items]
GO
/****** Object:  ForeignKey [FK_FileTags_Files]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[FileTags]  WITH CHECK ADD  CONSTRAINT [FK_FileTags_Files] FOREIGN KEY([IdFile])
REFERENCES [dbo].[Files] ([Id])
GO
ALTER TABLE [dbo].[FileTags] CHECK CONSTRAINT [FK_FileTags_Files]
GO
/****** Object:  ForeignKey [FK_FileTags_Tags]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[FileTags]  WITH CHECK ADD  CONSTRAINT [FK_FileTags_Tags] FOREIGN KEY([IdTag])
REFERENCES [dbo].[Tags] ([Id])
GO
ALTER TABLE [dbo].[FileTags] CHECK CONSTRAINT [FK_FileTags_Tags]
GO
/****** Object:  ForeignKey [FK_UserGroups_Groups]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[UserGroups]  WITH CHECK ADD  CONSTRAINT [FK_UserGroups_Groups] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[UserGroups] CHECK CONSTRAINT [FK_UserGroups_Groups]
GO
/****** Object:  ForeignKey [FK_UserGroups_Users]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[UserGroups]  WITH CHECK ADD  CONSTRAINT [FK_UserGroups_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserGroups] CHECK CONSTRAINT [FK_UserGroups_Users]
GO
/****** Object:  ForeignKey [FK_Messages_Groups]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Groups] FOREIGN KEY([IdGroupFor])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Groups]
GO
/****** Object:  ForeignKey [FK_Messages_Users]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([IdUserFrom])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
/****** Object:  ForeignKey [FK_Messages_Users1]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users1] FOREIGN KEY([IdUserFor])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users1]
GO
/****** Object:  ForeignKey [FK_AccessRights_Files]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[AccessRights]  WITH CHECK ADD  CONSTRAINT [FK_AccessRights_Files] FOREIGN KEY([IdFile])
REFERENCES [dbo].[Files] ([Id])
GO
ALTER TABLE [dbo].[AccessRights] CHECK CONSTRAINT [FK_AccessRights_Files]
GO
/****** Object:  ForeignKey [FK_AccessRights_Groups]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[AccessRights]  WITH CHECK ADD  CONSTRAINT [FK_AccessRights_Groups] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[AccessRights] CHECK CONSTRAINT [FK_AccessRights_Groups]
GO
/****** Object:  ForeignKey [FK_AccessRights_Users]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[AccessRights]  WITH CHECK ADD  CONSTRAINT [FK_AccessRights_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[AccessRights] CHECK CONSTRAINT [FK_AccessRights_Users]
GO
/****** Object:  ForeignKey [FK_Files_Extensions]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_Extensions] FOREIGN KEY([IdExtension])
REFERENCES [dbo].[Extensions] ([Id])
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_Extensions]
GO
/****** Object:  ForeignKey [FK_Files_Users]    Script Date: 04/02/2012 22:53:53 ******/
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_Users] FOREIGN KEY([IdOwner])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_Users]
GO
