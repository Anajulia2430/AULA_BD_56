#Criação da tabela departamentos 
create table departamentos (
id int auto_increment,
nome VARCHAR (60),
primary key (id)
);

#Inserindo departamentos na tabela 
insert into departamentos values (1,"financeiro");
insert into departamentos values (2, "vendas");
insert into departamentos values (3, "desenvolvimento de produtos");
insert into departamentos values (4, "TI");
insert into departamentos values (5, "Juridico");
insert into departamentos values (6, "Qualidade");
insert into departamentos values (7, "Administração");
insert into departamentos values (8, "Atendimento ao cliente");
insert into departamentos values (9, "Recursos Humanos");
insert into departamentos values (10, "Marketing");
insert into departamentos values (11, "Produção");
insert into departamentos values (12, "Executivo");
insert into departamentos values (13, "Gerente Financeiro");
insert into departamentos values (14, "Gerente de Marketing");
insert into departamentos values (15, "Gerente de Produção");

#selecionando a tabela departamentos
select * from departamentos;


#Alterando a tabela funcionarios,
#adicionando a coluna id_departamentos como chave estrangeira 
#fazendo referencia a tabela departamentos 
ALTER TABLE funcionarios 
ADD COLUMN id_departamentos int,
ADD CONSTRAINT fk_funcionarios_departamentos
FOREIGN KEY (id_departamentos) REFERENCES departamentos (id);
 
#selecionando os funcionarios da tabela
select * from funcionarios;

#Atualizando o funcionário de id 1 para o departamento de "financeiro" 
update funcionarios set id_departamentos = 1 where id = 1; 

#Atualizando os funcionários com id 2,3,4 ou 5 para o departamento de "vendas"
update funcionarios set id_departamentos = 2 where id = 2 or id=3 or id=4 or id=5;

#Atualizando os funcionários com id 6,7,8 ou 9 para o departamento de "TI"
update funcionarios set id_departamentos = 4 where id = 6 or id =7 or id=8 or id=9;

#Atualizando os funcionários com id 10,11,12 ou 13 para o departamento "Jurídico"
update funcionarios set id_departamentos = 5 where id = 10 or id =11 or id=12 or id=13;

#Atualizando os funcionários com id 14,15,16 ou 17 para o departamento "Recursos Humanos" 
update funcionarios set id_departamentos = 9 where id = 14 or id =15 or id=16 or id=17;

#Selecionando o id dos funcionários com maior salário
select id from funcionarios where salario order by salario desc;

#Atualizando o funcionário com maior salario de id 44 para o departamento "Executivo"
update funcionarios set id_departamentos=12 where id=44;

#Selecionando o id dos 4 primeiros funcionários com maior salário 
select id from funcionarios where salario order by salario desc limit 4;

#Atualizando o funcionario com o 2 maior salário de id 413 para o departamento de "Gerente Financeiro"
update funcionarios set id_departamentos=13 where id=413;

#Atualizando o funcionário com id 642 para o departamento de "Gerente de Produção"
update funcionarios set id_departamentos= 15 where id=642;

#Atualizando o funcionário com id 462 para o departamento de "Gerente de Marketing"
update funcionarios set id_departamentos = 14 where id=462;



