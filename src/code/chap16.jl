mutable struct MyTime
  heure 
  minute
  seconde
  function MyTime(heure=0, minute=0, seconde=0)
    new(heure, minute, seconde)
  end
end
