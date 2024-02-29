#####\ Creating The Database \*****

create database air_booking_system;
use air_booking_system;

#####/ Creating The Passenger Table/*****


 create table passenger(passenger_id int primary key,
 name varchar(40),
 email_id varchar(50),
 phone_no varchar(40),
 passport_no varchar(40));
 
 
 #####\ Creting The Flights table\*****
 
 create table flights(flight_id INT PRIMARY KEY,
airline VARCHAR(50),
flight_number VARCHAR(50),
origin_airport VARCHAR(50),
destination_airport VARCHAR(50),
departure_date DATE,
departure_time TIME,
arrival_date DATE,
arrival_time TIME,
travel_class VARCHAR(40),
price DECIMAL,
available_seats INT);


#####\ Creating The Bookings Table\*****

create table bookings(booking_id INT PRIMARY KEY,
passenger_id int,
flight_id INT,
booked_date DATE,
seat_number VARCHAR(40),
fare_paid float,
booking_status VARCHAR(40),
FOREIGN KEY(passenger_id) REFERENCES passenger(passenger_id),
FOREIGN KEY(flight_id) REFERENCES flights(flight_id));




####\ Inserting The Values In Respective Table \****

insert into passenger values(1001,"sandesh","san@101.om",1203465486,"5516RZ8-HK8");
insert into passenger values(1002,"sachin","sac@102.com",2479422434,"2223ZVN9N4");
insert into passenger values(1003,"akash","aka@103.com",9513346789,"H017ZXLM91");
insert into passenger values(1004,"sailesh","sai@104.com",348445441,"4743M10X41");
insert into passenger values(1005,"shridhar","sri@105.com",36515241,"66204M96M4");
insert into passenger values(1006,"akesh","ake@106.com",488544546,"74414Y-HYZ6");
insert into passenger values(1007,"kamini","kam@107.com",38494654,"00494L26W9");
insert into passenger values(1008,"jaish","jai@108.com",649546546,"H003MNT5X0");
insert into passenger values(1009,"kamlesh","kaml@109.com",415181610,"4802XZ63J6");
insert into passenger values(1010,"pankaj","pan@110.com",498459265,"J782XL5WR0");
insert into passenger values(1011,"ajay","aja@111.com",984892532,"6765YJNRW5");
insert into passenger values(1012,"ganesh","gan@112.com",68492625,"F777ZZ3XV5");
insert into passenger values(1013,"jagdish","jag@113.com",64952101,"K956Y062L8");
insert into passenger values(1014,"krish","kri@114.com",254274954,"jdsdf5654");
insert into passenger values(1015,"sandy","san@115.com",558489225,"sjfb6256d");
insert into passenger values(1016,"neeraj","nee@116.com",329459625,"4fsdf64541");
insert into passenger values(1017,"gopal","gopal@117.com",341955454,"474fsf331s1");
insert into passenger values(1018,"krutika","kru@118.com",6595652166,"47sd161164d");
insert into passenger values(1019,"brijesh","bri@119.com",34852512,"474vsd5164");
insert into passenger values(1020,"nilesh","nil@120.com",348262421,"4mt01h5t1");


#####\ Inserting The Values In Table Flight\*****


insert into flights values(201,"american airline",32165,"Dallas/Fort Worth International Airport","dubai",
'2024-01-19','12:20:00','24-01-20','01:25:00',"economy class",25000,12);
insert into flights values(202,"Delta Air Lines",65123," Atlanta International Airport (ATL)","qatar",
'2024-01-23','12:20:00','24-01-24','01:25:00',"economy class",23000,24);
insert into flights values(203,"United Airlines",65562,"Denver International Airport","india",
'2024-01-25','12:20:00','24-01-26','01:25:00',"economy class",23260,30);
insert into flights values(204,"Lufthansa",26556,"Frankfurt Airport (FRA)","grmany",
'2024-01-24','12:20:00','24-01-25','01:25:00',"Premium Economy Class",32250,36);
insert into flights values(205,"British Airways",65453,"London Heathrow Airport (LHR)","dubai",
'2024-01-21','12:20:00','24-01-22','01:25:00',"Premium Economy Class",35462,32);
insert into flights values(206,"Air France",32562,"Charles de Gaulle Airport (CDG)","france",
'2024-01-26','12:20:00','24-01-27','01:25:00',"Business Class",25000,28);
insert into flights values(207,"Emirates",32657,"Dubai International Airport (DXB)","india",
'2024-01-28','12:20:00','24-01-29','01:25:00',"Business Class",25000,31);
insert into flights values(208,"Qatar Airways",32652,"Hamad International Airport (DOH)","doha",
'2024-01-27','12:20:00','24-01-28','01:25:00',"Low-Cost Carrier (LCC) Class",25000,29);
insert into flights values(209,"Singapore Airlines",12655,"Singapore Changi Airport (SIN)","singapore",
'2024-01-20','12:20:00','24-01-21','01:25:00',"Premium Cabin",25000,16);
insert into flights values(210,"Cathay Pacific",35555,"Hong Kong International Airport (HKG)","netherland",
'2024-01-17','12:20:00','24-01-18','01:25:00',"Low-Cost Carrier (LCC) Class",27500,18);
insert into flights values(211,"Qantas",425645,"Australia","abudabi",
'2024-01-15','12:20:00','24-01-16','01:25:00',"Low-Cost Carrier (LCC) Class",35000,26);
insert into flights values(212,"KLM Royal Dutch Airlines",33557,"Netherlands","america",
'2024-01-24','12:20:00','24-01-25','01:25:00',"economy class",52000,12);
insert into flights values(213,"ANA (All Nippon Airways)",32663,"Japan","himosima",
'2024-01-12','12:20:00','24-01-13','01:25:00',"Business class",43000,54);
insert into flights values(214,"Etihad Airways",36361,"United Arab Emirates","india",
'2024-01-23','12:20:00','24-01-24','01:25:00',"premium class",42000,21);
insert into flights values(215,"Swiss International Air Linesc",22564,"Switzerland","swiss",
'2024-01-22','12:20:00','24-01-23','01:25:00',"premium class",65000,47);
insert into flights values(216,"Scandinavian Airlines (SAS)",32656,"Denmark, Norway, Sweden","india",
'2024-01-29','12:20:00','24-01-30','01:25:00',"Low-Cost Carrier (LCC) Class",75000,35);
insert into flights values(217,"LATAM Airlines ",79852,"Chile","germany",
'2024-01-14','12:20:00','24-01-15','01:25:00',"Low-Cost Carrier (LCC) Class",51000,45);
insert into flights values(218,"South African Airways",55235,"South Africa","france",
'2024-01-03','12:20:00','24-01-02','01:25:00',"first class",40000,31);
insert into flights values(219,"Virgin Atlantic",26432,"United Kingdom","losangel",
'2024-01-02','12:20:00','24-01-03','01:25:00',"Low-Cost Carrier (LCC) Class",37000,17);
insert into flights values(220,"Lufthansa ",65421,"Germany","france",
'2024-01-05','12:20:00','24-01-06','01:25:00',"Business Class",46000,16);



#####\ Inserting The Values In The Bookings \*****

insert into bookings values(2001,1001,201,"24-01-01","1acb",25000,"confirmed");
insert into bookings values(2002,1002,202,"24-01-02","2bcd",24000,"confirmed");
insert into bookings values(2003,1003,203,"24-01-03","3dcg",32000,"wailisted");
insert into bookings values(2004,1004,204,"24-01-04","4fcd",65000,"cancelled");
insert into bookings values(2005,1005,205,"24-01-05","5kfd",29000,"confirmed");
insert into bookings values(2006,1006,206,"24-01-06","6fgg",34000,"standby");
insert into bookings values(2007,1007,207,"24-01-07","7esd",31000,"cancelled");
insert into bookings values(2008,1008,208,"24-01-08","8hgf",43000,"waitlisted");
insert into bookings values(2009,1009,209,"24-01-09","9ert",65000,"confirmed");
insert into bookings values(2010,1010,210,"24-01-10","10jhg",49000,"cancelled");
insert into bookings values(2011,1011,211,"24-01-11","11lkj",37000,"standby");
insert into bookings values(2012,1012,212,"24-01-12","12jnm",43500,"confirmed");
insert into bookings values(2013,1013,213,"24-01-13","13lok",51000,"confirmed");
insert into bookings values(2014,1014,214,"24-01-14","14jhg",52000,"confirmed");
insert into bookings values(2015,1015,215,"24-01-15","15uyt",54000,"confirmed");
insert into bookings values(2016,1016,216,"24-01-16","16hfc",49000,"wailisted");
insert into bookings values(2017,1017,217,"24-01-17","17jhy",49500,"cancelled");
insert into bookings values(2018,1018,218,"24-01-18","18erd",48500,"confirmed");
insert into bookings values(2019,1019,219,"24-01-19","19ftr",49600,"confirmed");
insert into bookings values(2020,1020,220,"24-01-20","20asd",62000,"confirmed");


select*from passenger;
select*from flights;
select*from bookings;

#####\ SUBQUERIES \*****

select passport_no from passenger where passenger_id = 1004;
select name,email_id,phone_no from passenger where passenger_id = 1005;
select airline,destination_airport,travel_class,price,available_seats from flights;
select departure_date,arrival_date from flights where airline = "british airways";
select passenger_id,flight_id from bookings where fare_paid>=24000 and booking_status = "confirmed";
select airline from flights where destination_airport = "dubai" or travel_class = "economy class";
select flight_id,airline from flights where not price >=32000;
select flight_id,airline from flights where price not between 25000 and 50000; 
select*from bookings where fare_paid not in (25000,24000,32000);
select*from bookings limit 2,7;


#####\ Use Of Math Function And Group By Clause\*****

select airline,count(price) from flights group by airline;
select flight_id,airline,sum(price) from flights group by flight_id;
select booking_id,min(fare_paid) from bookings group by booking_id;
select booking_id,max(fare_paid) from bookings group by booking_id;
select sum(price),flight_number from flights group by flight_number having sum(price)>40000;

#####\JOINS\*****

select bookings.booked_date,bookings.booked_date,bookings.seat_number,flights.airline from bookings inner join flights on bookings.passenger_id = flights.flight_id;
select passenger.name,passenger.passport_no,bookings.booking_status from passenger inner join bookings on passenger.passenger_id = bookings.passenger_id;
select passenger.email_id,passenger.phone_no,bookings.fare_paid from passenger left join bookings on passenger.passenger_id = bookings.passenger_id;
select passenger.passenger_id,bookings.flight_id,bookings.seat_number from passenger right join bookings on passenger.passenger_id = bookings.passenger_id;
select flights.airline,flights.destination_airport,flights.available_seats,bookings.booking_status from flights cross join bookings;

