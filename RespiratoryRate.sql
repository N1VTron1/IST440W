-- Table: gph.RespiratoryRate

-- DROP TABLE IF EXISTS gph."RespiratoryRate";

CREATE TABLE IF NOT EXISTS gph."RespiratoryRate"
(
    "RESP3L" bigint NOT NULL,
    "RESP2L" bigint,
    "RESP1L" bigint,
    "RESP0" bigint,
    "RESP1H" bigint,
    "RESP2H" bigint,
    "RESP3H" bigint,
    CONSTRAINT "RespiratoryRate_pkey" PRIMARY KEY ("RESP3L")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."RespiratoryRate"
    OWNER to postgres;