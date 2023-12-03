-- Table: gph.Patient

-- DROP TABLE IF EXISTS gph."Patient";

CREATE TABLE IF NOT EXISTS gph."Patient"
(
    "PATIDNO" bigint NOT NULL,
    "PATNAME" character(50) COLLATE pg_catalog."default",
    "DOB" date,
    CONSTRAINT "Patient_pkey" PRIMARY KEY ("PATIDNO")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."Patient"
    OWNER to postgres;