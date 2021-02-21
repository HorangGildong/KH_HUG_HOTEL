drop table reservation;

create table reservation (
reservationNo number not null,
memberId number not null,
guestRoomName varchar(200) not null,
guestRoomNo number not null,
checkIn number not null,
checkOut number not null,
lodgmentPeriod number not null,
totalPrice number not null,
adult number not null,
child number not null,
reservationDate Date not null,
memberName varchar2(200) not null,
memberGrade varchar2(200) not null,
primary key(reservationNo),
foreign key(memberId) references member(memberId),
foreign key(guestRoomName) references guestRoom(guestRoomName)
);

insert into reservation 
values(1,1,'���Ĵٵ�',1201,20210221,20210225,2,10000,3,3,sysdate,'���ֿ�','�ǹ�');
insert into reservation 
values(2,1,'���Ĵٵ�',1202,20210221,20210225,2,10000,3,3,sysdate,'���ֿ�','�ǹ�');
insert into reservation 
values(3,1,'���Ĵٵ�',1203,20210223,20210228,2,10000,3,3,sysdate,'���ֿ�','�ǹ�');
insert into reservation 
values(4,1,'���Ĵٵ�',1301,20210223,20210228,2,10000,3,3,sysdate,'���ֿ�','�ǹ�');
insert into reservation 
values(5,1,'���Ĵٵ�',1302,20210223,20210228,2,10000,3,3,sysdate,'���ֿ�','�ǹ�');
insert into reservation 
values(6,1,'���Ĵٵ�',1303,20210230,20210303,2,10000,3,3,sysdate,'���ֿ�','�ǹ�');
insert into reservation 
values(7,1,'���Ĵٵ�',1304,20210203,20210229,2,10000,3,3,sysdate,'���ֿ�','�ǹ�');
insert into reservation 
values(8,1,'���Ĵٵ�',1305,20210203,20210310,2,10000,3,3,sysdate,'���ֿ�','�ǹ�');


commit;


select * 
from reservation;

select *
from reservation
where   (guestRoomName = '���Ĵٵ�')
AND     (checkIn >= 20210226)
AND      (checkIn < 20210229)
OR     (guestRoomName = '���Ĵٵ�')
AND     (checkOut > 20210226)
AND      (checkOut < 20210229)
OR     (guestRoomName = '���Ĵٵ�')
AND     (checkIn <= 20210226)
AND     (checkOut >= 2021022);

