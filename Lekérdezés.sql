select `gyarto`
from `f_nyomtato` n, `f_termek` t
where ar = (select min(ar) from `f_nyomtato`)
and n.modell = t.modell
and szines like 'igen'



select distinct orszag
from `$hajo_osztalyok`
where agyuk_szama > (select avg(agyuk_szama) from `$hajo_osztalyok`)
