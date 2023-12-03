-- Table: gph.AVPU

-- DROP TABLE IF EXISTS gph."AVPU";

CREATE TABLE IF NOT EXISTS gph."AVPU"
(
    "AVPU0" character varying COLLATE pg_catalog."default" NOT NULL,
    "AVPU1H" character varying COLLATE pg_catalog."default",
    "AVPU2H" character varying COLLATE pg_catalog."default",
    "AVPU3H" character varying COLLATE pg_catalog."default",
    CONSTRAINT "AVPU_pkey" PRIMARY KEY ("AVPU0")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."AVPU"
    OWNER to postgres;