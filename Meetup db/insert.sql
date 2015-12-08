insert into Meetups (Id, Start, Location, Topic, Description) values (1, '2015-12-10 10:00:00', 'Miskolc', 'Veradas', 'Ez itt a description, apukam');
insert into Meetups (Id, Start, Location, Topic, Description) values (2, '2015-12-10 10:00:00', 'Miskolc', 'Veradas', 'Ez itt a description, apukam');
insert into Meetups (Id, Start, Location, Topic, Description) values (3, '2015-12-10 10:00:00', 'Miskolc', 'Veradas', 'Ez itt a description, apukam');
insert into Meetups (Id, Start, Location, Topic, Description) values (4, '2015-12-10 10:00:00', 'Miskolc', 'Veradas', 'Ez itt a description, apukam');
insert into Meetups (Id, Start, Location, Topic, Description) values (5, '2015-12-10 10:00:00', 'Miskolc', 'Veradas', 'Ez itt a description, apukam');
  
insert into Users (Id, Name, BirthDate, Introduction, Avatar, Email) values (1, 'Gazdik Zsolt', '1991-05-26 12:30:00', 'Nagyon jovagasu Fiatalember', 'Ide valami hosszu szoveg jon', 'mrpapsu@gmail.com');
insert into Users (Id, Name, BirthDate, Introduction, Avatar, Email) values (2, 'Gazdik Zsolt', '1991-05-26 12:30:00', 'Nagyon jovagasu Fiatalember', 'Ide valami hosszu szoveg jon', 'mrpapsu@gmail.com');
insert into Users (Id, Name, BirthDate, Introduction, Avatar, Email) values (3, 'Gazdik Zsolt', '1991-05-26 12:30:00', 'Nagyon jovagasu Fiatalember', 'Ide valami hosszu szoveg jon', 'mrpapsu@gmail.com');
insert into Users (Id, Name, BirthDate, Introduction, Avatar, Email) values (4, 'Gazdik Zsolt', '1991-05-26 12:30:00', 'Nagyon jovagasu Fiatalember', 'Ide valami hosszu szoveg jon', 'mrpapsu@gmail.com');
insert into Users (Id, Name, BirthDate, Introduction, Avatar, Email) values (5, 'Gazdik Zsolt', '1991-05-26 12:30:00', 'Nagyon jovagasu Fiatalember', '', 'mrpapsu@gmail.com');

insert into Statuses (Id, Value) values (1, 'Going');
insert into Statuses (Id, Value) values (2, 'Tentative');
insert into Statuses (Id, Value) values (3, 'Going');
insert into Statuses (Id, Value) values (4, 'Going');
insert into Statuses (Id, Value) values (5, 'Not going');

insert into metetupregistrations(Id, `[ FK ] StatusId`, `[ FK ] MeetupId`, `[ FK ] UserId`) values (1,1,1,1);
insert into metetupregistrations(Id, `[ FK ] StatusId`, `[ FK ] MeetupId`, `[ FK ] UserId`) values (2,2,2,2);
insert into metetupregistrations(Id, `[ FK ] StatusId`, `[ FK ] MeetupId`, `[ FK ] UserId`) values (3,3,3,3);
insert into metetupregistrations(Id, `[ FK ] StatusId`, `[ FK ] MeetupId`, `[ FK ] UserId`) values (4,4,4,4);
insert into metetupregistrations(Id, `[ FK ] StatusId`, `[ FK ] MeetupId`, `[ FK ] UserId`) values (5,5,5,5);
