CREATE TABLE member (
    id VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50),
    cash DECIMAL(10,2)
);

ALTER table member
ADD CONSTRAINT manager CHECK (cash>=0);


CREATE TABLE admin (
    id VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO admin (id, password) VALUES ('admin', '12345');


create table boards (
    bno             int             primary key auto_increment,
    btitle          varchar(100)    not null,
    bcontent        longtext        not null,
    bwriter         varchar(50)     not null,
    bdate           datetime        default now()
    );

CREATE TABLE book (
    book_id DOUBLE PRIMARY KEY auto_increment,
    book_name VARCHAR(50),
    author varchar(50),
    price DECIMAL(10,2),
    grade varchar(20),
    quantity DOUBLE
);

drop table if exists monthbook;

create table monthbook(
    book_id double,
	month_book_name varchar(50),
    month_author varchar(50),
	month_price DECIMAL(10,2),
    month_grade varchar(20)
);

ALTER TABLE monthbook
	ADD CONSTRAINT mb_name_fk FOREIGN KEY (book_id)
	REFERENCES book (book_id);

ALTER TABLE boards
	ADD CONSTRAINT bd_bwriter_fk FOREIGN KEY (bwriter)
	REFERENCES member (id);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('해법 초등국어','천재교육 편집부',15000,'초등',10);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('해법 초등수학','천재교육 편집부',15000,'초등',15);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('해법 초등영어','천재교육 편집부',15000,'초등',50);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('해법 초등과학','천재교육 편집부',15000,'초등',0);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('해법 초등사회','천재교육 편집부',15000,'초등',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('똑똑 초등영단어','천재교육 편집부',19000,'초등',10);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('똑똑 초등독해','천재교육 편집부',12000,'초등',50);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('똑똑 초등한자','천재교육 편집부',16000,'초등',70);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('똑똑 초등내신','천재교육 편집부',17000,'초등',30);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('일등전략 중학국어','천재교육 편집부',16000,'중등',30);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('일등전략 중등수학','천재교육 편집부',16000,'중등',20);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('일등전략 중등영어','천재교육 편집부',16000,'중등',10);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('일등전략 중등과학','천재교육 편집부',16000,'중등',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('일등전략 중등사회','천재교육 편집부',16000,'중등',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('바로완성 중등영단어','천재교육 편집부',18000,'중등',25);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('바로완성 중등독해','천재교육 편집부',20000,'중등',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('바로완성 중등한자','천재교육 편집부',20000,'중등',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('바로완성 중등내신','천재교육 편집부',20000,'중등',50);


INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등문학','천재교육 편집부',17000,'고등',10);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등수학','천재교육 편집부',17000,'고등',20);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등영어','천재교육 편집부',17000,'고등',0);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등과학','천재교육 편집부',17000,'고등',30);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등사회','천재교육 편집부',17000,'고등',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등영단어','천재교육 편집부',17000,'고등',1);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등독해','천재교육 편집부',15000,'고등',50);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등한자','천재교육 편집부',15000,'고등',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('셀파 고등내신','천재교육 편집부',15000,'고등',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('수능전략 국어영역','천재교육 편집부',18000,'고등',11);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('수능전략 수학영역','천재교육 편집부',18000,'고등',10);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('수능전략 영어영역','천재교육 편집부',18000,'고등',13);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('수능전략 과학탐구영역','천재교육 편집부',18000,'고등',15);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('수능전략 사회탐구영역','천재교육 편집부',18000,'고등',15);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('초등 국어','천재교과서 편집부',10000,'교과서',15);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('초등 영어','천재교과서 편집부',10000,'교과서',50);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('초등 수학','천재교과서 편집부',10000,'교과서',30);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('초등 사회','천재교과서 편집부',10000,'교과서',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('초등 과학','천재교과서 편집부',10000,'교과서',15);


INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('중등 국어','천재교과서 편집부',10000,'교과서',15);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('중등 영어','천재교과서 편집부',10000,'교과서',50);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('중등 수학','천재교과서 편집부',10000,'교과서',30);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('중등 사회','천재교과서 편집부',10000,'교과서',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('중등 과학','천재교과서 편집부',10000,'교과서',15);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('고등 국어','천재교과서 편집부',10000,'교과서',15);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('고등 영어','천재교과서 편집부',10000,'교과서',50);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('고등 수학','천재교과서 편집부',10000,'교과서',30);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('고등 사회','천재교과서 편집부',10000,'교과서',100);

INSERT INTO book(book_name, author, price, grade, quantity)
VALUES('고등 과학','천재교과서 편집부',10000,'교과서',15);

INSERT INTO monthbook(month_book_name, month_author, month_price, month_grade)
VALUES('똑똑 초등내신','천재교육 편집부',17000,'초등');

INSERT INTO monthbook(month_book_name, month_author, month_price, month_grade)
VALUES('똑똑 초등영단어','천재교육 편집부',19000,'초등');

INSERT INTO monthbook(month_book_name, month_author, month_price, month_grade)
VALUES('바로완성 중등영단어','천재교육 편집부',18000,'중등');

INSERT INTO monthbook(month_book_name, month_author, month_price, month_grade)
VALUES('바로완성 중등내신','천재교육 편집부',20000,'중등');

INSERT INTO monthbook(month_book_name, month_author, month_price, month_grade)
VALUES('셀파 고등내신','천재교육 편집부',15000,'고등');

INSERT INTO monthbook(month_book_name, month_author, month_price, month_grade)
VALUES('수능전략 영어영역','천재교육 편집부',18000,'고등');
