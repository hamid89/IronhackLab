drop table if exists films_2020;
CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` int(6),
  `rental_rate` decimal(4,2),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;
#show variables like 'local_infile';
#set global local_infile = 1;
#load data local infile'/Users/antjeschmidt/Desktop/dataV3_Lesson_2.7_lab/files_for_part1/films_2020.csv'
#into table films_2020
#columns terminated by ',';
#SET GLOBAL local_infile=1; 
select * from `films_2020`;
alter sakila.`film`
insert into sakila.`films_2020`(title,description,release_year,language_id,original_language_id,rental_duration, rental_rate, replacement_cost,rating)
values('my_film',NULL,NULL,1,NULL,'3','2.99','8.99',NULL);
select * from sakila.`films_2020`;

