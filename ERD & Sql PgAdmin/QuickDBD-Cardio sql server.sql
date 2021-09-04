-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/QZTUGy
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [subjCardio] (
    [id] INTEGER  NOT NULL ,
    [smoke] BOOLEAN  NOT NULL ,
    [alchohol] BOOLEAN  NOT NULL ,
    [active] BOOLEAN  NOT NULL ,
    CONSTRAINT [PK_subjCardio] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [cardioObj] (
    [id] INTEGER  NOT NULL ,
    [age] INTEGER  NOT NULL ,
    [gender] VARCHAR  NOT NULL ,
    [height] FLOAT  NOT NULL ,
    [weight] FLOAT  NOT NULL ,
    [cardiovascular] BOOLEAN  NOT NULL ,
    [BMI] INTEGER  NOT NULL ,
    CONSTRAINT [PK_cardioObj] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [examinCardio] (
    [id] INTEGER  NOT NULL ,
    [ap_hi] INTEGER  NOT NULL ,
    [ap_lo] INTEGER  NOT NULL ,
    [cholestrol] VARCHAR  NOT NULL ,
    [gloucose] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_examinCardio] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

ALTER TABLE [subjCardio] WITH CHECK ADD CONSTRAINT [FK_subjCardio_id] FOREIGN KEY([id])
REFERENCES [cardioObj] ([id])

ALTER TABLE [subjCardio] CHECK CONSTRAINT [FK_subjCardio_id]

ALTER TABLE [examinCardio] WITH CHECK ADD CONSTRAINT [FK_examinCardio_id] FOREIGN KEY([id])
REFERENCES [cardioObj] ([id])

ALTER TABLE [examinCardio] CHECK CONSTRAINT [FK_examinCardio_id]

COMMIT TRANSACTION QUICKDBD