#Question1

create database linkedin;

use linkedin;

create table AI_Tools(
ID int,
Technology varchar(20));

insert into AI_Tools values(1,"DS"),(1,"Tableau"),(1,"SQL"),(2,"R"),
(2,"PowerBI"),(1,"Python");

select * from AI_Tools;

#to list the candidates ID which possess all the required skills
select ID from AI_Tools where Technology in ("DS","Python","Tableau","SQL");
 
 #----------------------------------------------------------------------
 
 #Question2
 
 create database Facebook;
 
 use Facebook;

create table Product_Info(
 Pr_ID int, Product_Name varchar(30),
 primary key(Pr_ID));
 
 insert into Product_Info values(1001,"Blog"),(1002,"Youtube"),
 (1003,"Education");
 
 select * from Product_Info;
 
 create table Product_Info_Likes(
 User_ID int, Pr_ID int, Liked_date date, primary key(User_ID),
 foreign key(Pr_ID) references Product_Info(Pr_ID)); 
 
 insert into Product_Info_Likes values(1,1001,"2023-08-19"),
 (2,1003,"2023-08-18");
 
 select * from Product_Info_Likes;
 
#write a query to return IDs of the Product_Info that have 0 likes
SELECT p.Pr_ID FROM Product_Info as p 
LEFT JOIN Product_Info_Likes as pl ON p.Pr_ID = pl.Pr_ID
GROUP BY p.Pr_ID HAVING COUNT(pl.User_ID) = 0;