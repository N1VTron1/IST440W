-- Table: gph.HeartRate

-- DROP TABLE IF EXISTS gph."HeartRate";

CREATE TABLE IF NOT EXISTS gph."HeartRate"
(
    "HR3L" bigint NOT NULL,
    "HR2L" bigint,
    "HR1L" bigint,
    "HR0" bigint,
    "HR1H" bigint,
    "HR2H" bigint,
    "HR3H" bigint,
    CONSTRAINT "HeartRate_pkey" PRIMARY KEY ("HR3L")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."HeartRate"
    OWNER to postgres;