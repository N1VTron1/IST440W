-- Table: gph.Admission

-- DROP TABLE IF EXISTS gph."Admission";

CREATE TABLE IF NOT EXISTS gph."Admission"
(
    "MEDRECNO" bigint NOT NULL,
    "PATIDNO" bigint,
    "NURSENO" bigint,
    "ADMITDATE" date,
    "LOCATION" character(30) COLLATE pg_catalog."default",
    CONSTRAINT "Admission_pkey" PRIMARY KEY ("MEDRECNO"),
    CONSTRAINT "Admission_NURSENO_fkey" FOREIGN KEY ("NURSENO")
        REFERENCES gph."AdmittingNurseContactInfo" ("NURSENO") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    CONSTRAINT "Admission_PATIDNO_fkey" FOREIGN KEY ("PATIDNO")
        REFERENCES gph."Patient" ("PATIDNO") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."Admission"
    OWNER to postgres;