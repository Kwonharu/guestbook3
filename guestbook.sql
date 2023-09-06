
create table guestbook(
    no          NUMBER,
    name        varchar2(80),
    password    varchar2(20),
    content     varchar2(2000),
    reg_date    date,
    PRIMARY key(no)
);

alter table guestbook
MODIFY password null;

create SEQUENCE seq_guestbook_id
INCREMENT by 1
start with 1
nocache;

--DROP SEQUENCE seq_guestbook_id;

insert into guestbook
values(seq_guestbook_id.nextVal, '수아', 'foxpink', '수아앗!', '2017-03-14');

insert into guestbook
values(seq_guestbook_id.nextVal, '미미르', 'dragonskyblue', '허이고~', '2017-02-22');

insert into guestbook
values(seq_guestbook_id.nextVal, '아린', 'serpentblack', '세은아...', '2017-05-01');

insert into guestbook
values(seq_guestbook_id.nextVal, '유화', 'foxlightblue', '언니야~', '2019-09-25');

insert into guestbook
values(seq_guestbook_id.nextVal, '연화', 'foxtail', '언니에요~', '2017-04-29');

insert into guestbook
values(seq_guestbook_id.nextVal, '선배', 'crow', '까미라고 하지마!', SYSDATE);



delete from guestbook
where password is null;


select *
from guestbook;


select *
from ALL_CONSTRAINTS
WHERE TABLE_NAME = 'GUESTBOOK';


commit;




