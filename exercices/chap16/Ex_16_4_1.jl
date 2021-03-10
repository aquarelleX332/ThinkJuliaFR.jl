# Réécrivez increment ! en utilisant timetoint et inttotime.
# Voir pages 223 et 224 (chapitre 16)


using Printf

function printtime(time)
    @printf("%02d:%02d:%02d\n", time.heure, time.minute, time.seconde)
end

function timetoint(time)
    minutes = time.heure * 60 + time.minute
    secondes = minutes * 60 + time.seconde
end

function inttotime(secondes)
    (minutes, seconde) = divrem(secondes, 60)
    (heures, minute) = divrem(minutes, 60)
    (h, heure)= divrem(heures, 25)
    heure += h

    t3 = MyTime(heure, minute, seconde)
    printtime(t3)
end

function increment!(time, secondes)
    somme = timetoint(time) + secondes
    inttotime(somme)
end

t1 = MyTime(23,55,0)
increment!(t1,1217)
