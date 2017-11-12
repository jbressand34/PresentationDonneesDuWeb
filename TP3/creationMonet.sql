drop table batiment_m;
drop table batiment_etage;
drop table batiment_etage_description;
drop table batiment_etage_salle;
drop table batiment_etage_salle_nbPlaces;

create table batiment_m (
	node varchar(5),
	textval varchar(1),
	numval number,
	constraint pk_batiment_m primary key (node)
);
create table batiment_etage (
	node varchar(5),
	textval varchar(1),
	numval number,
	constraint pk_batiment_etage primary key (node)
);
create table batiment_etage_description (
	node varchar(5),
	textval varchar(50),
	numval number,
	constraint pk_batiment_etage_description primary key (node)
);
create table batiment_etage_salle (
	node varchar(5),
	textval varchar(1),
	numval number,
	constraint pk_batiment_etage_salle primary key (node)
);
create table batiment_etage_salle_nbPlaces (
	node varchar(5),
	textval varchar(1),
	numval number,
	constraint pk_batiment_etage_nbPlaces primary key (node)
);
