# Écrivez une fonction appelée printtime qui prend un objet MyTime et l’affiche sous
# la forme heure:minute:seconde. La macro @printf du module StdLib Printf affiche un
# entier avec le format "%02d" en utilisant au moins deux chiffres, y compris un zéro de
# tête si nécessaire.


using Printf

struct MyTime
    heure
    minute
    seconde
end

time = MyTime(11, 59, 30)

function printtime(t)
    @printf("%02d:%02d:%02d\n", time.heure, time.minute, time.seconde)
end

printtime(time)
