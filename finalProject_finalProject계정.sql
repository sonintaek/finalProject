CREATE TABLE "MEMBER" (
	"MEM_ID"	VARCHAR2(50)		NOT NULL,
	"MEM_PWD"	VARCHAR2(100)		NOT NULL,
	"MEM_NAME"	VARCHAR2(30)		NOT NULL,
	"MEM_BIRTH"	VARCHAR2(6)		NOT NULL,
	"MEM_CREATE"	DATE			NOT NULL,
	"MEM_TEL"	VARCHAR2(20)		NOT NULL,
	"MEM_ADDR"	VARCHAR2(300)		NOT NULL,
	"MEM_EMAIL"	VARCHAR2(100)		NOT NULL,
	"MEM_STATUS"	VARCHAR2(1)		NOT NULL,
	"MEM_DELDATE"	DATE			NULL,
	"ADMIN"	NUMBER	DEFAULT 0		NOT NULL
);

COMMENT ON COLUMN "MEMBER"."MEM_ID" IS '회원ID';

COMMENT ON COLUMN "MEMBER"."MEM_PWD" IS '비밀번호';

COMMENT ON COLUMN "MEMBER"."MEM_NAME" IS '이름';

COMMENT ON COLUMN "MEMBER"."MEM_BIRTH" IS '생년월일, 민번 앞자리 6';

COMMENT ON COLUMN "MEMBER"."MEM_CREATE" IS '회원가입일,  SYSDATE';

COMMENT ON COLUMN "MEMBER"."MEM_TEL" IS '전화번호';

COMMENT ON COLUMN "MEMBER"."MEM_ADDR" IS '주소';

COMMENT ON COLUMN "MEMBER"."MEM_EMAIL" IS '이메일';

COMMENT ON COLUMN "MEMBER"."MEM_STATUS" IS '회원탈퇴유무(탈퇴시 N)';

COMMENT ON COLUMN "MEMBER"."MEM_DELDATE" IS '회원탈퇴가되면 당일의 날짜를 기입';

COMMENT ON COLUMN "MEMBER"."ADMIN" IS '관리자인지, 회원 : 0 관리자 :1';

CREATE TABLE "ITEM" (
	"ITEM_NO"	NUMBER			NOT NULL,
	"ITEM_NAME"	VARCHAR2(50)		NOT NULL,
	"ITEM_PRICE"	NUMBER			NOT NULL,
	"ITEM_CONTENT"	VARCHAR2(100)		NOT NULL,
	"ITEM_LOCAL"	VARCHAR2(60)		NOT NULL,
	"ITEM_SECTOR"	VARCHAR2(60)		NOT NULL,
	"ITEM_COUNT"	NUMBER			NULL,
	"ITEM_PAC"	NUMBER	DEFAULT 0	NOT NULL,
	"ITEM_LOGO"	VARCHAR2(100)		NULL
);

COMMENT ON COLUMN "ITEM"."ITEM_NO" IS '상품 고유번호';

COMMENT ON COLUMN "ITEM"."ITEM_NAME" IS '상품명';

COMMENT ON COLUMN "ITEM"."ITEM_PRICE" IS '상품가격';

COMMENT ON COLUMN "ITEM"."ITEM_CONTENT" IS '상품설명(이미지로 들어감)';

COMMENT ON COLUMN "ITEM"."ITEM_LOCAL" IS '상품지역';

COMMENT ON COLUMN "ITEM"."ITEM_COUNT" IS '재고량';

COMMENT ON COLUMN "ITEM"."ITEM_PAC" IS '패키지상품인지 아닌지를 확인';

COMMENT ON COLUMN "ITEM"."ITEM_LOGO" IS '상품로고사진';

CREATE TABLE "CART" (
	"CART_NO"	NUMBER		NOT NULL,
	"MEM_ID"	VARCHAR2(50)	NOT NULL,
	"ITEM_NO"	NUMBER		NOT NULL,
	"CART_COUNT"	NUMBER		NOT NULL,
	"CART_PRICE"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "CART"."CART_NO" IS '장바구니 고유번호';

COMMENT ON COLUMN "CART"."MEM_ID" IS '회원ID';

COMMENT ON COLUMN "CART"."ITEM_NO" IS '상품고유번호';

COMMENT ON COLUMN "CART"."CART_COUNT" IS '상품수량';

COMMENT ON COLUMN "CART"."CART_PRICE" IS '금액';

CREATE TABLE "ORDERS" (
	"ORDERS_NO"	NUMBER			NOT NULL,
	"MEM_ID"	VARCHAR2(50)		NOT NULL,
	"ORDERS_PRICE"	NUMBER			NOT NULL,
	"ORDERS_DATE"	DATE			NULL,
	"ORDERS_POSITION"  VARCHAR2(30)		NULL,
	"ORDERS_NAME"	VARCHAR2(30)		NOT NULL,
	"ORDERS_ADDR"	VARCHAR2(300)		NOT NULL,
	"ORDERS_TEL"	VARCHAR2(20)		NOT NULL,
	"ORDERS_REQ"	VARCHAR2(100)		NULL,
	"ORDERS_COUNT"	NUMBER			NOT NULL
);

COMMENT ON COLUMN "ORDERS"."ORDERS_NO" IS '주문 번호';

COMMENT ON COLUMN "ORDERS"."MEM_ID" IS '회원 ID';

COMMENT ON COLUMN "ORDERS"."ORDERS_PRICE" IS '총 결제금액';

COMMENT ON COLUMN "ORDERS"."ORDERS_DATE" IS '주문날짜';

COMMENT ON COLUMN "ORDERS"."ORDERS_POSITION" IS '상세보기페이지';

COMMENT ON COLUMN "ORDERS"."ORDERS_NAME" IS '받는분성함';

COMMENT ON COLUMN "ORDERS"."ORDERS_ADDR" IS '받는 주소 변경 가능 (default 주문자주소)';

COMMENT ON COLUMN "ORDERS"."ORDERS_TEL" IS '받는사람전화번호, 변경 가능( default 주문자전화번호)';

COMMENT ON COLUMN "ORDERS"."ORDERS_REQ" IS '배송요청사항';

COMMENT ON COLUMN "ORDERS"."ORDERS_COUNT" IS '주문상품개수';

CREATE TABLE "ORDER_DETAIL" (
	"DETAIL_NO"	NUMBER		NOT NULL,
	"ORDERS_NO"	NUMBER		NOT NULL,
	"ITEM_NO"	NUMBER		NULL,
	"DETAIL_PRICE"	NUMBER		NOT NULL,
	"DETAIL_COUNT"	NUMBER		NOT NULL,
	"ITEM_NAME"	VARCHAR2(100)	NOT NULL,
	"DETAIL_SITUATION" VARCHAR2(30)	NULL,
	"MEM_ID"	VARCHAR2(50)	NOT NULL,
	"MEM_NAME"	VARCHAR2(30)	NOT NULL
);

COMMENT ON COLUMN "ORDER_DETAIL"."DETAIL_NO" IS '주문상세 고유번호';

COMMENT ON COLUMN "ORDER_DETAIL"."ORDERS_NO" IS '주문번호';

COMMENT ON COLUMN "ORDER_DETAIL"."ITEM_NO" IS '상품 고유번호';

COMMENT ON COLUMN "ORDER_DETAIL"."DETAIL_PRICE" IS '가격';

COMMENT ON COLUMN "ORDER_DETAIL"."DETAIL_COUNT" IS '개수';

COMMENT ON COLUMN "ORDER_DETAIL"."DETAIL_SITUATION" IS '주문현황 default 배송준비중';


CREATE TABLE "BOARD" (
	"BOARD_NO"	NUMBER			NOT NULL,
	"BOARD_WRITER"	VARCHAR2(50)		NOT NULL,
	"BOARD_TAG"	VARCHAR2(15)		NOT NULL,
	"BOARD_TITLE"	VARCHAR2(50)		NOT NULL,
	"BOARD_CONTENT"	VARCHAR2(300)		NOT NULL,
	"BOARD_CREATE"	DATE			NOT NULL,
	"BOARD_COUNT"	NUMBER	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN "BOARD"."BOARD_NO" IS '게시글 번호';

COMMENT ON COLUMN "BOARD"."BOARD_WRITER" IS '회원ID';

COMMENT ON COLUMN "BOARD"."BOARD_TAG" IS '공지사항, 문의';

COMMENT ON COLUMN "BOARD"."BOARD_TITLE" IS '게시글 제목';

COMMENT ON COLUMN "BOARD"."BOARD_CONTENT" IS '게시글 내용';

COMMENT ON COLUMN "BOARD"."BOARD_CREATE" IS '게시글 작성일, SYSDATE';

COMMENT ON COLUMN "BOARD"."BOARD_COUNT" IS '게시글 카운트';

CREATE TABLE "FARM" (
	"FARM_NO"	NUMBER			NOT NULL,
	"FARM_NAME"	VARCHAR2(60)		NOT NULL,
	"FARM_ZONE"	VARCHAR2(100)		NOT NULL,
	"FARM_COUNT"	NUMBER			NOT NULL,
	"FARM_CONTENT"	VARCHAR2(3000)		NOT NULL,
	"FARM_ITEM"	VARCHAR2(1000)		NOT NULL
);

COMMENT ON COLUMN "FARM"."FARM_NO" IS '농장번호';

COMMENT ON COLUMN "FARM"."FARM_NAME" IS '농장이름';

COMMENT ON COLUMN "FARM"."FARM_ZONE" IS '농장의 위치';

COMMENT ON COLUMN "FARM"."FARM_COUNT" IS '대여 구역 수';

COMMENT ON COLUMN "FARM"."FARM_CONTENT" IS '농장 설명 내용';

COMMENT ON COLUMN "FARM"."FARM_ITEM" IS '재배 가능 작물';

CREATE TABLE "RESERVATION" (
	"REZ_NO"	NUMBER			NOT NULL,
	"MEM_ID"	VARCHAR2(50)		NOT NULL,
	"FARM_NO"	NUMBER			NOT NULL,
	"REZ_ZONE"	VARCHAR2(10)		NOT NULL,
	"REZ_STATUS"	NUMBER	DEFAULT 0	NOT NULL,
	"REZ_START"	NUMBER			NULL,
	"REZ_PRICE"	NUMBER			NULL,
	"REZ_ITEM"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "RESERVATION"."REZ_NO" IS '예약 번호';

COMMENT ON COLUMN "RESERVATION"."MEM_ID" IS '회원 ID';

COMMENT ON COLUMN "RESERVATION"."FARM_NO" IS '농장 번호';

COMMENT ON COLUMN "RESERVATION"."REZ_ZONE" IS '예약구역';

COMMENT ON COLUMN "RESERVATION"."REZ_STATUS" IS '0: 예약가능 1: 대기 2:에약 -- 관리자만 가능';

COMMENT ON COLUMN "RESERVATION"."REZ_START" IS '예약 시작일 1(3~5), 2(6~8),3(9~11)';

COMMENT ON COLUMN "RESERVATION"."REZ_PRICE" IS '총 금액';

COMMENT ON COLUMN "RESERVATION"."REZ_ITEM" IS '키울 작물';

CREATE TABLE "SECTOR" (
	"SECTOR_NO"	NUMBER			NOT NULL,
	"FARM_NO"	NUMBER			NOT NULL,
	"SECTOR_NAME"	VARCHAR2(60)		NOT NULL,
	"SECTOR_PRICE"	NUMBER			NULL,
	"SECTOR_ITEM"	VARCHAR2(10)		NULL,
	"SECTOR_SCHDULE" NUMBER			NULL,
	"SECTOR_STATUS"	NUMBER	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN "SECTOR"."SECTOR_NO" IS '섹터 번호';

COMMENT ON COLUMN "SECTOR"."FARM_NO" IS '농장번호';

COMMENT ON COLUMN "SECTOR"."SECTOR_NAME" IS '섹터명';

COMMENT ON COLUMN "SECTOR"."SECTOR_PRICE" IS '대여 금액';

COMMENT ON COLUMN "SECTOR"."SECTOR_ITEM" IS '키우고 있는 작물';

COMMENT ON COLUMN "SECTOR"."SECTOR_SCHDULE" IS '예약기간, 1(3~5), 2(6~8),3(9~11)';

COMMENT ON COLUMN "SECTOR"."SECTOR_STATUS" IS '0: 예약가능 1: 대기 2:에약';

CREATE TABLE "REPLY" (
	"REPLY_NO"	NUMBER			NOT NULL,
	"BOARD_NO"	NUMBER			NOT NULL,
	"REPLY_WRITER"	VARCHAR2(50)		NOT NULL,
	"REPLY_CONTENT"	VARCHAR2(100)		NOT NULL,
	"REPLY_CREATE"	DATE			NOT NULL
);

COMMENT ON COLUMN "REPLY"."REPLY_NO" IS '댓글번호';

COMMENT ON COLUMN "REPLY"."BOARD_NO" IS '게시글번호';

COMMENT ON COLUMN "REPLY"."REPLY_WRITER" IS '작성자';

COMMENT ON COLUMN "REPLY"."REPLY_CONTENT" IS '내용';

COMMENT ON COLUMN "REPLY"."REPLY_CREATE" IS '작성일, SYSDATE';

CREATE TABLE "REVIEW" (
	"REVIEW_NO"	 NUMBER			NOT NULL,
	"ITEM_NO"	 NUMBER			NOT NULL,
	"REVIEW_WRITER"	 VARCHAR2(50)		NOT NULL,
	"REVIEW_CONTENT" VARCHAR2(100)		NOT NULL,
	"REVIEW_CREATE"	 DATE			NOT NULL
);

COMMENT ON COLUMN "REVIEW"."REVIEW_NO" IS '상품리뷰 댓글번호';

COMMENT ON COLUMN "REVIEW"."ITEM_NO" IS '상품고유번호';

COMMENT ON COLUMN "REVIEW"."REVIEW_WRITER" IS '리뷰 작성자';

COMMENT ON COLUMN "REVIEW"."REVIEW_CONTENT" IS '리뷰내용';

COMMENT ON COLUMN "REVIEW"."REVIEW_CREATE" IS '리뷰 작성일 SYSDATE';

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MEM_ID"
);

ALTER TABLE "ITEM" ADD CONSTRAINT "PK_ITEM" PRIMARY KEY (
	"ITEM_NO"
);

ALTER TABLE "CART" ADD CONSTRAINT "PK_CART" PRIMARY KEY (
	"CART_NO"
);

ALTER TABLE "ORDERS" ADD CONSTRAINT "PK_ORDERS" PRIMARY KEY (
	"ORDERS_NO"
);

ALTER TABLE "ORDER_DETAIL" ADD CONSTRAINT "PK_ORDER_DETAIL" PRIMARY KEY (
	"DETAIL_NO"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"BOARD_NO"
);

ALTER TABLE "FARM" ADD CONSTRAINT "PK_FARM" PRIMARY KEY (
	"FARM_NO"
);

ALTER TABLE "RESERVATION" ADD CONSTRAINT "PK_RESERVATION" PRIMARY KEY (
	"REZ_NO"
);

ALTER TABLE "SECTOR" ADD CONSTRAINT "PK_SECTOR" PRIMARY KEY (
	"SECTOR_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "PK_REPLY" PRIMARY KEY (
	"REPLY_NO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY (
	"REVIEW_NO"
);


alter table MEMBER modify MEM_CREATE default SYSDATE;
alter table MEMBER modify MEM_STATUS default 'Y';

alter table BOARD modify BOARD_CREATE default SYSDATE;
alter table REPLY modify REPLY_CREATE default SYSDATE;
alter table REVIEW modify REVIEW_CREATE default SYSDATE;
alter table ORDERS modify ORDERS_DATE default SYSDATE;
alter table SECTOR modify SECTOR_STATUS default 0;

create sequence seq_orDetail;
create sequence seq_review;
create sequence seq_item;
create sequence seq_cart;
create sequence seq_reservation;
create sequence seq_farm;
create sequence seq_sector;
create sequence seq_board;
create sequence seq_orders;
create sequence seq_reply;