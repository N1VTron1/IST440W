-- Table: gph.PatientVitals

-- DROP TABLE IF EXISTS gph."PatientVitals";

CREATE TABLE IF NOT EXISTS gph."PatientVitals"
(
    "VITIDNO" bigint NOT NULL,
    "PATIDNO" bigint,
    "SYSTOLICBP" bigint,
    "HEARTRATE" bigint,
    "RESPIRATORYRATE" bigint,
    "TEMPERATURE" bigint,
    "AVPU" character varying(30) COLLATE pg_catalog."default",
    "URINE" bigint,
    "CONDITIONALCONCERNS" character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT "PatientVitals_pkey" PRIMARY KEY ("VITIDNO"),
    CONSTRAINT "PatientVitals_PATIDNO_fkey" FOREIGN KEY ("PATIDNO")
        REFERENCES gph."Patient" ("PATIDNO") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."PatientVitals"
    OWNER to postgres;