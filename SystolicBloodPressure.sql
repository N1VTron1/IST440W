-- Table: gph.SystolicBloodPressure

-- DROP TABLE IF EXISTS gph."SystolicBloodPressure";

CREATE TABLE IF NOT EXISTS gph."SystolicBloodPressure"
(
    "SBP3L" bigint NOT NULL,
    "SBP2L" bigint,
    "SBP1L" bigint,
    "SBP0" bigint,
    "SBP1H" bigint,
    "SBP2H" bigint,
    "SBP3H" bigint,
    CONSTRAINT "SystolicBloodPressure_pkey" PRIMARY KEY ("SBP3L")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."SystolicBloodPressure"
    OWNER to postgres;