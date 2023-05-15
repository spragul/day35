
create database imdb;
use imdb;
create table genre(
id int auto_increment,
movie_genre varchar(255),
createdAt timestamp default current_timestamp,
updateAt timestamp on update current_timestamp,
primary key(id)
);

insert into genre( movie_genre)value(' Adventure');
insert into genre( movie_genre)value('Comedy');
insert into genre( movie_genre)value('Drama');
select * from imdb.genre;

create table movies(
id int auto_increment,
movie_id int,
movie_name varchar(255),
movie_year int,
movie_rating int,
createdAt timestamp default current_timestamp,
updateAt timestamp on update current_timestamp,
primary key(id),
foreign key (movie_id) references genre(id)
);

insert into movies(movie_id,movie_name,movie_year,movie_rating)
value('1','777 Charlie','2022','9'),
('1','The Extraordinary Journey of the Fakir','2018','7'),
('2','Nanpakal Nerathu Mayakkam','2022','7'),
('2','Sunflower','2021','7'),
('3',' Das Ka Dhamki','2023','6'),
('3','Anbe Sivam','2003','9');

select * from imdb.movies;

create table user_review(
id int auto_increment,
user_id int,
user_reviews varchar(2000),
createdAt timestamp default current_timestamp,
updateAt timestamp on update current_timestamp,
primary key(id),
foreign key(user_id) references movies(id)
);

insert into user_review(user_id,user_reviews)
values('1',' Dharma is stuck in a rut with his negative and lonely lifestyle and spends each day in the comfort of his loneliness. '),
('1','A pup named Charlie enters his life and gives him a new perspective towards it.'),
('2','Ajatashatru Lavash Patel has lived all his life in a small Mumbai neighborhood tricking people with street magic and fakir stunts. '),
('2','He sets out on a journey to find his estranged father but instead gets dragged on a never-ending adventure.'),
('3','group of Malayali travelers were returning to Kerala by bus after their visit to Velankanni, doze off in a lazy nap.'),
('3',' When James stops the bus in a village in Tamil Nadu, Sundaram behaves .'),
('4','A quirky murder mystery based in a housing society called Sunflower.'),
('4','Its simpleton resident Sonu dives headlong into a murder mystery and becomes the chief suspect.'),
('5','rishna Das, a waiter by profession, falls for Keerthi. His look alike, Dr. Sanjay Rudra, dies in an accident the night before Das loses his job and love.'),
('5','Rao Ramesh encounters Krishna Das.'),
('6','Two men, one young and arrogant, the other damaged - physically but not spiritually - by life, are thrown together by circumstances.'),
('6',' find that they are in some ways bound together by fate.');

select * from imdb.user_review;

create table skills(
id int auto_increment,
skillid int,
actor_name varchar(255),
actor_age int,
actor_skills varchar(255),
 createdAt timestamp default current_timestamp,
 updateAt timestamp on update current_timestamp,
primary key(id),
foreign key(skillid) references movies(id)
);

insert into skills(skillid,actor_name,actor_age,actor_skills)
value('1','Rakshit Shetty','35','actor, writer'),
('2','Dhanush','45','Director,Actor,Music Department'),
('3','Mammootty','55','Director,Actor,Music Department'),
('4','Ashish Vidyarthi','65','actor, writer'),
('5','Vishwak Sen','36','Director,Make-Up Department'),
('6','Kamal Haasan','61','Director,Music Department');

select * from skills;
select * from movies g join skills s on g.id=s.skillid;

create table roles(
id int auto_increment,
role_id int,
movie_role_one varchar(255),
movie_role_two varchar(255),
createdAt timestamp default current_timestamp,
updateAt timestamp on update current_timestamp,
primary key(id),
foreign key(role_id) references movies(id)
);
insert into roles(role_id,movie_role_one,movie_role_two)
values('1','Dr. Ashwin Kumar','Karshan Roy'),
('2','Ajatashatru Oghash Rathod','Wiraj'),
('3','Nurse Benny','Jhony'),
('4','Sonu Singh','Mr. Ahuja'),
('5','Investor Dhanunjay','Dr. Sanjay Rudra'),
('6','Nallasivam','Kandasamy Padayachi');

select * from roles;


create table imgs(
id int auto_increment,
image_id int,
image longblob not null,
createdAt timestamp default current_timestamp,
updateAt timestamp on update current_timestamp,
primary key(id),
foreign key(image_id) references movies(id)
)

select @@GLOBAL.secure_file_priv;

insert into imgs(image_id,image)
values(1,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ad1.jpg')),
(2,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ad2.jpg')),
(3,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cm1.jpg')),
(4,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cm2.jpg')),
(5,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/d1.jpg')),
(6,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/d2.jpg'));

 select * from imgs;
 



