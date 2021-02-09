module ThinkJuliaFR

  __precompile__(false)

  using Printf
  using Random
  using Base64
  using REPL
  using Luxor
  using TikzPictures
  using Plots

  const depsjl_path = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
  if !isfile(depsjl_path)
      error("ThinkJuliaFR not installed properly, run Pkg.build(\"ThinkJuliaFR\"), restart Julia and try again")
  end
  include(depsjl_path)

  function __init__()
    # Always check your dependencies that live in `deps.jl`
    check_deps()
    global setcolor! = Core.eval(Base, :(x -> (y = have_color; global have_color = x; y)))
    CAN_INLINE[] = Base.JLOptions().can_inline == 0 ? false : true
  end

  #import Base.+

  export printlyrics, repeatlyrics, printtwice, cattwice
  export rightjustify, printgrid
  export Turtle, forward, turn, penup, pendown, @svg
  #export countdown, printn, recurse
  #export area, absvalue, distance, circlearea, isdivisible, fact, fib
  export mysqrt, testsquareroot
  #export inboth
  #export deletehead!, baddeletehead, tail, nestedsum, cumulsum, interior, interior!, issort
  #export histogram, printhist, reverselookup, invertdict
  #export printall
  #export processfile, processline, totalwords, differentwords, mostcommon, printmostcommon, subtract
  export DBM
  #export Point, MPoint, Rectangle, printpoint, findcenter, movepoint!, moverectangle!
  #export MyTime, isafter
  #export inttotime, timetoint, increment!, printtime
  #export CardSet, Card, Deck, Hand, move!
  #export MyPoint

  export makefigs
  
  end
