SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [hhh].[pf] (
		[a]             [int] IDENTITY(1, 1) NOT NULL,
		CONSTRAINT [PK_pf_a]
		PRIMARY KEY
		CLUSTERED
		([a])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'hhh', 'TABLE', N'pf', 'INDEX', N'PK_pf_a'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'hhh', 'TABLE', N'pf', 'CONSTRAINT', N'PK_pf_a'
GO
ALTER TABLE [hhh].[pf]
	ADD
	CONSTRAINT [DF_pf_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'hhh', 'TABLE', N'pf', 'CONSTRAINT', N'DF_pf_ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product images.', 'SCHEMA', N'hhh', 'TABLE', N'pf', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for pf records.', 'SCHEMA', N'hhh', 'TABLE', N'pf', 'COLUMN', N'a'
GO
ALTER TABLE [hhh].[pf] SET (LOCK_ESCALATION = TABLE)
GO
