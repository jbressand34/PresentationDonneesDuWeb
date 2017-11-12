drop table nombrePlaces;
drop table salle;
drop table description;
drop table etage;
drop table batiment;

create table batiment (
        source varchar(5),
        target varchar(5),
        ordinal number,
        txtval varchar(1),
	numval number,
        constraint pk_batiment primary key (target)
);


create table etage (
        source varchar(5),
        target varchar(5),
        ordinal number,
        txtval varchar(1),
	numval number,
        constraint pk_etage primary key (target),
	constraint fk_etage_batiment foreign key (source) references batiment(target)
);


create table description (
        source varchar(5),
        target varchar(5),
        ordinal number,
        txtval varchar(50),
	numval number,
        constraint pk_description primary key (target),
	constraint fk_description_etage foreign key (source) references etage(target)
);


create table salle (
        source varchar(5),
        target varchar(5),
        ordinal number,
        txtval varchar(1),
	numval number,
        constraint pk_salle primary key (target),
	constraint fk_salle_etage foreign key (source) references etage(target)
);


create table nombrePlaces (
        source varchar(5),
        target varchar(5),
        ordinal number,
        txtval varchar(1),
	numval number,
        constraint pk_nombrePlaces primary key (target),
	constraint fk_nombrePlaces_salle foreign key (source) references salle(target)	
);
