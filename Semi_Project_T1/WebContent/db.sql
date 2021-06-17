create table coffee(

c_no number(3) primary key,
c_title varchar2(30 char) not null,
c_price number (10) not null,
c_origin varchar2(30 char) not null,
c_img varchar2(100 char) not null,
c_explain varchar2(100 char) not null

);

create sequence coffee_seq;

insert into coffee values (coffee_seq.nextval, '커피 이름1', '5000', '스페인', '커피 이미지1', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름2', '1000', '이탈리아', '커피 이미지2', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름3', '10000', '과테말라', '커피 이미지3', '커피 설명');

select*from coffee;