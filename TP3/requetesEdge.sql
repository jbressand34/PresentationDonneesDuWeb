SET TIMING ON;

select value 
from textvalues t, edge e1, edge e2
where t.node = e1.target
and e1.source = e2.target
and e2.tag = 'description';

select distinct t.value
from textvalues t, 
edge e1, 
edge e2,
edge e3,
edge e4,
edge e5, 
edge e6, 
numvalues n
where n.value = 40
and n.node = e1.target
and e1.type = 'num'
and e1.source = e2.target
and e2.tag = 'nbPlaces'
and e2.source = e3.target
and e3.tag = 'salle'
and e3.source = e4.target
and e4.tag = 'etage'
and e5.source = e4.target
and e5.tag='description'
and e6.source = e5.target
and e6.type = 'txt'
and t.node = e6.target;


select t.value
from textvalues t,
edge e1,
edge e2
where t.node = e1.target
and e1.source = e2.target
and e2.tag = 'description'
and e2.source in (
	select etage from (
		select e3.target as etage, count(*)
		from edge e3, edge e4
		where e3.tag = 'etage'
		and e4.source = e3.target
		and e4.tag = 'salle'
		group by e3.target
		having count(*) = 3
));
