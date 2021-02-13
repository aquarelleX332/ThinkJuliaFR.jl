# ThinkJuliaFR

[![Build Status](https://github.com/aquarelleX332/ThinkJuliaFR.jl/workflows/CI/badge.svg)](https://github.com/aquarelleX332/ThinkJuliaFR.jl/actions)

« Think Julia -- Comment penser comme un informaticien » est la traduction française du livre "[ThinkJulia -- How to Think Like a Computer scientist](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html)" de Ben Lauwens et Allen B. Downey (publié en 2018). Il s'agit d'un livre d'introduction au langage Julia.  
La version PDF (format B5, recto-verso) peut être téléchargée en cliquant sur ce [lien](https://github.com/aquarelleX332/ThinkJuliaFR.jl/blob/master/book/Think_Julia_FR.pdf).  
Le code source LYX peut être téléchargé en cliquant sur le bouton *download* de ce [lien](https://github.com/aquarelleX332/ThinkJuliaFR.jl/blob/master/src/Think_Julia_FR.lyx).

<hr>

**Installation:**  
Dans le REPL:  
`]`  
`add https://github.com/aquarelleX332/ThinkJuliaFR.jl`  
`using ThinkJuliaFR`

<hr>

**Usages:**  
Cette version permet d'utiliser les paquets Turtle (Chapitre 4), Plots (chapitres 13 et 19), DBM (chapitres 14 et 19) et Printf (chapitres 16 et 17).

**Exemple:**  

'using ThinkJuliaFR`__
`🐢 = Turtle()`__
``
`function spiralearchimede(t)`__
`    θ = 0.0                     # angle initial`__
`    n = 2500                    # nombre de segments`__
`    len = 2                     # longueur d'1 segment`__
`    for i in 1:n`__
`        forward(t,len)`__
`        Δ = 1/(0.002 + 0.001*θ) # incrément d'angle`__
`        turn(t,-Δ)`__
`        θ = θ + Δ`__
`    end`__
`end`__
``
`@svg begin`__
`    spiralearchimede(🐢)`__
`end'


<hr>

**Autres traductions:**  
[Version espagnole](https://introajulia.org) par Pamela Alejandra Bustamante Faúndez.  
[Version portugaise](https://juliaintro.github.io/JuliaIntroBR.jl/index.html) par Abel Soares Siqueira, Gustavo Sarturi, João Okimoto et Kally Chung.  
Coordination des traductions: [Christian Peel](https://github.com/christianpeel?tab=repositories).

