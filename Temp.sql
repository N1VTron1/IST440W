-- Table: gph.Temp

-- DROP TABLE IF EXISTS gph."Temp";

CREATE TABLE IF NOT EXISTS gph."Temp"
(
    "TEMP3L" numeric NOT NULL,
    "TEMP2L" numeric,
    "TEMP1L" numeric,
    "TEMP0" numeric,
    "TEMP1H" numeric,
    "TEMP2H" numeric,
    "TEMP3H" numeric,
    CONSTRAINT "Temp_pkey" PRIMARY KEY ("TEMP3L")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."Temp"
    OWNER to postgres;