SET SQL_SAFE_UPDATES =0;

DELETE FROM funcionarios;

#Fazendo a contagem de funcionarios por departamentos
select id_departamentos, COUNT(*) AS total_funcionarios 
from funcionarios 
group by id_departamentos;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

#Fazendo a contagem de funcionários por departamentos que recebem acima de 10000
select id_departamentos, COUNT(*) AS total_funcionarios 
from funcionarios
where salario >10000 
group by id_departamentos;

#Fazendo a contagem dos funcionarios por departamentos que recebem de 5000 a 10000
select id_departamentos, COUNT(*) AS total_funcionarios
from funcionarios 
where salario between 5000 and 10000
 group by id_departamentos;
 
 #Somando os salários dos funcionarios da empresa
 select sum(salario) as soma_salarios from funcionarios;






