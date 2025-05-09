CREATE DATABASE homework;



CREATE TABLE products (
  product_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  product_name VARCHAR(255),
  description TEXT,
  price INT
);
CREATE TABLE users (
  user_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address VARCHAR(255),
  email VARCHAR(255)
);
CREATE TABLE orders (
 order_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
 user CHAR(36)  DEFAULT (UUID()),
 product_ordered CHAR(36)  DEFAULT (UUID()),
 total_paid INT,
 FOREIGN KEY (user) REFERENCES users(user_id),
 FOREIGN KEY (product_ordered) REFERENCES products(product_id)
 );
 

CREATE TABLE country (
  id INT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE department (
  id INT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE job_title (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  description INT
);

CREATE TABLE employee (
  id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(225),
  start_date DATE,
  end_date DATE,
  job_title_id INT,
  department_id INT,
  country_id INT,
  FOREIGN KEY (job_title_id) REFERENCES job_title(id),
  FOREIGN KEY (department_id) REFERENCES department(id),
  FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE User (
  UserID INT PRIMARY KEY,
  UserName VARCHAR(255),
  Email VARCHAR(255),
  Password VARCHAR(100)
);

CREATE TABLE Post (
  PostId INT PRIMARY KEY,
  UserID INT,
  Content TEXT,
  PostDate DATE,
  FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Comment (
  CommentID INT PRIMARY KEY,
  UserID INT,
  PostID INT,
  Content TEXT,
  CommentDate DATE,
  FOREIGN KEY (UserID) REFERENCES User(UserID),
  FOREIGN KEY (PostID) REFERENCES Post(PostID)
);

CREATE TABLE LikePost (
  User INT,
  Post INT,
  LikeDate Date,
  Primary Key (User, Post),
  FOREIGN KEY (User) REFERENCES User(UserID),
  FOREIGN KEY (Post) REFERENCES Post(PostID)
);

CREATE TABLE LikeComment (
  UserID INT,
  Comment INT,
  LikeDate Date,
  PRIMARY KEY (UserID, Comment),
  FOREIGN KEY (userID) REFERENCES User(UserID),
  FOREIGN KEY (Comment) REFERENCES Comment(CommentID)
 );

 CREATE TABLE Company (
   ID_comp INT PRIMARY KEY,
   name CHAR(10)
 );
 
 CREATE TABLE Trip (
   trip_no INT PRIMARY KEY,
   ID_comp INT,
   plane VARCHAR(50),
   town_from VARCHAR(50),
   town_to VARCHAR(50),
   time_out TIME,
   time_in TIME,
   FOREIGN KEY (ID_comp) REFERENCES Company(ID_comp)
 );
 
 CREATE TABLE Passenger (
   ID_psg INT PRIMARY KEY,
   name CHAR(20)
 );
 
 CREATE TABLE Pass_in_trip (
   trip_no INT,
   date DATETIME,
   ID_psg INT,
   place VARCHAR(50),
   PRIMARY KEY(trip_no, date, ID_psg),
   FOREIGN KEY (trip_no) REFERENCES Trip(trip_no),
   FOREIGN KEY (ID_psg) REFERENCES Passenger(ID_psg)
 );
 
insert into Company values(1,'Don_avia  ');
insert into Company values(2,'Aeroflot  ');
insert into Company values(3,'Dale_avia ');
insert into Company values(4,'air_France');
insert into Company values(5,'British_AW');

insert into Passenger values(1,'Bruce Willis        ');
insert into Passenger values(2,'George Clooney      ');
insert into Passenger values(3,'Kevin Costner       ');
insert into Passenger values(4,'Donald Sutherland   ');
insert into Passenger values(5,'Jennifer Lopez      ');
insert into Passenger values(6,'Ray Liotta          ');
insert into Passenger values(7,'Samuel L. Jackson   ');
insert into Passenger values(8,'Nikole Kidman       ');
insert into Passenger values(9,'Alan Rickman        ');
insert into Passenger values(10,'Kurt Russell        ');
insert into Passenger values(11,'Harrison Ford       ');
insert into Passenger values(12,'Russell Crowe       ');
insert into Passenger values(13,'Steve Martin        ');
insert into Passenger values(14,'Michael Caine       ');
insert into Passenger values(15,'Angelina Jolie      ');
insert into Passenger values(16,'Mel Gibson          ');
insert into Passenger values(17,'Michael Douglas     ');
insert into Passenger values(18,'John Travolta       ');
insert into Passenger values(19,'Sylvester Stallone  ');
insert into Passenger values(20,'Tommy Lee Jones     ');
insert into Passenger values(21,'Catherine Zeta-Jones');
insert into Passenger values(22,'Antonio Banderas    ');
insert into Passenger values(23,'Kim Basinger        ');
insert into Passenger values(24,'Sam Neill           ');
insert into Passenger values(25,'Gary Oldman         ');
insert into Passenger values(26,'Clint Eastwood      ');
insert into Passenger values(27,'Brad Pitt           ');
insert into Passenger values(28,'Johnny Depp         ');
insert into Passenger values(29,'Pierce Brosnan      ');
insert into Passenger values(30,'Sean Connery        ');
insert into Passenger values(31,'Bruce Willis        ');
insert into Passenger values(37,'Mullah Omar         ');

insert into Trip values(1100,4,'Boeing    ','Rostov                   ','Paris                    ','14:30:00.000','17:50:00.000');
insert into Trip values(1101,4,'Boeing    ','Paris                    ','Rostov                   ','08:12:00.000','11:45:00.000');
insert into Trip values(1123,3,'TU-154    ','Rostov                   ','Vladivostok              ','16:20:00.000','03:40:00.000');
insert into Trip values(1124,3,'TU-154    ','Vladivostok              ','Rostov                   ','09:00:00.000','19:50:00.000');
insert into Trip values(1145,2,'IL-86     ','Moscow                   ','Rostov                   ','09:35:00.000','11:23:00.000');
insert into Trip values(1146,2,'IL-86     ','Rostov                   ','Moscow                   ','17:55:00.000','20:01:00.000');
insert into Trip values(1181,1,'TU-134    ','Rostov                   ','Moscow                   ','06:12:00.000','08:01:00.000');
insert into Trip values(1182,1,'TU-134    ','Moscow                   ','Rostov                   ','12:35:00.000','14:30:00.000');
insert into Trip values(1187,1,'TU-134    ','Rostov                   ','Moscow                   ','15:42:00.000','17:39:00.000');
insert into Trip values(1188,1,'TU-134    ','Moscow                   ','Rostov                   ','22:50:00.000','00:48:00.000');
insert into Trip values(1195,1,'TU-154    ','Rostov                   ','Moscow                   ','23:30:00.000','01:11:00.000');
insert into Trip values(1196,1,'TU-154    ','Moscow                   ','Rostov                   ','04:00:00.000','05:45:00.000');
insert into Trip values(7771,5,'Boeing    ','London                   ','Singapore                ','01:00:00.000','11:00:00.000');
insert into Trip values(7772,5,'Boeing    ','Singapore                ','London                   ','12:00:00.000','02:00:00.000');
insert into Trip values(7773,5,'Boeing    ','London                   ','Singapore                ','03:00:00.000','13:00:00.000');
insert into Trip values(7774,5,'Boeing    ','Singapore                ','London                   ','14:00:00.000','06:00:00.000');
insert into Trip values(7775,5,'Boeing    ','London                   ','Singapore                ','09:00:00.000','20:00:00.000');
insert into Trip values(7776,5,'Boeing    ','Singapore                ','London                   ','18:00:00.000','08:00:00.000');
insert into Trip values(7777,5,'Boeing    ','London                   ','Singapore                ','18:00:00.000','06:00:00.000');
insert into Trip values(7778,5,'Boeing    ','Singapore                ','London                   ','22:00:00.000','12:00:00.000');
insert into Trip values(8881,5,'Boeing    ','London                   ','Paris                    ','03:00:00.000','04:00:00.000');
insert into Trip values(8882,5,'Boeing    ','Paris                    ','London                   ','22:00:00.000','23:00:00.000');



insert into Pass_in_trip values(1100,'2003-04-29 00:00:00.000',1,'1a        ');
insert into Pass_in_trip values(1123,'2003-04-05 00:00:00.000',3,'2a        ');
insert into Pass_in_trip values(1123,'2003-04-08 00:00:00.000',1,'4c        ');
insert into Pass_in_trip values(1123,'2003-04-08 00:00:00.000',6,'4b        ');
insert into Pass_in_trip values(1124,'2003-04-02 00:00:00.000',2,'2d        ');
insert into Pass_in_trip values(1145,'2003-04-05 00:00:00.000',3,'2c        ');
insert into Pass_in_trip values(1181,'2003-04-01 00:00:00.000',1,'1a        ');
insert into Pass_in_trip values(1181,'2003-04-01 00:00:00.000',6,'1b        ');
insert into Pass_in_trip values(1181,'2003-04-01 00:00:00.000',8,'3c        ');
insert into Pass_in_trip values(1181,'2003-04-13 00:00:00.000',5,'1b        ');
insert into Pass_in_trip values(1182,'2003-04-13 00:00:00.000',5,'4b        ');
insert into Pass_in_trip values(1187,'2003-04-14 00:00:00.000',8,'3a        ');
insert into Pass_in_trip values(1188,'2003-04-01 00:00:00.000',8,'3a        ');
insert into Pass_in_trip values(1182,'2003-04-13 00:00:00.000',9,'6d        ');
insert into Pass_in_trip values(1145,'2003-04-25 00:00:00.000',5,'1d        ');
insert into Pass_in_trip values(1187,'2003-04-14 00:00:00.000',10,'3d        ');
insert into Pass_in_trip values(8882,'2005-11-06 00:00:00.000',37,'1a        ');
insert into Pass_in_trip values(7771,'2005-11-07 00:00:00.000',37,'1c        ');
insert into Pass_in_trip values(7772,'2005-11-07 00:00:00.000',37,'1a        ');
insert into Pass_in_trip values(8881,'2005-11-08 00:00:00.000',37,'1d        ');
insert into Pass_in_trip values(7778,'2005-11-05 00:00:00.000',10,'2a        ');
insert into Pass_in_trip values(7772,'2005-11-29 00:00:00.000',10,'3a        ');
insert into Pass_in_trip values(7771,'2005-11-04 00:00:00.000',11,'4a        ');
insert into Pass_in_trip values(7771,'2005-11-07 00:00:00.000',11,'1b        ');
insert into Pass_in_trip values(7771,'2005-11-09 00:00:00.000',11,'5a        ');
insert into Pass_in_trip values(7772,'2005-11-07 00:00:00.000',12,'1d        ');
insert into Pass_in_trip values(7773,'2005-11-07 00:00:00.000',13,'2d        ');
insert into Pass_in_trip values(7772,'2005-11-29 00:00:00.000',13,'1b        ');
insert into Pass_in_trip values(8882,'2005-11-13 00:00:00.000',14,'3d        ');
insert into Pass_in_trip values(7771,'2005-11-14 00:00:00.000',14,'4d        ');
insert into Pass_in_trip values(7771,'2005-11-16 00:00:00.000',14,'5d        ');
insert into Pass_in_trip values(7772,'2005-11-29 00:00:00.000',14,'1c        ');
commit;

select t.trip_no, pit.date
from Trip t
Join Pass_in_trip pit on t.trip_no = pit.trip_no
where t.town_from = 'Paris' and t.town_to = 'London'
order by t.trip_no, pit.date;

select * from Passenger
where SUBSTRING_INDEX(name, ' ' , -1) like 'B%';

select trip_no, date, count(*) as passenger_count
from pass_in_trip
group by trip_no, date;

select ID_psg, count(*) as trip_count
from Pass_in_trip
group by ID_psg
having count(*) > 2;

select c.name as company_name, t.town_from, t.town_to
from Company c 
join Trip t on c.ID_comp = t.ID_comp
group by c.name, t.town_from, t.town_to;

select ID_psg, town_from, town_to, count(distinct date) as trip_dates
from Pass_in_trip pit
join Trip t on pit.trip_no = t.trip_no
group by ID_psg, town_from, town_to
having count(distinct date) > 2;