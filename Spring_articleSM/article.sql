/*
Navicat PGSQL Data Transfer

Source Server         : postgresSQL
Source Server Version : 90303
Source Host           : localhost:5432
Source Database       : article
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90303
File Encoding         : 65001

Date: 2015-11-11 09:05:57
*/


-- ----------------------------
-- Sequence structure for tbl_article_art_id_seq
-- ----------------------------
DROP SEQUENCE "public"."tbl_article_art_id_seq";
CREATE SEQUENCE "public"."tbl_article_art_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_category_cat_id_seq
-- ----------------------------
DROP SEQUENCE "public"."tbl_category_cat_id_seq";
CREATE SEQUENCE "public"."tbl_category_cat_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_user_u_id_seq
-- ----------------------------
DROP SEQUENCE "public"."tbl_user_u_id_seq";
CREATE SEQUENCE "public"."tbl_user_u_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for tbl_article
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_article";
CREATE TABLE "public"."tbl_article" (
"art_id" int4 DEFAULT nextval('tbl_article_art_id_seq'::regclass) NOT NULL,
"title" varchar(255) COLLATE "default",
"description" varchar(255) COLLATE "default",
"public_date" varchar(255) COLLATE "default",
"image" varchar(255) COLLATE "default",
"u_id" int4,
"cat_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbl_article
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_category";
CREATE TABLE "public"."tbl_category" (
"cat_id" int4 DEFAULT nextval('tbl_category_cat_id_seq'::regclass) NOT NULL,
"cat_name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_user";
CREATE TABLE "public"."tbl_user" (
"u_id" int4 DEFAULT nextval('tbl_user_u_id_seq'::regclass) NOT NULL,
"u_user" varchar(255) COLLATE "default",
"u_password" varchar(255) COLLATE "default",
"u_type" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."tbl_article_art_id_seq" OWNED BY "tbl_article"."art_id";
ALTER SEQUENCE "public"."tbl_category_cat_id_seq" OWNED BY "tbl_category"."cat_id";
ALTER SEQUENCE "public"."tbl_user_u_id_seq" OWNED BY "tbl_user"."u_id";

-- ----------------------------
-- Primary Key structure for table tbl_article
-- ----------------------------
ALTER TABLE "public"."tbl_article" ADD PRIMARY KEY ("art_id");

-- ----------------------------
-- Primary Key structure for table tbl_category
-- ----------------------------
ALTER TABLE "public"."tbl_category" ADD PRIMARY KEY ("cat_id");

-- ----------------------------
-- Primary Key structure for table tbl_user
-- ----------------------------
ALTER TABLE "public"."tbl_user" ADD PRIMARY KEY ("u_id");

-- ----------------------------
-- Foreign Key structure for table "public"."tbl_article"
-- ----------------------------
ALTER TABLE "public"."tbl_article" ADD FOREIGN KEY ("cat_id") REFERENCES "public"."tbl_category" ("cat_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tbl_article" ADD FOREIGN KEY ("u_id") REFERENCES "public"."tbl_user" ("u_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
