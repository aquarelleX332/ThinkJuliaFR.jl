# test de l'identité et de l'équivalence de deux instances
# l'une avec struct (persistante)
# l'autre avec mutable struct (non persistante)
# == vérifie l'identité (voir section 10.10 Think_Julia_FR.pdf)
# === vérifie l'équivalence (voir section 10.10 Think_Julia_FR.pdf)

# p1 et p2 sont des instances du type Point
# p3 et p4 sont des instances du type Mpoint


struct Point
    x
    y
end

p1 = Point(3.0,4.0) # ici, Point est utilisé cô fonction => c'est un constructeur
p2 = deepcopy(p1)

p1 == p2
true

p1 === p2
true

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

mutable struct MPoint
    x
    y
end

p3 = MPoint(3.0,4.0) # ici, MPoint est utilisé cô fonction => c'est un constructeur
p4 = deepcopy(p3)

p3 == p4
false

p3 === p4
false
