function increment!(time::MyTime, secondes::Int64)
  secondes += timetoint(time)
  inttotime(secondes)
end

function +(t1::MyTime, t2::MyTime)
  secondes = timetoint(t1) + timetoint(t2)
  inttotime(secondes)
end

function +(time::MyTime, secondes::Int64)
  increment!(time, secondes)
end

function +(secondes::Int64, time::MyTime)
  increment!(time, secondes)
end

function printtime(time)
  println("Je ne sais pas comment afficher l’argument time.")
end

function printtime(time::MyTime)
  @printf("%02d:%02d:%02d", time.heure, time.minute, time.seconde)
end
