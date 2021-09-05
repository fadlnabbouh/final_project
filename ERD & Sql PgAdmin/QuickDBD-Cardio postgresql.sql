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

ALTER TABLE "subjCardio" ADD CONSTRAINT "fk_subjCardio_id" FOREIGN KEY("id")
REFERENCES "cardioObj" ("id");

ALTER TABLE "examinCardio" ADD CONSTRAINT "fk_examinCardio_id" FOREIGN KEY("id")
REFERENCES "cardioObj" ("id");

