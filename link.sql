/*
 Navicat Premium Data Transfer

 Source Server         : local_postgresql
 Source Server Type    : PostgreSQL
 Source Server Version : 120005
 Source Host           : localhost:5432
 Source Catalog        : new
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120005
 File Encoding         : 65001

 Date: 15/04/2021 11:02:41
*/

CREATE SEQUENCE "public"."link_id_seq" 
INCREMENT 1
MINVALUE  10000
MAXVALUE 9999999
START 10000
CACHE 10000;

SELECT setval('"public"."link_id_seq"', 160001, true);

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS "public"."link";
CREATE TABLE "public"."link" (
  "id" int4 NOT NULL DEFAULT nextval('link_id_seq'::regclass),
  "name" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "label" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "value" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "flag" bool NOT NULL DEFAULT false,
  "state" bool NOT NULL DEFAULT false
)
;
COMMENT ON COLUMN "public"."link"."id" IS '编号';
COMMENT ON COLUMN "public"."link"."name" IS '名称';
COMMENT ON COLUMN "public"."link"."label" IS '标签';
COMMENT ON COLUMN "public"."link"."value" IS '值';
COMMENT ON COLUMN "public"."link"."flag" IS '标记';
COMMENT ON COLUMN "public"."link"."state" IS '状态';

-- ----------------------------
-- Primary Key structure for table link
-- ----------------------------
ALTER TABLE "public"."link" ADD CONSTRAINT "link_pkey" PRIMARY KEY ("id");
