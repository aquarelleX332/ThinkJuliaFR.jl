# Julia fournit des objets « temps » similaires à ceux de MyTime vu dans ce chapitre.
# Toutefois, ils offrent un riche ensemble de fonctions et d’opérateurs. Lisez la 
# documentation tation à l’adresse: https://docs.julialang.org/en/v1/stdlib/Dates/

# Partie 1: 
# Écrivez un programme qui recueille la date du jour et affiche le jour de la semaine.

using Dates

# voir Dates -- Query Functions
french_months = ["janvier", "février", "mars", "avril", "mai", "juin",
                    "juillet", "août", "septembre", "octobre", "novembre", "décembre"];
french_monts_abbrev = ["janv","févr","mars","avril","mai","juin",
                              "juil","août","sept","oct","nov","déc"];
french_days = ["lundi","mardi","mercredi","jeudi","vendredi","samedi","dimanche"];
Dates.LOCALES["french"] = Dates.DateLocale(french_months, french_monts_abbrev, french_days, [""]);

# détermination de la date du jour (Dates -- Conversion Functions)
t = today()
println(t, ": ", Dates.dayname(t;locale="french"))

------------------------------------------------------------------------------------------

# Partie 2:
#  Écrivez un programme qui accepte une date d’anniversaire en entrée et affiche
# l’âge de l’utilisateur ainsi que le nombre de jours, d’heures, de minutes et de
# secondes jusqu’à son prochain anniversaire.

using Dates, Printf

mutable struct MyTime
    jour
    heure
    minute
    seconde
end

print("Date anniversaire? [Format: aaaa-mm-jj]: "); date_naissance = readline()

function printtime(time)
    @printf("%03d:%02d:%02d:%02d\n", time.jour, time.heure, time.minute, time.seconde)
end

function inttotime(secondes)
    (minutes, seconde) = divrem(secondes, 60)
    (heures, minute) = divrem(minutes, 60)
    (jour, heure)= divrem(heures, 24)
    #heure += h

    t = MyTime(jour, heure, minute, seconde)
    printtime(t)
end

function dureeprochainanniv(age)
    #corps
    futur_anniversaire = DateTime(Dates.Year(Dates.year(parse(Date, date_naissance)) + age + 1),
        Dates.Month(Dates.month(parse(Date, date_naissance))),
        Dates.Day(Dates.day(parse(Date, date_naissance))))
    date_actuelle = DateTime(today())
    δ = futur_anniversaire - date_actuelle          # en millisecondes
    Δ = Dates.value(Dates.Millisecond(δ)) / 1000    # en secondes
    println("Nbre de jj:hh:mm:ss avant prochain anniversaire: ")
    inttotime(Δ)
    println("---")
end

# détermination de l'âge
if Dates.month(today()) > Dates.month(parse(Date, date_naissance)) ||
    (Dates.month(today()) == Dates.month(parse(Date, date_naissance)) &&
            Dates.day(today()) ≥ Dates.day(parse(Date, date_naissance)))
    # dans ce cas, la personne a un an de plus:
    age = Dates.year(today()) - Dates.year(parse(Date, date_naissance))
    println("Âge: ", age, " ans")
    dureeprochainanniv(age)
else
    # la personne ne prend pas un an de plus
    age = Dates.year(today()) - Dates.year(parse(Date, date_naissance)) -1
    println("Âge: ", age, " ans")
    dureeprochainanniv(age)
end

# accessoirement, nbre de jours depuis la naissance:
delta_jours = today() - parse(Date, date_naissance)
println("Nbre de jours depuis la naissance: ", delta_jours)
println("---")



