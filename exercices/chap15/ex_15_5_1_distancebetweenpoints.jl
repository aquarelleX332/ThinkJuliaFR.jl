# calcule la distance entre deux points du plan (O,x,y)

struct Point
    x
    y
end

p1 = Point(0.0,0.0)
p2 = Point(-3.0,-4.0)

function distancebetweenpoints(a,b)
    Δx = b.x - a.x
    Δy = b.y - a.y
    distance = sqrt(Δx^2 + Δy^2)
    println("Distance entre points = ", distance)
end

distancebetweenpoints(p1,p2)
