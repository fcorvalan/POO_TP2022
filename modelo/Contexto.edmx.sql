
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/21/2022 17:46:43
-- Generated from EDMX file: C:\Users\usuario\source\repos\vista\modelo\Contexto.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DB_MVC];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'usuarios'
CREATE TABLE [dbo].[usuarios] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Grupos'
CREATE TABLE [dbo].[Grupos] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'usuarioGrupo'
CREATE TABLE [dbo].[usuarioGrupo] (
    [usuario_Id] int  NOT NULL,
    [Grupo_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'usuarios'
ALTER TABLE [dbo].[usuarios]
ADD CONSTRAINT [PK_usuarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [PK_Grupos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [usuario_Id], [Grupo_Id] in table 'usuarioGrupo'
ALTER TABLE [dbo].[usuarioGrupo]
ADD CONSTRAINT [PK_usuarioGrupo]
    PRIMARY KEY CLUSTERED ([usuario_Id], [Grupo_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [usuario_Id] in table 'usuarioGrupo'
ALTER TABLE [dbo].[usuarioGrupo]
ADD CONSTRAINT [FK_usuarioGrupo_usuario]
    FOREIGN KEY ([usuario_Id])
    REFERENCES [dbo].[usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Grupo_Id] in table 'usuarioGrupo'
ALTER TABLE [dbo].[usuarioGrupo]
ADD CONSTRAINT [FK_usuarioGrupo_Grupo]
    FOREIGN KEY ([Grupo_Id])
    REFERENCES [dbo].[Grupos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_usuarioGrupo_Grupo'
CREATE INDEX [IX_FK_usuarioGrupo_Grupo]
ON [dbo].[usuarioGrupo]
    ([Grupo_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------