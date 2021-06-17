create table coffee(
c_no number(3) primary key,
c_title varchar2(30 char) not null,
c_price varchar2(30 char) not null,
c_img varchar2(100 char) not null,
c_explain varchar2(100 char) not null

);

create sequence coffee_seq;

insert into coffee values (coffee_seq.nextval, '커피 이름1', '5000원', '커피 이미지1', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름2', '5000원', '커피 이미지2', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름3', '5000원', '커피 이미지3', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름4', '5000원', '커피 이미지4', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름5', '5000원', '커피 이미지5', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름6', '5000원', '커피 이미지6', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름7', '5000원', '커피 이미지7', '커피 설명');
insert into coffee values (coffee_seq.nextval, '커피 이름8', '5000원', '커피 이미지8', '커피 설명');

delete coffee where c_no = 1;

select*from coffee;

select c_title, c_price, c_img, c_explain
from coffee
where c_price = (
select max(c_price)
from coffee
);

