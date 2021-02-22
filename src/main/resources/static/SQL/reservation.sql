drop table reservation;

create table reservation (
reservationNo varchar2(2000) not null,
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

-- 이거 꼭 해제 부탁드림
alter table reservation drop primary key;

commit;



