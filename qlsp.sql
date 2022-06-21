use qlsv;
create table Subjects(
subjectsID int  auto_increment primary key,
subjectsname varchar(50)
);
alter table Subjects 
modify subjectsname varchar(50) not null;
create table Marks(
mark int primary key,
subjectsID int  not null,
studenID int not null,
foreign key ( subjectsID) references  Subjects (subjectsID),
 foreign key (studenID) references students(studenid)
);
alter table marks
add foreign key (studenID) references students(studenid);

create table classses(
classname varchar(250),
classid int primary key 
);
alter table classstudent 
add foreign key (classid) references classses(classid);