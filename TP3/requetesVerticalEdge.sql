SET TIMING ON;

select txtval
from description;

select d.txtval
from description d,
etage e
where d.source = e.target
and e.target in (
	select e1.target
	from etage e1, 
	salle s,
	nombrePlaces n
	where n.numval = 40
	and n.source = s.target
	and s.source = e1.target
);

select d.txtval
from description d,
etage e
where d.source = e.target
and e.target in (
	select etage from (
		select e1.target as etage, count(*)
		from etage e1, salle s
		where s.source = e1.target
		group by e1.target
		having count(*) = 3
));
