# Écrivez une version correcte de la fonction increment! qui ne contienne aucune
# boucle.


using Printf

function printtime(time)
    @printf("%02d:%02d:%02d\n", time.heure, time.minute, time.seconde)
end

function increment!(time, secondes)
    time.seconde += secondes
    (quotient1, time.seconde) = divrem(time.seconde, 60)
    time.minute += quotient1

    (quotient2, time.minute) = divrem(time.minute,60)
    time.heure += quotient2

    (quotient3, time.heure) = divrem(time.heure, 25)
    time.heure += quotient3

    printtime(t1)       # t1 est modifié
end

t1 = MyTime(9,55,0)
increment!(t1,1217)
