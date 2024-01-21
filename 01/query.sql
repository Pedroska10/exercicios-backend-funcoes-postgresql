select count(*) from farmacia;

select min(idade) from usuarios

select max(idade) from usuarios

select avg(idade) from usuarios where idade >= 18

select categoria, sum(etoque) as "estoque total" from farmacia where categoia = 'red' or categoria = 'blue' group by categoria

select categoria, sum(etoque) as "estoque total" from farmacia where categoia = is not null group by categoria

select categoria, sum(etoque) as "estoque total" from farmacia where categoia = is null group by categoria

select count(*) from farmacia where categoria is null

select concat(medicamento, '(', categoria, ')') from farmacia where categoria is not null

select concat(id, '-', medicamento, '(', coalesce(categoia, 'sem categoria'), ')') from farmacia

select nome, idade, cast(cadastro as date) from usuarios where cadastro::date < '2021/01/01' and cadastro::date > '2019/12/31'

select nome, idade, email, age(cast(cadastro as timestamp)) from usuarios from where idade < 18

select nome, idade, email, age(cast(cadastro as date)) from usuarios from where idade >= 60

select categoria, count(id) from farmacia where categoria is not null group by categoria

select idade, count(*) from usuarios where idade >= 18 group by idade

select categoria, sum(estoque) from farmacia group by categoria limit 3


