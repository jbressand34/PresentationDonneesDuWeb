insert into edge (source, target, ordinal, tag, type) values ( NULL, 'n0', NULL, 'batiment', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n0', 'n1', 1, 'etage', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n0', 'n2', 2, 'etage', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n1', 'n3', 1, 'description', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n1', 'n4', 2, 'salle', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n1', 'n5', 3, 'salle', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n1', 'n6', 4, 'salle', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n2', 'n7', 1, 'description', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n2', 'n8', 2, 'salle', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n2', 'n9', 3, 'salle', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n2', 'n10', 4, 'salle', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n3', 'n11', 1, NULL, 'txt');
insert into edge (source, target, ordinal, tag, type) values ( 'n4', 'n12', 1, 'nbPlaces', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n5', 'n13', 1, 'nbPlaces', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n6', 'n14', 1, 'nbPlaces', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n7', 'n15', 1, NULL, 'txt');
insert into edge (source, target, ordinal, tag, type) values ( 'n8', 'n16', 1, 'nbPlaces', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n9', 'n17', 1, 'nbPlaces', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n10', 'n18', 1, 'nbPlaces', 'elt');
insert into edge (source, target, ordinal, tag, type) values ( 'n12', 'n19', 1, NULL, 'num');
insert into edge (source, target, ordinal, tag, type) values ( 'n13', 'n20', 1, NULL, 'num');
insert into edge (source, target, ordinal, tag, type) values ( 'n14', 'n21', 1, NULL, 'num');
insert into edge (source, target, ordinal, tag, type) values ( 'n16', 'n22', 1, NULL, 'num');
insert into edge (source, target, ordinal, tag, type) values ( 'n17', 'n23', 1, NULL, 'num');
insert into edge (source, target, ordinal, tag, type) values ( 'n18', 'n24', 1, NULL, 'num');


insert into textvalues (node, value) values ('n11', 'Rez-de-chaussee');
insert into textvalues (node, value) values ('n15', 'Premier etage');

insert into numvalues (node, value) values ('n19', 40);
insert into numvalues (node, value) values ('n20', 40);
insert into numvalues (node, value) values ('n21', 40);
insert into numvalues (node, value) values ('n22', 50);
insert into numvalues (node, value) values ('n23', 30);
insert into numvalues (node, value) values ('n24', 25);
