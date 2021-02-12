struct Point
  x
  y
end

mutable struct MPoint
  x
  y
end

struct Rectangle
  largeur
  hauteur
  coin
end

function printpoint(p)
  println("($(p.x), $(p.y))")
end

function findcenter(rect)
  Point(rect.coin.x, rect.coin.y)
end

function movepoint!(p, dx, dy)
  p.x += dx
  p.y += dy
  nothing
end

function moverectangle!(rect, dx, dy)
  movepoint!(rect.coin, dx, dy)
end
