# Partie 2:
# Utilisez ensuite multime pour écrire une fonction qui prend un objet MyTime re-
# présentant le temps d’arrivée dans une course ainsi qu’un nombre figurant la distance.
# Cette fonction doit retourner un objet MyTime qui donne l’allure moyenne (durée par
# kilomètre parcouru).

# La modification a consisté à renommer multime en allure
# et à utiliser la / au lieu de la *


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


function allure(time, nombre)
    produit_secondes = timetoint(time) / nombre
    inttotime(produit_secondes)
    println("(allure en hh:mm:ss par km) ")
end

t1 = MyTime(2, 1, 39)           # record du monde marathon
allure(t1, 42.195)              # longueur d'un marathon en km
