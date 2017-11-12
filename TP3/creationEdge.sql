drop table numvalues;
drop table textvalues;
drop table edge;

create table edge (
	source varchar(5),
	target varchar(5),
	ordinal number,
	tag varchar(20),
	type varchar(3) NOT NULL,
	constraint pk_edge primary key (target),
	constraint fk_edge_edge foreign key(source) references edge(target)
);

create table textvalues (
	node varchar(5),
	value varchar(50),
	constraint pk_textvalues primary key (node),
	constraint fk_textvalues_edge foreign key (node) references edge(target)
);

create table numvalues (
	node varchar(4),
	value NUMBER,
	constraint pk_numvalues primary key (node),
	constraint fk_numvalues_edge foreign key (node) references edge(target)
);
