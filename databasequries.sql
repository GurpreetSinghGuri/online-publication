create table admin (username varchar(40) primary key,password varchar(50));
insert into admin values('admin','admin');

create table register(username varchar(40) primary key,password varchar(50));
insert into register values('gurpreet','123');

create table publish(Id int primary key,publication_place varchar(40),publication_date varchar(30),publisher varchar(50));
insert into publish values(1,'Canada','12/dec/2019','IJRCR');
insert into publish values(2,'India','12/Jan/2020','IJUUE');
insert into publish values(3,'Canada','13/feb/2020','IJRRE');
CREATE TABLE [dbo].[candidate] (
    [username] VARCHAR (40) NOT NULL,
    [age]      INT          NULL,
    [dob]      DATE         NULL,
    PRIMARY KEY CLUSTERED ([username] ASC),
    FOREIGN KEY ([username]) REFERENCES [dbo].[register] ([username])
);
