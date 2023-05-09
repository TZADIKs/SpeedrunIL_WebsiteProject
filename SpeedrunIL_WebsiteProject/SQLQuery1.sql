insert into usersTbl (F_NAME, L_NAME, U_NAME, PREFIX, PHONE, EMAIL, GENDER, PSW, HOBBY1, HOBBY2, HOBBY3, HOBBY4, HOBBY5)
values
('fname1','lname1','uname1','051','1234567','@gmail.com1','male','12341','0','1','1','0','0')
select * from usersTbl
select EMAIL, U_NAME from usersTbl where F_NAME = 'fname1'