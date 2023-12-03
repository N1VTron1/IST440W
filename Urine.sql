-- Table: gph.Urine

-- DROP TABLE IF EXISTS gph."Urine";

CREATE TABLE IF NOT EXISTS gph."Urine"
(
    "URINE3L" integer NOT NULL,
    "URINE2L" integer,
    "URINE1L" integer,
    "URINE0" integer,
    "URINE1H" integer,
    "URINE2H" integer,
    "URINE3H" integer,
    CONSTRAINT "Urine_pkey" PRIMARY KEY ("URINE3L")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."Urine"
    OWNER to postgres;