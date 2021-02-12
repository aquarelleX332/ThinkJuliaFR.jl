function histogram(s)
  d = Dict()
  for c in s
    d[c] = get!(d, c, 0) + 1
  end
  d
end

# comme dans ThinkJuliaFR
#function histogram(s)
#  d = Dict()
#  for c in s
#    if c ∉ keys(d)
#      d[c] = 1
#    else
#      d[c] += 1
#    end
#  end
#  d
#end


function printhist(h)
  for c in keys(h)
      println(c, " ", h[c])
  end
end

function reverselookup(d, v)
  for k in keys(d)
      if d[k] == v
          return k
      end
  end
  error("LookupError")
end

function invertdict(d)
  inverse = Dict()
  for key in keys(d)
      val = d[key]
      if val ∉ keys(inverse)
          inverse[val] = [key]
      else
          push!(inverse[val], key)
      end
  end
  inverse
end
