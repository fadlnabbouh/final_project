CREATE TABLE cardioData (
    "id" INTEGER   NOT NULL,
    "age" INTEGER   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "height" FLOAT   NOT NULL,
    "weight" FLOAT   NOT NULL,
    "cardiovascular" BOOLEAN   NOT NULL,
    "BMI" INTEGER NOT NULL,
    "ap_hi" INTEGER   NOT NULL,
    "ap_lo" INTEGER   NOT NULL,
    "cholestrol" VARCHAR   NOT NULL,
    "gloucose" VARCHAR   NOT NULL,
    "smoke" BOOLEAN   NOT NULL,
    "alchohol" BOOLEAN   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_cardioData" PRIMARY KEY (
        "id"
     )
);

