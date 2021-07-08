
--create database tiki
use tiki
drop table product
create table product
(
	id char(10),
	name ntext,
	prices int,
	status text,
	qty int
)
drop table customer
create table customer
(
	cusId char(10),
	name ntext,
	email text,
	phone int,
	level int,
	status text,
)
insert into product(id,name,prices,status,qty) values (1 , 'a-jean',495000,'in-stock',9999)
insert into product(id,name,prices,status,qty) values (2 , 'b-jean',495000,'in-stock',9999)
insert into product(id,name,prices,status,qty) values (3 , 'c-jean',495000,'in-stock',9999)
insert into product(id,name,prices,status,qty) values (4 , 'd-jean',495000,'in-stock',9999)
insert into product(id,name,prices,status,qty) values (5 , 'e-jean',495000,'in-stock',9999)

update product
set name = 'denirm-jacket', prices = 500000
where id='1'

delete from product where id = '5'
alter table product
 drop column qty2,qty3
 alter table product
 add qty3 int
select *from product


insert into customer(cusId,name,email,phone,level,status) values (1 , 'Mr-a','a@gmail.com',0123456789,1,'active')
insert into customer(cusId,name,email,phone,level,status) values (2 , 'Mr-b','a@gmail.com',0123456789,2,'active')
insert into customer(cusId,name,email,phone,level,status) values (3 , 'Mr-c','a@gmail.com',0123456789,3,'inactive')
insert into customer(cusId,name,email,phone,level,status) values (4 , 'Mr-d','a@gmail.com',0123456789,4,'inactive')
insert into customer(cusId,name,email,phone,level,status) values (5 , 'Mr-e','a@gmail.com',0123456789,5,'inactive')


update customer
set name = 'denirm-jacket', status = 'inactive'
where cusId='1'

delete from customer where cusId = '3'
select *from customer
