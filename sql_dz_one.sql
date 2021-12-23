--������� ������������� ��� � ����� ���� ����� ����
select name from students
where name like '%Anna%';


--������� ������������� ��� � ����� � ����� ���� 8
select name from students
where name like '%8';


-- ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select name from students
where created_on='2021-03-26 00:00:00'


--������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
select name from students
where created_on='2021-07-12 00:00:00'
and password='1m313';


--������� ������������� ��� password 12333
select name from students
where password='12333';


-- ������� ������ Id �������������
select id from students;


--������� ��� � email �������������
select name, email from students;


--������� id, ���, email � ���� �������� �������������
select id, name, email, created_on from students;


--  ������� ���� ��������� � �������
select name from students;


--  ������� ��� ���� � ��� ������.
select * from students;


--������� ������������ � ������� id ������ 140
select name,id from students
where id>140;


--������� ������������ � ������� id ������ 127 ��� ������ 188
select name,id from students
where id<127
or id>188;


--������� ������������ � ������� id ������ ���� ����� 137
select name,id from students s 
where id>=137;


--������� ������������� ��� password ����� 12333, 1m313, 123313
select name from students s 
where password='12333'
or password='1m313'
or password='123313';


--������� ����������� id 
select min(id) from students s;


--������� ������������ id 
select max(id) from students s;


--������� ���������� �������������
select count(name) from students s;


--������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
select id, name, created_on from students s 
order by created_on asc;


--������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
select id, name, created_on from students s 
order by created_on desc;

