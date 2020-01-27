 create database calculator;
 create table input(
 input1 float,
 input2 float,
 operator varchar(5)
 )
 select *from input

 alter table input add result float;



 create procedure calci @input1 float,@input2 float,@operator varchar(5)
 AS
 if (@operator='+')
 begin
 select cast(@input1+@input2 as float)
 end
 exec calci @input1=10,@input2=30,@operator='+'
 create procedure c @input1 float,@input2 float,@operator varchar(5)
 as
 if(@operator='+')
 begin
 insert into input values( @input1,@input2,@operator,@input1+@input2)
 end
else if (@operator='-')
 begin
 insert into input values(@input1,@input2,@operator,@input1-@input2)
 end
 else if (@operator='*')
 begin
 insert into input values(@input1,@input2,@operator,@input1*@input2)
 end
 else if(@operator='/')
 begin
   if(@input2=0)
   begin
   select'invalid value'
   end
   else
   begin
   insert into input values(@input1,@input2,@operator,@input1/@input2)
   end
 end
 exec c @input1=25,@input2=35,@operator='+'
  exec c @input1=25,@input2=35,@operator='*'
  exec c @input1=25,@input2=35,@operator='-'
  exec c @input1=25,@input2=35,@operator='/'
 select * from input 
 