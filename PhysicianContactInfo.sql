-- Table: gph.PhysicianContactInfo

-- DROP TABLE IF EXISTS gph."PhysicianContactInfo";

CREATE TABLE IF NOT EXISTS gph."PhysicianContactInfo"
(
    "PHYSNO" bigint NOT NULL,
    "PHYSNAME" character(50) COLLATE pg_catalog."default",
    "PHYSCELL" bigint,
    "PHYSEMAIL" character(50) COLLATE pg_catalog."default",
    CONSTRAINT "Physician Contact Info_pkey" PRIMARY KEY ("PHYSNO")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gph."PhysicianContactInfo"
    OWNER to postgres;