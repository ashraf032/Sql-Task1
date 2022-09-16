create database Kurs

use Kurs

create table Students (
    ID int identity primary key,
    [Name] nvarchar(100) not null,
    Surname nvarchar(100) not null,
    City varchar(100),
    [Birth Day] date not null,
	Gender bit,
	[Group] varchar(100) not null,
	Profession varchar(100) not null,
	Faculty varchar(100) not null
);

insert into [dbo].[Students](
	[Name], Surname, [Birth Day],City, Gender, [Group], Profession, Faculty
) values 
	('Ashraf','Qasimov', '2002-04-18', 'Maştağa','1', 'V-114', 'Web Developer', 'IT'),
	('Salam','Sumuyova', '1991-04-18', 'Maştağa','1', 'V-115', 'Web Developer', 'IT'),
	('Alaykum','Rasulova', '1999-04-18', 'Maştağa','1', 'V-115', 'Web Developer', 'IT'),
	('Emiqizi','Qaziyev', '1812-04-18', 'Maştağa','0', 'V-114', 'Web Developer', 'IT'),
	('Nurxan','Masimzade', '1198-04-18', 'Maştağa','1', 'V-115', 'Web Developer', 'IT'),
	('Elgun','Bayramli', '1999-04-18', 'Maştağa','1', 'V-115', 'Web Developer', 'IT'),
	('John','Haciyeva', '1138-04-18', 'Maştağa','0', 'V-115', 'Web Developer', 'IT'),
	('Qasim','Eliyev', '1969-04-18', 'Maştağa','1', 'V-114', 'Web Developer', 'IT'),
	('Sahruddin', N'Həsənov', '1931-04-18', 'Maştağa','1', 'V-115', 'Web Developer', 'IT'),
	('Mürşüd','Sadiqov', '1944-04-18', 'Sabyuncu','1', 'V-114', 'Web Developer', 'IT')

;



select * , case Students.Gender when 0 then N'Woman' when 1 then N'Man' end [Sex Type] from Students ;



select * from  [dbo].[Students] where [Group]='V-115';



select [Name], Surname from  [dbo].[Students] where [Group]='V-115';



select * from [dbo].[Students] order by Surname ASC;



select [Surname]  from [dbo].[Students] where [Surname] not like '%[ey]%';
