--¬ывести пользователей где в имени есть слово јнна
select name from students
where name like '%Anna%';


--¬ывести пользователей где в имени в конце есть 8
select name from students
where name like '%8';


-- ¬ывести пользователей которые были созданы 2021-03-26 00:00:00
select name from students
where created_on='2021-03-26 00:00:00'


--¬ывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select name from students
where created_on='2021-07-12 00:00:00'
and password='1m313';


--¬ывести пользователей где password 12333
select name from students
where password='12333';


-- ¬ывести только Id пользователей
select id from students;


--¬ывести им€ и email пользователей
select name, email from students;


--¬ывести id, им€, email и дату создани€ пользователей
select id, name, email, created_on from students;


--  ¬ывести всех студентов в таблице
select name from students;


--  ¬ывести все пол€ и все строки.
select * from students;


--¬ывести пользовател€ у которых id больше 140
select name,id from students
where id>140;


--¬ывести пользовател€ у которых id меньше 127 или больше 188
select name,id from students
where id<127
or id>188;


--¬ывести пользовател€ у которых id меньше либо равно 137
select name,id from students s 
where id>=137;


--¬ывести пользователей где password равен 12333, 1m313, 123313
select name from students s 
where password='12333'
or password='1m313'
or password='123313';


--¬ывести минимальный id 
select min(id) from students s;


--¬ывести максимальный id 
select max(id) from students s;


--¬ывести количество пользователей
select count(name) from students s;


--¬ывести id пользовател€, им€, дату создани€ пользовател€. ќтсортировать по пор€дку возрастани€ даты добавлени€ пользоватлел€.
select id, name, created_on from students s 
order by created_on asc;


--¬ывести id пользовател€, им€, дату создани€ пользовател€. ќтсортировать по пор€дку убывани€ даты добавлени€ пользоватлел€.
select id, name, created_on from students s 
order by created_on desc;

