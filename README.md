# ThinkJuliaFR

[![Build Status](https://github.com/aquarelleX332/ThinkJuliaFR.jl/workflows/CI/badge.svg)](https://github.com/aquarelleX332/ThinkJuliaFR.jl/actions)

« Think Julia -- Comment penser comme un informaticien » est la traduction française du livre "[ThinkJulia -- How to Think Like a Computer scientist](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html)" de Ben Lauwens et Allen B. Downey (publié en 2018). Il s'agit d'un livre d'introduction au langage Julia.  
La version PDF (format B5, recto-verso) peut être téléchargée en cliquant sur ce [lien](https://github.com/aquarelleX332/ThinkJuliaFR.jl/blob/master/book/Think_Julia_FR.pdf).  
Le code source LYX peut être téléchargé en cliquant sur le bouton *download* de ce [lien](https://github.com/aquarelleX332/ThinkJuliaFR.jl/blob/master/src/Think_Julia_FR.lyx).

“Think Julia – Comment penser comme un informaticien” is a French translation of the book “ThinkJulia – How to Think Like a Computer scientist” by Ben Lauwens and Allen B. Downey (published in 2018). It is an introductory book to the Julia language.  
The PDF version (B5 format, double-sided) can be downloaded by clicking on this [link](https://github.com/aquarelleX332/ThinkJuliaFR.jl/blob/master/book/Think_Julia_FR.pdf).  
The LYX source code can be downloaded by clicking on the download button of this [link](https://github.com/aquarelleX332/ThinkJuliaFR.jl/blob/master/src/Think_Julia_FR.lyx).

<hr>

**Installation / Install:**  
Dans le REPL:  
`]`  
`add https://github.com/aquarelleX332/ThinkJuliaFR.jl`  
`using ThinkJuliaFR`  

ou  

`using Pkg`  
`Pkg.add(url="https://github.com/aquarelleX332/ThinkJuliaFR.jl")`

<hr>

**Usages:**  
Cette version permet d'utiliser les paquets Turtle (Chapitre 4), Plots (chapitres 13 et 19), DBM (chapitres 14 et 19) et Printf (chapitres 16 et 17).  

This version allows you to use Turtle, Plots, DBM functions and the "@printf" macro to solve exercises and use the examples from the book.

<hr>

**Exemple:**
```julia
# exercice 4.12.5 (page 51)

using ThinkJuliaFR
🐢 = Turtle()

function spiralearchimede(t)
    θ = 0.0                     # angle initial
    n = 2500                    # nombre de segments
    len = 2                     # longueur d'1 segment
    for i in 1:n
        forward(t,len)
        Δ = 1/(0.002 + 0.001*θ) # incrément d'angle
        turn(t,-Δ)
        θ = θ + Δ
    end
end

@svg begin
    spiralearchimede(🐢)
end

```

<hr>


**Autres traductions / other translations:**  
[Version espagnole](https://introajulia.org) par Pamela Alejandra Bustamante Faúndez.  
[Version portugaise](https://juliaintro.github.io/JuliaIntroBR.jl/index.html) par Abel Soares Siqueira, Gustavo Sarturi, João Okimoto et Kally Chung.  
Coordination des traductions: [Christian Peel](https://github.com/christianpeel?tab=repositories).

