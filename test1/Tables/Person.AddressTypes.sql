SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Person].[AddressTypes] (
		[AddressTypeID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]              [dbo].[Name] NOT NULL,
		[rowguid]           [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_AddressType_AddressTypeID]
		PRIMARY KEY
		CLUSTERED
		([AddressTypeID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'INDEX', N'PK_AddressType_AddressTypeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'CONSTRAINT', N'PK_AddressType_AddressTypeID'
GO
ALTER TABLE [Person].[AddressTypes]
	ADD
	CONSTRAINT [DF_AddressType_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'CONSTRAINT', N'DF_AddressType_rowguid'
GO
ALTER TABLE [Person].[AddressTypes]
	ADD
	CONSTRAINT [DF_AddressType_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'CONSTRAINT', N'DF_AddressType_ModifiedDate'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_AddressType_rowguid]
	ON [Person].[AddressTypes] ([rowguid])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'INDEX', N'AK_AddressType_rowguid'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_AddressType_Name]
	ON [Person].[AddressTypes] ([Name])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'INDEX', N'AK_AddressType_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Types of addresses stored in the Address table. ', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for AddressType records.', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'COLUMN', N'AddressTypeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address type description. For example, Billing, Home, or Shipping.', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'COLUMN', N'rowguid'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'AddressTypes', 'COLUMN', N'ModifiedDate'
GO
ALTER TABLE [Person].[AddressTypes] SET (LOCK_ESCALATION = TABLE)
GO
