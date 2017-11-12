drop table attributes;
drop table numvalues;
drop table textvalues;
drop table node;

create table node(
	id varchar(5),
	begin number(5),
	end number(5),
	parent varchar(5),
	tag varchar(20),
	nodetyp varchar(7),
	constraint pk_node primary key (id),
	constraint fk_node_node foreign key (parent) references node(id),
	constraint ck_node_nodetype check (nodetyp in ('element', 'text', 'number'))
);


create table textvalues(
	node varchar(5),
	value varchar(100),
	constraint pk_textvalues primary key (node),
	constraint fk_textvalues_node foreign key (node) references node(id)
);


create table numvalues(
	node varchar(5),
	value number(20),
	constraint pk_numvalues primary key (node),
	constraint fk_numvalues_node foreign key (node) references node(id)
);

create table attributes(
	node varchar(5),
	name varchar(30),
	value varchar(30),
	constraint pk_attributes primary key (node, name),
	constraint fk_attributes_node foreign key (node) references node(id)
);
