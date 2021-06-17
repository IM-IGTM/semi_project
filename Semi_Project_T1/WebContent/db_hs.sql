create table login_test(
	l_id varchar2 (20 char) primary key,
	l_pw varchar2 (20 char) not null,
	l_name varchar2 (20 char) not null
);

insert into LOGIN_TEST values ('hs', 'hs', 'yhs');

select * from LOGIN_TEST; 

select * from login_test where l_id = 'hs';


create table regMember(
   m_regID varchar2(20 char) primary key,
   m_regPW varchar2(20 char) not null,
   m_regPW2 varchar2(20 char) not null,
   m_regName varchar2(20 char) not null,
   m_regAddr varchar2(40 char) not null,
   m_regPhoneNumer number(20) not null,
   m_regEmail varchar2(20 char) not null
);

create sequence regMember_seq;


insert into regMember values ('¤·¤·', 'gg', 'gg','gg','gg',20,'gg');


select * from regMember;
