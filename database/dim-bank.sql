select * from teste.dim_status_cliente;
INSERT INTO teste.dim_status_cliente (id_status_cliente, status_cliente) values (1, 'Existing Customer');
INSERT INTO teste.dim_status_cliente (id_status_cliente, status_cliente) values (2, 'Attrited Customer');

select * from teste.dim_genero;
INSERT INTO teste.dim_genero (id_genero, genero) values (20, 'Masculino');
INSERT INTO teste.dim_genero (id_genero, genero) values (21, 'Feminino');

select * from teste.dim_educacao;
INSERT INTO teste.dim_educacao (id_educacao, educacao) values (30, 'Faculdade');
INSERT INTO teste.dim_educacao (id_educacao, educacao) values (31, 'Doutorado');
INSERT INTO teste.dim_educacao (id_educacao, educacao) values (32, 'Graduado');
INSERT INTO teste.dim_educacao (id_educacao, educacao) values (33, 'Colegial');
INSERT INTO teste.dim_educacao (id_educacao, educacao) values (34, 'Pós-Graduado');
INSERT INTO teste.dim_educacao (id_educacao, educacao) values (35, 'Sem educação');
INSERT INTO teste.dim_educacao (id_educacao, educacao) values (36, 'Desconhecido');

select * from teste.dim_status_matrimonio;
INSERT INTO teste.dim_status_matrimonio (id_status_matrimonio, status_matrimonio) values (40, 'Divorciado');
INSERT INTO teste.dim_status_matrimonio (id_status_matrimonio, status_matrimonio) values (41, 'Casado');
INSERT INTO teste.dim_status_matrimonio (id_status_matrimonio, status_matrimonio) values (42, 'Solteiro');
INSERT INTO teste.dim_status_matrimonio (id_status_matrimonio, status_matrimonio) values (43, 'Desconhecido');

select * from teste.dim_income_category;
INSERT INTO teste.dim_income_category (id_income_category, income_category) values (50, '$120K +');
INSERT INTO teste.dim_income_category (id_income_category, income_category) values (51, '$40K - $60K');
INSERT INTO teste.dim_income_category (id_income_category, income_category) values (52, '$60K - $80K');
INSERT INTO teste.dim_income_category (id_income_category, income_category) values (53, '$80K - $120K');
INSERT INTO teste.dim_income_category (id_income_category, income_category) values (54, 'Menor que $40K');
INSERT INTO teste.dim_income_category (id_income_category, income_category) values (55, 'Desconhecido');

select * from teste.dim_categoria_cartao;
INSERT INTO teste.dim_categoria_cartao (id_categoria_cartao, categoria_cartao) values (60, 'Blue');
INSERT INTO teste.dim_categoria_cartao (id_categoria_cartao, categoria_cartao) values (61, 'Gold');
INSERT INTO teste.dim_categoria_cartao (id_categoria_cartao, categoria_cartao) values (62, 'Platinum');
INSERT INTO teste.dim_categoria_cartao (id_categoria_cartao, categoria_cartao) values (63, 'Silver');

create table teste.fact_clients(
	id_status_cliente integer not null,
	id_cliente integer not null,
	id_categoria_cartao integer not null,
	customer_age integer not null,
	dependent_count integer not null,
	id_educacao integer not null,
	id_genero integer not null,
	id_income_category integer not null,
	id_status_matrimonio integer not null
);