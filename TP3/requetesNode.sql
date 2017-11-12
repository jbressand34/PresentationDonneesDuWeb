SET TIMING ON;

--//article [@auteur = //journaliste[child::anonyme]/@idJ]
select a1.value
from attributes a1,
attributes a2,
node n1
where a1.name='titre'
and a1.node = n1.id
and n1.tag= 'article'
and a2.node = n1.id
and a2.name = 'auteur' 
and a2.value in (
	select a3.value
	from attributes a3,
	node n2,
	node n3
	where a3.name='idJ'
	and a3.node = n2.id
	and n3.parent = n2.id
	and n3.tag='anonyme'
);

--//article [position() = 1]/corps
select t1.value
from textvalues t1,
node n1,
node n2,
node n3
where t1.node=n1.id
and n1.nodetyp='text'
and n1.parent=n2.id
and n2.tag='corps'
and n2.parent = n3.id
and n3.tag = 'article'
and n3.begin in (
	select min(n4.begin)
	from node n4
	where n4.tag='article'
);

--//journaliste[nom]
select a.value
from attributes a,
node n1,
node n2
where a.node=n1.id
and a.name='idJ'
and n1.tag='journaliste'
and n2.tag='nom'
and n2.parent=n1.id;
