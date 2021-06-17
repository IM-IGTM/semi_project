create table coffee(

c_no number(3) primary key,
c_title varchar2(30 char) not null,
c_price number (10) not null,
c_origin varchar2(30 char) not null,
c_img varchar2(100 char) not null,
c_explain varchar2(100 char) not null

);

create sequence coffee_seq;

insert into coffee values (coffee_seq.nextval, 'Ŀ�� �̸�1', '5000', '������', 'Ŀ�� �̹���1', 'Ŀ�� ����');
insert into coffee values (coffee_seq.nextval, 'Ŀ�� �̸�2', '1000', '��Ż����', 'Ŀ�� �̹���2', 'Ŀ�� ����');
insert into coffee values (coffee_seq.nextval, 'Ŀ�� �̸�3', '10000', '���׸���', 'Ŀ�� �̹���3', 'Ŀ�� ����');

select*from coffee;