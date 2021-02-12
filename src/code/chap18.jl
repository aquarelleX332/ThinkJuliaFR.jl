abstract type EnsembleDeCartes end

struct Carte
  couleur :: Int64
  rang :: Int64
  function Carte(couleur::Int64, rang::Int64)
      @assert(1 ≤ couleur ≤ 4, "la couleur n’est pas entre 1 et 4")
      @assert(1 ≤ rang ≤ 13, "le rang n’est pas entre 1 et 13")
      new(couleur, rang)
  end


const noms_couleurs = ["♣", "♦", "♥", "♠"]
const noms_rangs = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "V", "D", "R"]

function Base.show(io::IO, carte::Carte)
  print(io, noms_rangs[carte.rang], noms_couleurs[carte.couleur])
end

function Base.isless(c1::Carte, c2::Carte)
  isless((c1.couleur, c1.rang), (c2.couleur, c2.rang))
end

struct Paquet <: EnsembleDeCartes
    cartes :: Array{Carte, 1}
    function Paquet()
        paquet = new(Carte[])
        for couleur in 1:4
            for rang in 1:13
                push!(paquet.cartes, Carte(couleur, rang))
            end
        end
        paquet
    end
end

function Base.show(io::IO, edc::EnsembleDeCartes)
    for carte in edc.cartes
        print(io, carte, " ")
    end
end

function Base.pop!(edc::EnsembleDeCartes)
    pop!(edc.cartes)
end

function Base.push!(edc::EnsembleDeCartes, carte::Carte)
    push!(edc.cartes, carte)
    nothing
end

function Random.shuffle!(paquet::Paquet)
    shuffle!(paquet.cartes)
    paquet
    #nothing (dans ThinkJulia/src/code mais OK avec paquet. Testé)
end

struct UneMain <: EnsembleDeCartes
    cartes :: Array{Carte, 1}
    label :: String
    function UneMain(label::String="")
        new(Carte[], label)
    end
end

function move!(edc1::EnsembleDeCartes, edc2::EnsembleDeCartes, n::Int)
    @assert 1 ≤ n ≤ length(edc1.cartes)
    for i in 1:n
        carte = pop!(edc1)
        push!(edc2, carte)
    end
    nothing
end

function Base.sort!(main::UneMain)
    sort!(main.cartes)
end
