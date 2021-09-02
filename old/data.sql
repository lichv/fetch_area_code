CREATE TABLE "public"."zone" (
  "code" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(32) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "alias" varchar(32) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "remark" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "flag" bool NOT NULL DEFAULT false,
  "state" bool NOT NULL DEFAULT false,
  CONSTRAINT "zone_pkey" PRIMARY KEY ("code")
)
;

ALTER TABLE "public"."zone" 
  OWNER TO "postgres";

COMMENT ON COLUMN "public"."zone"."code" IS '编码';

COMMENT ON COLUMN "public"."zone"."name" IS '类型';

COMMENT ON COLUMN "public"."zone"."alias" IS '简称';

COMMENT ON COLUMN "public"."zone"."remark" IS '备注';

COMMENT ON COLUMN "public"."zone"."flag" IS '标记';

COMMENT ON COLUMN "public"."zone"."state" IS '状态';