create database OrderDB
use OrderDB
drop table orders
Create Table Customers
(CId int Primary Key,
FirstName nvarchar(50),
LastName nvarchar(50),
TotalSpending decimal(15,2))

Insert Into Customers(CId,FirstName,LastName) Values (1, 'Viya', 'Gandhi'),
(2, 'Priya', 'Elango'),
(3, 'Sathish', 'Mani')

Create Table Orders
(OrderId int Primary key,
CustomerId int,
OrderDate datetime,
TotalAmount decimal(15,2),
Foreign Key(CustomerId) References Customers(CId))

Insert Into Orders Values(301, 1, '10/02/2022', 1400.50),
(302, 2, '01/07/2022', 250.00),
(113, 3, '11/03/2023', 7500.40),
(124, 1, '08/21/2022', 1300.30),
(504, 3, '12/02/2023', 1100.00)

Select * From Customers

Select * From Orders

create proc PlaceOrderProc
@orderId int ,
@id int,
@total decimal(15,2)
as
begin
insert into Orders(OrderId,CustomerId,OrderDate,TotalAmount)
values (@orderId,@id,getdate(),@total)
update Customers set TotalSpending=(Select sum(TotalAmount) from Orders
where Customers.CId=Orders.CustomerId)
end

Select * From Customers