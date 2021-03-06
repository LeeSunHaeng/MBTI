-- 테이블 생성
CREATE TABLE COMMENTMBTI(
        COMMENTSEQ NUMBER(8) PRIMARY KEY,
        ALIAS VARCHAR2(50) NOT NULL, 
        BOARDSEQ NUMBER(8) NOT NULL,
        REF NUMBER(8) NOT NULL,
        STEP NUMBER(8) NOT NULL,
        DEPTH NUMBER(8) NOT NULL,
        CONTENT VARCHAR2(4000) NOT NULL,
        WDATE DATE NOT NULL,
        DEL NUMBER(1) NOT NULL
);

-- 외래키 제약조건 추가 (Alias, Boardseq)
ALTER TABLE COMMENTMBTI ADD CONSTRAINT FK_COMMENT_ALIAS
      FOREIGN KEY (ALIAS)
      REFERENCES MEMBERMBTI(ALIAS)
      ON DELETE NOT NULL;

ALTER TABLE COMMENTMBTI ADD CONSTRAINT FK_COMMENT_BOARDSEQ
      FOREIGN KEY (BOARDSEQ)
      REFERENCES BOARDALL(BOARDSEQ)
      ON DELETE NOT NULL;

-- 시퀸스 추가
CREATE SEQUENCE SEQ_COMMENT
START WITH 1 INCREMENT BY 1;

-- 댓글 추가
INSERT INTO COMMENTMBTI( COMMENTSEQ,ALIAS,REF,STEP,DEPTH,BOARDSEQ,CONTENT,WDATE,DEL)
VALUES(SEQ_COMMENT.NEXTVAL, '손님', 0, 0, 0, 5, '안녕하세요', '22/01/12', 0);

-- 커밋    
commit;

-- 전체 댓글 출력
SELECT *
FROM COMMENTMBTI;

-- 한 게시판 글에 대한 댓글 개수 출력
SELECT *
FROM COMMENTMBTI;
WHERE BOARDSEQ=23;
