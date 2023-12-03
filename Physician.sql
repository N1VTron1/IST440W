-- Table: gph.Physician

-- DROP TABLE IF EXISTS gph."Physician";

CREATE TABLE IF NOT EXISTS gph."Physician"
(
    "EMPNO" bigint NOT NULL,
    "PHYSNO" bigint NOT NULL,
    CONSTRAINT "Physician_pkey" PRIMARY KEY ("EMPNO"),
    CONSTRAINT "physician_PHYSNO_fkey" FOREIGN KEY ("PHYSNO")
        REFERENCES gph."PhysicianContactInfo" ("PHYSNO") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."Physician"
    OWNER to postgres;