
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/23/2019 23:58:25
-- Generated from EDMX file: C:\Users\qiu_h\source\repos\29368081_FIT5032_Assignment\29368081_FIT5032_Assignment\Models\CarsBookings_Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [carsBookings];
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

-- Creating table 'Cars'
CREATE TABLE [dbo].[Cars] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [car_make] nvarchar(max)  NOT NULL,
    [car_model] nvarchar(max)  NOT NULL,
    [car_modelYear] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Bookings'
CREATE TABLE [dbo].[Bookings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [booking_name] nvarchar(max)  NOT NULL,
    [datetime] datetime  NOT NULL,
    [booking_periodLength] int  NOT NULL,
    [CarId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Cars'
ALTER TABLE [dbo].[Cars]
ADD CONSTRAINT [PK_Cars]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [PK_Bookings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CarId] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_CarBooking]
    FOREIGN KEY ([CarId])
    REFERENCES [dbo].[Cars]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarBooking'
CREATE INDEX [IX_FK_CarBooking]
ON [dbo].[Bookings]
    ([CarId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------