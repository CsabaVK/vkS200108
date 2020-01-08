select `gyarto`
from `f_nyomtato` n, `f_termek` t
where ar = (select min(ar) from `f_nyomtato`)
and n.modell = t.modell
and szines like 'igen'

