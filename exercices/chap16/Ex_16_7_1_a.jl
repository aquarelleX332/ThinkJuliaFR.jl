# Partie 1:
# Écrivez une fonction appelée multime qui prend un objet MyTime ainsi qu’un
# nombre et qui retourne un nouvel objet MyTime contenant le produit du MyTime
# original et du nombre.

using Printf

function printtime(time)
    @printf("%02d:%02d:%02d\n", time.heure, time.minute, time.seconde)
end

mutable struct MyTime
    heure
    minute
    seconde
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

    t4 = MyTime(heure, minute, seconde)
    printtime(t4)
end


function multime(time, nombre)
    produit_secondes = timetoint(time) * nombre
    inttotime(produit_secondes)
end

t1 = MyTime(2,1,39)         # record du monde du marathon (Eliud Kipchoge)
multime(t1,2)
