--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-19-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BUY
--------------------------------------------------------

  CREATE TABLE "MYSTUDY"."BUY" 
   (	"B_NO" VARCHAR2(10 BYTE), 
	"M_ID" VARCHAR2(10 BYTE), 
	"B_QTY" NUMBER(10,0), 
	"B_RECEIVE" VARCHAR2(50 BYTE), 
	"B_PRICE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BUYPRODUCT
--------------------------------------------------------

  CREATE TABLE "MYSTUDY"."BUYPRODUCT" 
   (	"B_NO" NVARCHAR2(10), 
	"B_QTY" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "MYSTUDY"."CART" 
   (	"M_ID" VARCHAR2(10 BYTE), 
	"CT_QTY" NUMBER(10,0), 
	"CT_PRICE" NUMBER(8,0)
   ) ;
--------------------------------------------------------
--  DDL for Table GOODS
--------------------------------------------------------

  CREATE TABLE "MYSTUDY"."GOODS" 
   (	"G_NO" VARCHAR2(20 BYTE), 
	"G_NAME" VARCHAR2(100 BYTE), 
	"G_PUB" VARCHAR2(100 BYTE), 
	"G_PRICE" NUMBER(8,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MYSTUDY"."MEMBER" 
   (	"M_ID" VARCHAR2(10 BYTE), 
	"M_PW" VARCHAR2(20 BYTE), 
	"M_NAME" VARCHAR2(10 BYTE), 
	"M_JOOMIN" VARCHAR2(10 BYTE), 
	"M_ADDRESS" VARCHAR2(40 BYTE), 
	"M_PHONE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for View V_MEMBER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "MYSTUDY"."V_MEMBER" ("ID", "NAME", "PASSWORD", "PHONE", "ADDRESS") AS 
  SELECT "ID","NAME","PASSWORD","PHONE","ADDRESS" FROM MEMBER
;
REM INSERTING into MYSTUDY.BUY
SET DEFINE OFF;
REM INSERTING into MYSTUDY.BUYPRODUCT
SET DEFINE OFF;
REM INSERTING into MYSTUDY.CART
SET DEFINE OFF;
REM INSERTING into MYSTUDY.GOODS
SET DEFINE OFF;
Insert into MYSTUDY.GOODS (G_NO,G_NAME,G_PUB,G_PRICE) values ('2201','자바스크립트 웹 표준의 정석','이지스퍼블리싱',30000);
Insert into MYSTUDY.GOODS (G_NO,G_NAME,G_PUB,G_PRICE) values ('2202','조코딩의 프로그래밍 입문','이지스퍼블리싱',18000);
Insert into MYSTUDY.GOODS (G_NO,G_NAME,G_PUB,G_PRICE) values ('2203','쉽게 배우는 파이썬 데이터 분석','ITBOOK',23000);
Insert into MYSTUDY.GOODS (G_NO,G_NAME,G_PUB,G_PRICE) values ('2204','알고리즘 코딩 테스트','ITBOOK',32000);
Insert into MYSTUDY.GOODS (G_NO,G_NAME,G_PUB,G_PRICE) values ('2205','비전공자를 위한 이해할 수 있는 IT지식','TWIG',17000);
REM INSERTING into MYSTUDY.MEMBER
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C007094
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYSTUDY"."SYS_C007094" ON "MYSTUDY"."BUY" ("B_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007084
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYSTUDY"."SYS_C007084" ON "MYSTUDY"."GOODS" ("G_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007088
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYSTUDY"."SYS_C007088" ON "MYSTUDY"."MEMBER" ("M_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table BUY
--------------------------------------------------------

  ALTER TABLE "MYSTUDY"."BUY" ADD PRIMARY KEY ("B_NO") ENABLE;
  ALTER TABLE "MYSTUDY"."BUY" MODIFY ("B_PRICE" NOT NULL ENABLE);
  ALTER TABLE "MYSTUDY"."BUY" MODIFY ("B_RECEIVE" NOT NULL ENABLE);
  ALTER TABLE "MYSTUDY"."BUY" MODIFY ("B_QTY" NOT NULL ENABLE);
  ALTER TABLE "MYSTUDY"."BUY" MODIFY ("M_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BUYPRODUCT
--------------------------------------------------------

  ALTER TABLE "MYSTUDY"."BUYPRODUCT" MODIFY ("B_QTY" NOT NULL ENABLE);
  ALTER TABLE "MYSTUDY"."BUYPRODUCT" MODIFY ("B_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOODS
--------------------------------------------------------

  ALTER TABLE "MYSTUDY"."GOODS" ADD PRIMARY KEY ("G_NO") ENABLE;
  ALTER TABLE "MYSTUDY"."GOODS" MODIFY ("G_PRICE" NOT NULL ENABLE);
  ALTER TABLE "MYSTUDY"."GOODS" MODIFY ("G_PUB" NOT NULL ENABLE);
  ALTER TABLE "MYSTUDY"."GOODS" MODIFY ("G_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MYSTUDY"."MEMBER" ADD PRIMARY KEY ("M_ID") ENABLE;
  ALTER TABLE "MYSTUDY"."MEMBER" MODIFY ("M_JOOMIN" NOT NULL ENABLE);
  ALTER TABLE "MYSTUDY"."MEMBER" MODIFY ("M_NAME" NOT NULL ENABLE);
  ALTER TABLE "MYSTUDY"."MEMBER" MODIFY ("M_PW" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BUY
--------------------------------------------------------

  ALTER TABLE "MYSTUDY"."BUY" ADD FOREIGN KEY ("M_ID")
	  REFERENCES "MYSTUDY"."MEMBER" ("M_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "MYSTUDY"."CART" ADD FOREIGN KEY ("M_ID")
	  REFERENCES "MYSTUDY"."MEMBER" ("M_ID") ENABLE;
