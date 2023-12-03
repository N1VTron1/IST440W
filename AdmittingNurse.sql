-- Table: gph.AdmittingNurse

-- DROP TABLE IF EXISTS gph."AdmittingNurse";

CREATE TABLE IF NOT EXISTS gph."AdmittingNurse"
(
    "EMPNO" bigint NOT NULL,
    "NURSENO" bigint,
    CONSTRAINT "AdmittingNurse_pkey" PRIMARY KEY ("EMPNO")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."AdmittingNurse"
    OWNER to postgres;