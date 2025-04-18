/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.3                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          Game.dez                                        */
/* Project name:          Game                                            */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2025-04-18 16:00                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [LogonRecord] DROP CONSTRAINT [Member_LogonRecord]
GO


ALTER TABLE [LogonRecord] DROP CONSTRAINT [Game_LogonRecord]
GO


ALTER TABLE [LogonScore] DROP CONSTRAINT [LogonRecord_LogonScore]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "LogonScore"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [LogonScore] DROP CONSTRAINT [PK_LogonScore]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonScore', 'COLUMN', N'logon_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonScore', 'COLUMN', N'seq_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonScore', 'COLUMN', N'score'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonScore', NULL, NULL
GO


DROP TABLE [LogonScore]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "LogonRecord"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [LogonRecord] DROP CONSTRAINT [PK_LogonRecord]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', 'COLUMN', N'logon_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', 'COLUMN', N'entrance_time'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', 'COLUMN', N'member_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', 'COLUMN', N'game_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'LogonRecord', NULL, NULL
GO


DROP TABLE [LogonRecord]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Game"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Game] DROP CONSTRAINT [PK_Game]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Game', 'COLUMN', N'game_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Game', 'COLUMN', N'game_name'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Game', 'COLUMN', N'difficulty'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Game', NULL, NULL
GO


DROP TABLE [Game]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.Member"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[Member] DROP CONSTRAINT [PK_Member]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'member_ID'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'member_name'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'address'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'gender'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'birthdate'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Member', 'COLUMN', N'password'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Member', NULL, NULL
GO


DROP TABLE [dbo].[Member]
GO

