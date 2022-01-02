--Вывести пользователей где в имени есть слово Anna
select name from students
where name like '%Anna%';


--Вывести пользователей где в имени в конце есть 8
select name from students
where name like '%8';


-- Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name from students
where created_on='2021-03-26 00:00:00'


--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select name from students
where created_on='2021-07-12 00:00:00'
and password='1m313';


--Вывести пользователей где password 12333
select name from students
where password='12333';


-- Вывести только Id пользователей
select id from students;


--Вывести имя и email пользователей
select name, email from students;


--Вывести id, имя, email и дату создания пользователей
select id, name, email, created_on from students;


--Вывести только имя пользователей
select name from students;


--Вывести все поля и все строки.
select * from students;


--Вывести пользователя у которых id больше 140
select name,id from students
where id>140;


--Вывести пользователя у которых id меньше 127 или больше 188
select name,id from students
where id<127
or id>188;


--Вывести пользователя у которых id меньше либо равно 137
select name,id from students s 
where id>=137;


--Вывести пользователей где password равен 12333, 1m313, 123313
select name from students s 
where password='12333'
or password='1m313'
or password='123313';


--Вывести минимальный id 
select min(id) from students s;


--Вывести максимальный.
select max(id) from students s;


--Вывести количество пользователей
select count(name) from students s;


--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id, name, created_on from students s 
order by created_on asc;


--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id, name, created_on from students s 
order by created_on desc;

--Вывести пользователей где в имени в есть буква а
select name from students
where name like '%a%'
OR WHERE name LIKE 'A%';







