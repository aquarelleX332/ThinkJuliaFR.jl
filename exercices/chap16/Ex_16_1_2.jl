# Écrivez une fonction booléenne appelée isafter qui prend deux objets MyTime, t1
# et t2, et qui retourne true si t1 suit chronologiquement t2 et false dans le cas contraire.
# Défi : n’utilisez pas de test if.


# 1. Version sans l'utilisation d'une méthode
# -------------------------------------------

struct MyTime
    heure
    minute
    seconde
end

time1 = MyTime(11, 09, 30)
time2 = MyTime(09, 59, 50)

function isafter(t1,t2)
   println(tuple(time1.heure, time1.minute, time1.seconde) < 
                    tuple(time2.heure, time2.minute, time2.seconde))
end

isafter(time1,time2)

---------------------------------------------------------------------------------------

# 2. Version avec utilisation d'une méthode (section 17.2 -- page 230)
# --------------------------------------------------------------------

struct MyTime
    heure::Int64
    minute::Int64
    seconde::Int64
end

time1 = MyTime(11, 09, 30)
time2 = MyTime(09, 59, 50)

function isafter(t1::MyTime,t2::MyTime)
   println(tuple(time1.heure, time1.minute, time1.seconde) < 
                    tuple(time2.heure, time2.minute, time2.seconde))
end

isafter(time1,time2)
