-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/QZTUGy
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "subjCardio" (
    "id" INTEGER   NOT NULL,
    "smoke" BOOLEAN   NOT NULL,
    "alchohol" BOOLEAN   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_subjCardio" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "cardioObj" (
    "id" INTEGER   NOT NULL,
    "age" INTEGER   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "height" FLOAT   NOT NULL,
    "weight" FLOAT   NOT NULL,
    "cardiovascular" BOOLEAN   NOT NULL,
    "BMI" INTEGER   NOT NULL,
    CONSTRAINT "pk_cardioObj" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "examinCardio" (
    "id" INTEGER   NOT NULL,
    "ap_hi" INTEGER   NOT NULL,
    "ap_lo" INTEGER   NOT NULL,
    "cholestrol" VARCHAR   NOT NULL,
    "gloucose" VARCHAR   NOT NULL,
    CONSTRAINT "pk_examinCardio" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "cardioUsa" (
    "id" INTEGER   NOT NULL,
    "YearStart" INTEGER   NOT NULL,
    "YearEnd" INTEGER   NOT NULL,
    "LocationDesc" VARCHAR   NOT NULL,
    "DataSource" VARCHAR   NOT NULL,
    "Topic" VARCHAR   NOT NULL,
    "DataValueType" VARCHAR   NOT NULL,
    "DataValue" FLOAT   NOT NULL,
    "LowConfidenceLimit" FLOAT   NOT NULL,
    "HighConfidenceLimit" FLOAT   NOT NULL,
    "StratificationCategory1" VARCHAR   NOT NULL,
    "Stratification1" VARCHAR   NOT NULL,
    "LocationID" INTEGER   NOT NULL,
    "TopicID" VARCHAR   NOT NULL,
    "DataValueTypeID" VARCHAR   NOT NULL,
    "StratificationCategoryID1" VARCHAR   NOT NULL,
    "StratificationID1" VARCHAR   NOT NULL,
    CONSTRAINT "pk_cardioUsa" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "subjCardio" ADD CONSTRAINT "fk_subjCardio_id" FOREIGN KEY("id")
REFERENCES "examinCardio" ("id");

ALTER TABLE "cardioObj" ADD CONSTRAINT "fk_cardioObj_id" FOREIGN KEY("id")
REFERENCES "cardioUsa" ("id");

ALTER TABLE "examinCardio" ADD CONSTRAINT "fk_examinCardio_id" FOREIGN KEY("id")
REFERENCES "cardioObj" ("id");

ALTER TABLE "cardioUsa" ADD CONSTRAINT "fk_cardioUsa_id" FOREIGN KEY("id")
REFERENCES "subjCardio" ("id");

