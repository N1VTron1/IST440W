-- Table: gph.HIPAAAudit

-- DROP TABLE IF EXISTS gph."HIPAAAudit";

CREATE TABLE IF NOT EXISTS gph."HIPAAAudit"
(
    "PHYSNO" bigint NOT NULL,
    "PATIDNO" bigint,
    "DATE" date,
    CONSTRAINT "HIPAAAudit_pkey" PRIMARY KEY ("PHYSNO")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."HIPAAAudit"
    OWNER to postgres;