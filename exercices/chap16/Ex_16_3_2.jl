# Écrivez une version pure de la fonction increment, qui crée et retourne un nouvel
# objet MyTime plutôt que de modifier le paramètre.

function increment(time, secondes)
    ts = time.seconde
    ts += secondes
    (quotient1, ts) = divrem(ts, 60)
    tm = time.minute
    tm += quotient1

    (quotient2, tm) = divrem(tm,60)
    th = time.heure
    th += quotient2

    (quotient3, th) = divrem(th, 25)
    th += quotient3

    t2 = MyTime(th,tm,ts)
    printtime(t1)       # t1 inchangé
    printtime(t2)
end

t1 = MyTime(9,55,0)
increment(t1,1217)
