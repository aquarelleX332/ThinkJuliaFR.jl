function deletehead!(t)
  popfirst!(t)
end

function baddeletehead(t)
  t[2:end]                # erroné
end

function tail(t)
  t[2:end]
end
