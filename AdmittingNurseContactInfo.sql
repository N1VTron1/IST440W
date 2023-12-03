-- Table: gph.AdmittingNurseContactInfo

-- DROP TABLE IF EXISTS gph."AdmittingNurseContactInfo";

CREATE TABLE IF NOT EXISTS gph."AdmittingNurseContactInfo"
(
    "NURSENO" bigint NOT NULL,
    "NURSENAME" character(50) COLLATE pg_catalog."default",
    "NURSECELL" bigint,
    "NURSEEMAIL" character(30) COLLATE pg_catalog."default",
    CONSTRAINT "AdmittingNurseContactInfo_pkey" PRIMARY KEY ("NURSENO"),
    CONSTRAINT "AdmittingNurseContactInfo_NURSENO_fkey" FOREIGN KEY ("NURSENO")
        REFERENCES gph."AdmittingNurseContactInfo" ("NURSENO") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."AdmittingNurseContactInfo"
    OWNER to postgres;