insert into node(id, begin, end, parent, tag, nodetyp) values( 'n0', 1, 26, NULL, 'presse', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n1', 2, 9, 'n0', 'journal', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n2', 3, 8, 'n1', 'article', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n3', 4, 7, 'n2', 'corps', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n4', 5, 6, 'n3', NULL, 'text');
insert into textvalues(node, value) values( 'n4', 'Article respectant la DTD1 du TP1 de représentation des données du web.');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n5', 10, 25, 'n0', 'journalistes', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n6', 11, 14, 'n5', 'journaliste', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n7', 12, 13, 'n6', 'anonyme', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n8', 15, 24, 'n5', 'journaliste', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n9', 16, 19, 'n8', 'nom', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n10', 17, 18, 'n9', NULL, 'text');
insert into textvalues(node, value) values( 'n10', 'Obama');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n11', 20, 23, 'n8', 'prenom', 'element');
insert into node(id, begin, end, parent, tag, nodetyp) values( 'n12', 21, 22, 'n11', NULL, 'text');
insert into textvalues(node, value) values( 'n12', 'Barack');
insert into attributes(node, name, value) values( 'n2', 'titre', 'DTD1');
insert into attributes(node, name, value) values( 'n2', 'auteur', 'auth1');
insert into attributes(node, name, value) values( 'n6', 'idJ', 'auth1');
insert into attributes(node, name, value) values( 'n8', 'idJ', 'auth2');
