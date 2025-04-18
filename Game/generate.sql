/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.3                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          Game.dez                                        */
/* Project name:          Game                                            */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2025-04-18 16:00                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.Member"                                                 */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [dbo].[Member] (
    [member_ID] INTEGER NOT NULL,
    [member_name] NVARCHAR(40),
    [address] NVARCHAR(40),
    [gender] TINYINT,
    [birthdate] DATE,
    [password] NVARCHAR(40),
    CONSTRAINT [PK_Member] PRIMARY KEY ([member_ID])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'會員基本資料', 'SCHEMA', N'dbo', 'TABLE', N'Member', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'會員編號', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'member_ID'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'會員姓名', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'member_name'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'地址', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'address'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'性別', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'gender'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'出生年月日', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'birthdate'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'密碼', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'password'
GO


/* ---------------------------------------------------------------------- */
/* Add table "Game"                                                       */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [Game] (
    [game_id] INTEGER NOT NULL,
    [game_name] NVARCHAR(40),
    [difficulty] TINYINT,
    CONSTRAINT [PK_Game] PRIMARY KEY ([game_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'遊戲基本資料', 'SCHEMA', N'dbo', 'TABLE', N'Game', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'遊戲編號', 'SCHEMA', N'dbo', 'TABLE', N'Game', 'COLUMN', N'game_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'遊戲名稱', 'SCHEMA', N'dbo', 'TABLE', N'Game', 'COLUMN', N'game_name'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'難易度', 'SCHEMA', N'dbo', 'TABLE', N'Game', 'COLUMN', N'difficulty'
GO


/* ---------------------------------------------------------------------- */
/* Add table "LogonRecord"                                                */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [LogonRecord] (
    [logon_id] INTEGER NOT NULL,
    [entrance_time] VARCHAR(40),
    [member_id] INTEGER NOT NULL,
    [game_id] INTEGER NOT NULL,
    CONSTRAINT [PK_LogonRecord] PRIMARY KEY ([logon_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'進站紀錄', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'進站編號', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', 'COLUMN', N'logon_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'進站時間', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', 'COLUMN', N'entrance_time'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'會員編號', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', 'COLUMN', N'member_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'遊戲編號', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', 'COLUMN', N'game_id'
GO


/* ---------------------------------------------------------------------- */
/* Add table "LogonScore"                                                 */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [LogonScore] (
    [logon_id] INTEGER NOT NULL,
    [seq_id] INTEGER NOT NULL,
    [score] BIGINT NOT NULL,
    CONSTRAINT [PK_LogonScore] PRIMARY KEY ([logon_id], [seq_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'遊戲得分', 'SCHEMA', N'dbo', 'TABLE', N'LogonScore', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'進站編號', 'SCHEMA', N'dbo', 'TABLE', N'LogonScore', 'COLUMN', N'logon_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'序號', 'SCHEMA', N'dbo', 'TABLE', N'LogonScore', 'COLUMN', N'seq_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'得分', 'SCHEMA', N'dbo', 'TABLE', N'LogonScore', 'COLUMN', N'score'
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [LogonRecord] ADD CONSTRAINT [Member_LogonRecord] 
    FOREIGN KEY ([member_id]) REFERENCES [dbo].[Member] ([member_ID])
GO


ALTER TABLE [LogonRecord] ADD CONSTRAINT [Game_LogonRecord] 
    FOREIGN KEY ([game_id]) REFERENCES [Game] ([game_id])
GO


ALTER TABLE [LogonScore] ADD CONSTRAINT [LogonRecord_LogonScore] 
    FOREIGN KEY ([logon_id]) REFERENCES [LogonRecord] ([logon_id])
GO

