SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AWBuildVersion] (
		[SystemInformationID]     [tinyint] IDENTITY(1, 1) NOT NULL,
		[Database Version]        [nvarchar](25) NOT NULL,
		[VersionDate]             [datetime] NOT NULL,
		[ModifiedDate]            [datetime] NOT NULL,
		[a]                       [nchar](10) NULL,
		[b]                       [nchar](10) NULL,
		[r]                       [nchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AWBuildVersion]
	ADD
	CONSTRAINT [PK_AWBuildVersion_SystemInformationID]
	PRIMARY KEY
	CLUSTERED
	([SystemInformationID])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[AWBuildVersion]
	ADD
	CONSTRAINT [DF_AWBuildVersion_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
