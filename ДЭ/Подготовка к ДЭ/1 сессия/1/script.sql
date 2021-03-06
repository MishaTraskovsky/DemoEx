USE [master]
GO
/****** Object:  Database [RealEstateAgency]    Script Date: 02.10.2020 0:59:36 ******/
CREATE DATABASE [RealEstateAgency]
begin
EXEC [RealEstateAgency].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RealEstateAgency] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ARITHABORT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RealEstateAgency] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RealEstateAgency] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RealEstateAgency] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RealEstateAgency] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RealEstateAgency] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RealEstateAgency] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RealEstateAgency] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RealEstateAgency] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RealEstateAgency] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RealEstateAgency] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RealEstateAgency] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RealEstateAgency] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RealEstateAgency] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RealEstateAgency] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RealEstateAgency] SET  MULTI_USER 
GO
ALTER DATABASE [RealEstateAgency] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RealEstateAgency] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RealEstateAgency] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RealEstateAgency] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RealEstateAgency] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RealEstateAgency] SET QUERY_STORE = OFF
GO
USE [RealEstateAgency]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nchar](16) NULL,
	[Email] [nvarchar](60) NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[MiddleName] [nvarchar](30) NULL,
 CONSTRAINT [PK_dbo.Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DemandId] [int] NOT NULL,
	[SupplyId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Deal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Demand]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demand](
	[Id] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[RealtorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Demand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estate]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [money] NULL,
	[Area] [float] NULL,
	[HouseNum] [int] NULL,
	[FlatNum] [int] NULL,
	[CoordinateLatitude] [real] NULL,
	[CoordinateLongitude] [real] NULL,
	[City] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Estate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filter]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filter](
	[DemandId] [int] IDENTITY(1,1) NOT NULL,
	[MinArea] [float] NULL,
	[MaxArea] [float] NULL,
	[MinCoordinateLatitude] [int] NULL,
	[MaxCoordinateLatitude] [int] NULL,
	[MinCoordinateLongitude] [int] NULL,
	[MaxCoordinateLongitude] [int] NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[HouseNum] [int] NULL,
	[FlatNum] [int] NULL,
	[MinPrice] [money] NULL,
	[MaxPrice] [money] NULL,
 CONSTRAINT [PK_dbo.Filter] PRIMARY KEY CLUSTERED 
(
	[DemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flat]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flat](
	[Id] [int] NOT NULL,
	[Floor] [int] NOT NULL,
	[RoomCount] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Flat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlatFilter]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatFilter](
	[DemandId] [int] NOT NULL,
	[MinFloor] [int] NULL,
	[MaxFloor] [int] NULL,
	[MinRoomCount] [int] NULL,
	[MaxRoomCount] [int] NULL,
 CONSTRAINT [PK_dbo.FlatFilter] PRIMARY KEY CLUSTERED 
(
	[DemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] NOT NULL,
	[FloorCount] [int] NOT NULL,
	[RoomCount] [int] NOT NULL,
 CONSTRAINT [PK_dbo.House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HouseFilter]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HouseFilter](
	[DemandId] [int] NOT NULL,
	[MinFloorCount] [int] NULL,
	[MaxFloorCount] [int] NULL,
	[MinRoomCount] [int] NULL,
	[MaxRoomCount] [int] NULL,
 CONSTRAINT [PK_dbo.HouseFilter] PRIMARY KEY CLUSTERED 
(
	[DemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LandPlot]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandPlot](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.LandPlot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LandPlotFilter]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandPlotFilter](
	[DemandId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.LandPlotFilter] PRIMARY KEY CLUSTERED 
(
	[DemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Realtor]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Realtor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DealShare] [float] NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[MiddleName] [nvarchar](30) NULL,
 CONSTRAINT [PK_dbo.Realtor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supply]    Script Date: 02.10.2020 0:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[RealtorId] [int] NOT NULL,
	[EstleId] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_dbo.Supply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202010012152369_InitialCreate', N'RealEstateAgency.Data.AgencyModel', 0x1F8B0800000000000400ED5DDB6EE4B8117D0F907F10FA290966DD9E99EC226BB477E1B5C71B23E3B1E19E59E4CD905B745B882E1D5D0C1B41BE2C0FF9A4FC42A80B255E8A124951EACB0CFCE226C543B2AA582C16C9E2FFFEF3DFC5CF2F61E03CA324F5E3E874F6F6E878E6A068157B7EB43E9DE5D9E3777F99FDFCD3EF7FB7F8E0852FCE6FE4BBF7C577B864949ECE9EB26C73329FA7AB2714BAE951E8AF92388D1FB3A3551CCE5D2F9EBF3B3EFE71FEF6ED1C618819C6729CC55D1E657E88CA1FF8E7791CADD026CBDDE03AF65090D6E9386759A23A9FDC10A51B77854E6777C80D3EA4999BA1B3356EE9EBD1859BB933E72CF05DDC98250A1E678E1B4531FE0237F5E44B8A96591247EBE50627B8C1E7D70DC2DF3DBA418AEA2E9CB49FABF6E6F85DD19B795B9040ADF2348B434DC0B7EF6BF2CCF9E246449E35E4C304FC80099DBD16BD2E89783A3B0F7C14653387AFEAE43C488ACF24143EAACABD71F8DC378D5460E129FEDE38E77990E5093A8D509E256EF0C6B9CD1F027FF537F4FA39FE078A4EA33C08E846E266E23C260127DD26F10625D9EB1D7AAC9B7EE5CD9C395B6ECE176C8A5165AA6E5D45D9FB7733E713AEDC7D08502303140996599CA05F518412DC3DEFD6CD32944405062AA928D4CED575FB1447885487A50E8FA19973EDBE7C44D13A7BC2A3EB879973E9BF208F2464498EBFFF12F978C021F2B3BB8E0FA1EB071D75FC70CCD551F752AB924B3F49B3E2DF8E8ADEDBA8E8A33B4D3DD7BEE70568949A3EB9CFFEBA141FAECE0B3C52232C7D772828B3D3277F5329A87A2CDD932F2E9338BC8B836670D619F7CB384F56458B6328F7B39BAC51A6DE9E65BED904AF5DED215F08EDA93264EDA973A1F62CE6ADFEE9D44A8414BA5AA92A77805AA95B9E2BCA0F45298886359E368C54C4C8DC622EF2448860912702A83E04DD006C4D8D57E5B76DA1920561A7F37487DEA51FE099046C499505D085C910E8C2E6EAD2A5663CD8A03A0F68119B233489CB86DAA4A10E0AC6E82B8362581F9C2AB067A054AC19AA362A7D6F4F6B744C940AE3941743680C5B9822EB498E6F09952CB484CE1B341A48B374C74355EEDB88D8D98994B7EDD32C4043416E137FD558B91768E58785C4DE26F8BF7A8DFFE3CC59AEDC02F0CFA3CEF57DE6A464AEE78CCDC173BDC2C8E5E77A6854ABB6A31A68604BAAACAA833E4AE9D67059026DF8FC31667C915F6C8E74C6EFE098B28E2364D3D571558A3D1DE79C3DA4387795D5CBBD03D4799A1AA21BEC2C416E83156382F62AA8BFC6798A3EE521D7E11E8F04965ADD32E7719C787E8469F411D32DCBBD76F18F97FEFD0DA5CAC7D1DA04A06486D4DFF0BD0DCF06C645E598B45B4BB789542AAF610A8E57B9320568A44C0A69D1572545298B8AE417374535575ADACC7AA43C2E74F42053248EC3F3388F321D1865C29663579FB265B11D20AD3661A6A6EF47BC74B90D6203E1252547A732DB31A1078DA1A1DB81BAE0B7D54AE7FADD0D964F6E82F466DC6FEEFC71DDF9CA2E337ED29378D42CB82B946D7A59936C38F589DB537B222ECBED944DDF7ACE74F583AACFCD9E96B8F6237DAB1C0F1C83427E2437B2956C745CED5004A60DBCA16ED008238891CCF02D2C28265B9E61C6595D8962420CC33351FD8ADB37BC968537778CD73AC68AB6293B9ED958B7AD4F14A0A54F2FBF0D0AF991CC82EFAD4DA5A0DE4ACA946F54E1DD609C113D4D4BEE0A0BC992CB948B6CF9D119C976F22C4DE3955FB693B1262B3F394BC70F91E77438CDDB9A88B5798D9BE96F70C330C1B0D21518030336EEE516B072DAB3707F12E0B0998692C236728373AC9D3165FC28136D3A3F5AF91B379077852BA2B8442C24A601E7732ED0064585DD26EFAF4AADED96AB587753056798F6516531A764A05B3478BF9E8C9B52279FE845501711E9D6489FDC59121449A726101649CF556A6EB612B7222FDC8258C659D9EAB8656CE34D521717D929155AA954C6DA28D202F769026181FBAD5231B57BBD5569A947711F6379C7851569E1773827D22D709F269416B6DFFB202DF491201957C1737C7D0AA04B4CC00347939829405726100FA0BF2AB5CABC64138906BB1897F152B23217ED6575F1909CD5EC93B8E3A32311D5484AC03E0DE598B2B480DD3797D20924853D8D2C63ABE4347ECB5672064A5D5224A79D27324EC00E4DA04EC05EABD4DB1ECFDBA698F41826924B1216C4644B5609D8A1E9C444DF2699544C2A3F102E93E1122821E7A04A974D797D11F0047D4951ED0C4AC13DA80A738932EE7065EB73E24449901CB63CD122427992D15BBE306880D245724F59229A426992D1539E780884F2D00104A07CB30A10009A9C1E046200080090278D551C3C19EA63A7D417C0A9545E66BBFD6D4D6B5B520B52DFED60A310408ECED90E29745638F82576B8D387A4E445A29A0D8B8292DBA8977C06DDE70F0088BDEFF288A8F844A8564BA458C509C2301E5404E67D27C494F71D9A465556F8867DE726CF31F8CE5C4F113B2E5DAAF62E567B19D5BB3AB53FC6B9AD4EB1BB1DCB2F850518D56058CD2AACB8C6906FEEE2A2D8ED8EB584C26A826A323CB72B2C1F46ECB67C5477D8C60AD6B151B72D8E68B2C9D798714DDE625EC59CA813167349708AC5B5BBD9F8D19A0A5651A738CB2A52C5F9774BFDF80D6185315F3133246F7436356145E7AE11975B1C5DF75079EAAFD8687C708B4320E75E287C461BAD129388D4C4D8A522A788A1443E2FFE6FE707593409C0B8AF012E71B7C26265509E8512A54528E814B142DCC04D80E399E7719087917C89222F5D4774A001EA24758C3A62038D5127A963502738691C2A591DAB3DA44943B5A9EA48F4314C1A8B4E17D116738EC7C2924D10276E54F3C2A924BA52FDAC2BBA309082E8CA0A8E23BAED9A98C690AF94E54894C79F86EAD808D8229341534B9FC5228C1283A162E3B0B775DCD2187277AE1CA93D5B4023C94F1C6C8DB952534397BD3090028365050F71044BA73372B28099D064C70DE438F5594D666AAD927646E0A07B453D02779516FFDF3CFEA1EBB6EA1F0D440F6E8B9CBC03ED1E0DE6C830AAE3E4344495A28ED01E45A651DA540DFB899C4F66AC2792A8312481B3EACCE004F28DD0DB43E812F8F6030DFCF2F83803085C27E84220C7DC9999A24EB33F6C8D947B79F7537F7CC1C5C6195DF5B165561663C8AD25C7A04EB2322ABD4DDE117E545746F51922293722470072D2E907C89BE6BAA93E7BE4458771684B533D712C0FA7A9044981A4D29263AD209ACBA4EC12A249FEE69F985002A1EB16C38CCD0AD1C4D884DBD2254AB616A3CDDD45965F91AEE9D85C67647048A2567BFA6C3EC9275A6DEDAD03FEC4B41FB07529FBC6B427925A24DF8C65848E670CEFDEF2A4BD52C9F1557BF1D65EA6E47837DA1ADDD8D897292B25937FAB9A0E5807B4A95ABC82909A54AD36496C573647AB6D3244266747E489BE9569B864D9BE44C1EC335BCA70D7342101D3C7FCDAA58CBB386ABEF81A5FD6463586854D78FE93A6F63AA5F9DD6CC2D71BE0FDCF46083BE2D527457480F8D9F78ADDF0E56B9AA1B0DE22F86740CE25900FAEDDC87F446956DDB49DBD3B7EFB8E7B7662779E8098A7A9C76C4549DF8160B935419424BFA0696F8413DDA0A7F4CB0BD10A2F5F8587175A44ED6716A2673711308B8716F43085304C20EE7B6D5C3EEA92255831C89211B0EE1300DB1148E1C4F655E4A197D3D9BFCACF4F9CABBFDF5F796F9C9B042B8213E7D8F9F7E090FDAAD59272832A170214ABD6DE14D4A85E2FCAFB6128203ECA932A7D49B941DCE503B2AB564ECA8DC15BF0CECCBE72F7EB19BBC04CC8062557ADBC2E36A86A269C538867F83ECEE9469B3E0CE9EC2693CA544F477E7B0CE22278AE1E001F34ACECA7A675C4861033409007924BCA13F0C6687C44382338BF0DDD06DA51DF6B1B686CCC392350E50103EE4DEDED8811E2A81A09FD377BBE5364C0F8611307DB1C457AB8F89A46B2C385DB34C3E88ABE69A03F3B63719AE07546E61CDC400B801634E8249A7E27A6573E5EA791A5C107E95400D18BFA7FA8EE0326D425C73DB3C0F5FD20263148B7AFEEA75A75F3414BCD14DA6008201AA6594BF461349F8D38E8A1A939B4A61D9FD28DC9AF62805A181B7670F661A8C2E73AF776B49A06F33DD45122A3C79070C003430057E1092888D183FE4E13410FBC4228D6B357A17D0786F2559617ABA17BA78BEB7C70A17987865725E12898D13D7EF4DDE94264EE45C854BD00BB43793EF5209F90E71AA37CDB3C570F933B3834EE74D3B7C6989B6AFADEA390B70383DC2A4B8BEDB0B6D305B21D2C5F3B16BA766014D2A9676F6950A06D4EDE7B14827620BBA79EB8A763B7C6BCBD6576179EF4FB82012DD07DF1A8D87DBD4EFB1CDF03DB1C969769D5F3C9F46451268CA5E5A75BA5496203EC90766F775240292059951480BE2ACBB33EFDBC1C271130D8FECEFE9D97C976CEF22B7DFA3DAA02DA77B1AC2BEA17C1298C3A65FFB5852C72C50EA90B6A63A7475FC8B7802C2B0CE661435E2C0E4D6574DF17DC399D4136397AD486640FC8B2E668DFBAA760DAC4FDD71F1DD155764885B01B5F3D5AA47397CCB222E19FD704A4E4D0D449EFC5D02D6B14EEBA6673529A0F36CCB3947D5EA1F7718BEA6AE6E9CC7B8831DBABBD4C5B0F5F40D8361EC580716D3C970121DB7A4A03C2B6F7CC06846EED0D0E085CF23E87805D2E6745E43219C42D731450E5ADA632653528B6BEB6AF852AEA7408BDCE520196F680C99556A2D887769A17EA69B3A04ADA5CC51AA4FDE13FE8AA6D4BEFBEE8BEF5422BA81D7FDD45F735176582ECC4EB2DDA6F96B0D3D6AE3FD0A2DDBD31B967F10D16FD7757C6196F965F5AD17D5B654C61B4FC9A8AEE43221374CDD68B29BA5D1B738CA9EE4A40A26AB2A16161C2A06DBC36C0AF1D52E83AE8256419E4E7B730CE4583950F8B369C5CEA5E6A8048862E6E0BD2C3D8D85438624B04D1F6D8CA8833CCF56B4186803583100A6D38D174FD9600B906B93E2D4814BFE2618328DB2391891BAF835C83BD8216640C5ECA4181D0D4C9A8F1FE9718626C31BFCB71E9B03A41BFB840A9BF6E21161833422BC677D67C73153DC6C489C7B5887CC25FF74099EBB9997B9664FEA3BBCA70F60AA5A91FAD67CE6F6E901712193E20EF2ABAC9B34D9EE12EA3F0819DF60B576057FDE523676C9B17379BE2576AA30BB8993EEE02BA897EC9FDC06BDA7D09DC4F9040143EC6FA0A77C1CBACB8CABD7E6D903E096F72C9806AF235AED1CF28DCE0090FA537D1D27D46266DFB92A28F68EDAE5E49A43839483F2358B22F2E7C779DB8615A63B4E5F14F2CC35EF8F2D3FF0135D863A5C6B10000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (1, N'32-25-55        ', NULL, N'Семенов', N'Николаевич', N'Евгений ')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (2, NULL, N'dummy@email.ru', N'Денисова', N'Леонидовна', N'Олеся')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (3, NULL, N'client@esoft.tech', N'Сафронов', N'Вячеславович', N'Алексей')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (4, N'551988          ', NULL, N'Кудряшов', N'Витальевич', N'Александр')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (5, NULL, N'fedorov@mail.ru', N'Фёдоров', N'Николаевич', N'Алексей')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (6, N'83452112233     ', NULL, N'Пелымская', N'Александровна', N'Светлана')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (7, NULL, N'dummy@email.ru', N'Коновальчик', N'Геннадьевна', N'Татьяна')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (8, N'898489848       ', NULL, N'Молоковская', N'Михайловна', N'Светлана')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (9, N'895159848       ', NULL, N'Моторина', N'Сергеевна', N'Анастасия')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (10, NULL, N'angel@mail.ru', N'Поспелова', N'Александровна', N'Ольга')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (11, N'445588          ', N'445588@email.ru', N'Жиляков', N'Владимирович', N'Владимир')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (12, NULL, N'parampampam@mail.ru', N'Ефремов', N'Николаевич', N'Владислав')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (13, N'7998888444      ', NULL, N'Баль', N'Сергеевна', N'Валентина')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (14, NULL, N'test@test.test', N'Стрелков', N'Николаевич', N'Артем')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (15, NULL, N'foo@bar.ru', N'Луканин', N'Валерьевич', N'Павел')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (16, N'12345678910     ', NULL, N'Шарипова', N'Закирчановна', N'Эльвира')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (17, NULL, N'fomina@email.ru', N'Фомина', N'Николаевна', N'Маргарита')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (18, N'777             ', N'kremlevvu@gmail.ru', N'Кремлев', N'Юрьевич', N'Владислав')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (19, NULL, N'ponomareva@gmail.ru', N'Пономарева', N'Сергеевна', N'Елена')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (20, N'112             ', NULL, N'Шелест', N'Васильевна', N'Тамара')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (21, NULL, N'sharipov@yandex.ru', N'Шарипов', N'Владимирович', N'Рустам')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (22, N'2               ', NULL, N'Романов', N'Федорович', N'Сергей')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (23, NULL, N'kruch@list.ru', N'Кручинин', N'Андреевич', N'Иван')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (24, N'688899444       ', NULL, N'Алферов', N'Николаевич', N'Алексей')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (25, N'489848565       ', N'popovan@bik.ru', N'Попов ', N'Николаевич', N'Алексей')
INSERT [dbo].[Client] ([Id], [Phone], [Email], [FirstName], [LastName], [MiddleName]) VALUES (26, NULL, N'neez@mail.ru', N'Неезжала', N'Леонидовна', N'Наталья')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Deal] ON 

INSERT [dbo].[Deal] ([Id], [DemandId], [SupplyId]) VALUES (1, 1, 1)
INSERT [dbo].[Deal] ([Id], [DemandId], [SupplyId]) VALUES (2, 3, 2)
INSERT [dbo].[Deal] ([Id], [DemandId], [SupplyId]) VALUES (3, 5, 3)
INSERT [dbo].[Deal] ([Id], [DemandId], [SupplyId]) VALUES (4, 7, 4)
SET IDENTITY_INSERT [dbo].[Deal] OFF
GO
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (1, 15, 2)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (2, 9, 2)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (3, 6, 8)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (4, 7, 7)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (5, 8, 1)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (6, 3, 3)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (7, 16, 9)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (8, 17, 1)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (9, 18, 7)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (10, 19, 8)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (11, 20, 2)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (12, 21, 3)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (13, 22, 4)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (14, 23, 5)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (15, 24, 6)
INSERT [dbo].[Demand] ([Id], [ClientId], [RealtorId]) VALUES (16, 25, 10)
GO
SET IDENTITY_INSERT [dbo].[Estate] ON 

INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (1, NULL, 41.700000762939453, 25, 12, 0, 0, N'Тюмень', N'Энергостроителей')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (2, NULL, 105, 8, 44, 0, 0, N'Тюмень', N'Елизарова')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (3, NULL, 62, 139, 6, 0, 0, N'Тюмень', N'Московский тракт')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (4, NULL, 50, 189, 5, 0, 0, N'Тюмень', N'Широтная')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (5, NULL, 51.700000762939453, 110, 99, 0, 0, N'Тюмень', N'Пролетарская')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (6, NULL, 44, 189, 1, 0, 0, N'Тюмень', N'Тараскульская')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (7, NULL, 43.099998474121094, 22, 1, 0, 0, N'Тюмень', N'Парфенова')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (8, NULL, 92, 144, 16, 0, 0, N'Тюмень', N'Республики')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (9, NULL, 84.4000015258789, 25, NULL, 0, 0, N'Тюмень', N'1-й Заречный')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (10, NULL, 130, NULL, NULL, 0, 0, N'Тюмень', N'Ялyтopoвcкий тpaкт')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (11, NULL, 120, NULL, NULL, 0, 0, N'Тюмень', N'Березняковский п')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (12, NULL, 4.1999998092651367, NULL, NULL, 0, 0, N'Тюмень', N'Луговое')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (13, NULL, 12.449999809265137, NULL, NULL, 0, 0, N'Тюмень', N'Алексеевский хутор')
INSERT [dbo].[Estate] ([Id], [Price], [Area], [HouseNum], [FlatNum], [CoordinateLatitude], [CoordinateLongitude], [City], [Street]) VALUES (14, NULL, 12, NULL, NULL, 0, 0, N'Тюмень', N'Суходольский мкр')
SET IDENTITY_INSERT [dbo].[Estate] OFF
GO
SET IDENTITY_INSERT [dbo].[Filter] ON 

INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (6, 20, NULL, NULL, NULL, NULL, NULL, NULL, N'Тюмень', NULL, NULL, NULL, 3100000.0000)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, N'Широтная', N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, N'Пролетарская', N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, N'Тараскульская', N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (10, 60, NULL, NULL, NULL, NULL, NULL, NULL, N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (15, 30, NULL, NULL, NULL, NULL, NULL, NULL, N'Тюмень', NULL, NULL, NULL, NULL)
INSERT [dbo].[Filter] ([DemandId], [MinArea], [MaxArea], [MinCoordinateLatitude], [MaxCoordinateLatitude], [MinCoordinateLongitude], [MaxCoordinateLongitude], [Street], [City], [HouseNum], [FlatNum], [MinPrice], [MaxPrice]) VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Тюмень', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Filter] OFF
GO
INSERT [dbo].[Flat] ([Id], [Floor], [RoomCount]) VALUES (1, 3, 1)
INSERT [dbo].[Flat] ([Id], [Floor], [RoomCount]) VALUES (2, 5, 3)
INSERT [dbo].[Flat] ([Id], [Floor], [RoomCount]) VALUES (3, 2, 3)
INSERT [dbo].[Flat] ([Id], [Floor], [RoomCount]) VALUES (4, 7, 2)
INSERT [dbo].[Flat] ([Id], [Floor], [RoomCount]) VALUES (5, 2, 2)
INSERT [dbo].[Flat] ([Id], [Floor], [RoomCount]) VALUES (6, 1, 2)
INSERT [dbo].[Flat] ([Id], [Floor], [RoomCount]) VALUES (7, 5, 1)
INSERT [dbo].[Flat] ([Id], [Floor], [RoomCount]) VALUES (8, 1, 3)
GO
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (1, NULL, NULL, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (6, 4, NULL, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (7, NULL, NULL, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (8, NULL, NULL, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (9, NULL, NULL, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (10, NULL, NULL, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (11, 4, NULL, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (12, NULL, 5, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (13, NULL, NULL, 2, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (14, NULL, NULL, 3, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (15, 4, NULL, NULL, NULL)
INSERT [dbo].[FlatFilter] ([DemandId], [MinFloor], [MaxFloor], [MinRoomCount], [MaxRoomCount]) VALUES (16, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[House] ([Id], [FloorCount], [RoomCount]) VALUES (9, 2, 0)
INSERT [dbo].[House] ([Id], [FloorCount], [RoomCount]) VALUES (10, 3, 0)
INSERT [dbo].[House] ([Id], [FloorCount], [RoomCount]) VALUES (11, 1, 0)
GO
INSERT [dbo].[HouseFilter] ([DemandId], [MinFloorCount], [MaxFloorCount], [MinRoomCount], [MaxRoomCount]) VALUES (2, NULL, NULL, NULL, NULL)
INSERT [dbo].[HouseFilter] ([DemandId], [MinFloorCount], [MaxFloorCount], [MinRoomCount], [MaxRoomCount]) VALUES (3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LandPlot] ([Id]) VALUES (12)
INSERT [dbo].[LandPlot] ([Id]) VALUES (13)
INSERT [dbo].[LandPlot] ([Id]) VALUES (14)
GO
INSERT [dbo].[LandPlotFilter] ([DemandId]) VALUES (4)
INSERT [dbo].[LandPlotFilter] ([DemandId]) VALUES (5)
GO
SET IDENTITY_INSERT [dbo].[Realtor] ON 

INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (1, 20, N'Фахрутдинов', N'Рубинович', N'Роман')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (2, 40, N'Устинов', N'Алексеевич', N'Максим')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (3, 45, N'Сысоева', N'Валентиновна', N'Людмила')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (4, 45, N'Додонов', N'Геннадьевич', N'Илья')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (5, 45, N'Мухтаруллин', N'Расыхович', N'Руслан')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (6, 45, N'Мосеева', N'Александровна', N'Любовь')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (7, 45, N'Киселев', N'Геннадьевич', N'Алексей')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (8, 50, N'Клюйков', N'Николаевич', N'Евгений')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (9, 45, N'Жданова', N'Николаевна', N'Галина')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (10, 45, N'Басырова', N'Азатовна', N'Елена')
INSERT [dbo].[Realtor] ([Id], [DealShare], [FirstName], [LastName], [MiddleName]) VALUES (11, 45, N'Швецов', N'Олегович', N'Виталий')
SET IDENTITY_INSERT [dbo].[Realtor] OFF
GO
SET IDENTITY_INSERT [dbo].[Supply] ON 

INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (1, 1, 1, 1, 2500000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (2, 5, 3, 3, 5000000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (3, 7, 5, 3, 1300000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (4, 9, 7, 4, 5000000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (5, 2, 1, 2, 4700000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (6, 3, 2, 3, 3750000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (7, 4, 2, 3, 1900000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (8, 6, 4, 3, 4300000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (9, 8, 6, 3, 1750000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (10, 10, 7, 5, 5850000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (11, 11, 7, 6, 6800000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (12, 12, 8, 7, 950000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (13, 13, 8, 8, 700000.0000)
INSERT [dbo].[Supply] ([Id], [ClientId], [RealtorId], [EstleId], [Price]) VALUES (14, 14, 8, 9, 600000.0000)
SET IDENTITY_INSERT [dbo].[Supply] OFF
GO
/****** Object:  Index [IX_DemandId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_DemandId] ON [dbo].[Deal]
(
	[DemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SupplyId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_SupplyId] ON [dbo].[Deal]
(
	[SupplyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_ClientId] ON [dbo].[Demand]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Demand]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RealtorId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_RealtorId] ON [dbo].[Demand]
(
	[RealtorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Flat]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DemandId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_DemandId] ON [dbo].[FlatFilter]
(
	[DemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[House]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DemandId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_DemandId] ON [dbo].[HouseFilter]
(
	[DemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[LandPlot]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DemandId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_DemandId] ON [dbo].[LandPlotFilter]
(
	[DemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_ClientId] ON [dbo].[Supply]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstleId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_EstleId] ON [dbo].[Supply]
(
	[EstleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RealtorId]    Script Date: 02.10.2020 0:59:37 ******/
CREATE NONCLUSTERED INDEX [IX_RealtorId] ON [dbo].[Supply]
(
	[RealtorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Deal_dbo.Demand_DemandId] FOREIGN KEY([DemandId])
REFERENCES [dbo].[Demand] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [FK_dbo.Deal_dbo.Demand_DemandId]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Deal_dbo.Supply_SupplyId] FOREIGN KEY([SupplyId])
REFERENCES [dbo].[Supply] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [FK_dbo.Deal_dbo.Supply_SupplyId]
GO
ALTER TABLE [dbo].[Demand]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Demand_dbo.Client_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Demand] CHECK CONSTRAINT [FK_dbo.Demand_dbo.Client_ClientId]
GO
ALTER TABLE [dbo].[Demand]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Demand_dbo.Filter_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Filter] ([DemandId])
GO
ALTER TABLE [dbo].[Demand] CHECK CONSTRAINT [FK_dbo.Demand_dbo.Filter_Id]
GO
ALTER TABLE [dbo].[Demand]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Demand_dbo.Realtor_RealtorId] FOREIGN KEY([RealtorId])
REFERENCES [dbo].[Realtor] ([Id])
GO
ALTER TABLE [dbo].[Demand] CHECK CONSTRAINT [FK_dbo.Demand_dbo.Realtor_RealtorId]
GO
ALTER TABLE [dbo].[Flat]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Flat_dbo.Estate_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Estate] ([Id])
GO
ALTER TABLE [dbo].[Flat] CHECK CONSTRAINT [FK_dbo.Flat_dbo.Estate_Id]
GO
ALTER TABLE [dbo].[FlatFilter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FlatFilter_dbo.Filter_DemandId] FOREIGN KEY([DemandId])
REFERENCES [dbo].[Filter] ([DemandId])
GO
ALTER TABLE [dbo].[FlatFilter] CHECK CONSTRAINT [FK_dbo.FlatFilter_dbo.Filter_DemandId]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_dbo.House_dbo.Estate_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Estate] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_dbo.House_dbo.Estate_Id]
GO
ALTER TABLE [dbo].[HouseFilter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HouseFilter_dbo.Filter_DemandId] FOREIGN KEY([DemandId])
REFERENCES [dbo].[Filter] ([DemandId])
GO
ALTER TABLE [dbo].[HouseFilter] CHECK CONSTRAINT [FK_dbo.HouseFilter_dbo.Filter_DemandId]
GO
ALTER TABLE [dbo].[LandPlot]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LandPlot_dbo.Estate_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Estate] ([Id])
GO
ALTER TABLE [dbo].[LandPlot] CHECK CONSTRAINT [FK_dbo.LandPlot_dbo.Estate_Id]
GO
ALTER TABLE [dbo].[LandPlotFilter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LandPlotFilter_dbo.Filter_DemandId] FOREIGN KEY([DemandId])
REFERENCES [dbo].[Filter] ([DemandId])
GO
ALTER TABLE [dbo].[LandPlotFilter] CHECK CONSTRAINT [FK_dbo.LandPlotFilter_dbo.Filter_DemandId]
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Supply_dbo.Client_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Supply] CHECK CONSTRAINT [FK_dbo.Supply_dbo.Client_ClientId]
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Supply_dbo.Estate_EstleId] FOREIGN KEY([EstleId])
REFERENCES [dbo].[Estate] ([Id])
GO
ALTER TABLE [dbo].[Supply] CHECK CONSTRAINT [FK_dbo.Supply_dbo.Estate_EstleId]
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Supply_dbo.Realtor_RealtorId] FOREIGN KEY([RealtorId])
REFERENCES [dbo].[Realtor] ([Id])
GO
ALTER TABLE [dbo].[Supply] CHECK CONSTRAINT [FK_dbo.Supply_dbo.Realtor_RealtorId]
GO
USE [master]
GO
ALTER DATABASE [RealEstateAgency] SET  READ_WRITE 
GO
