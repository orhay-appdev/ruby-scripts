plays = ["rock","scissors","paper"]

desc "Play rock in rock-paper-scissors"
task :play_rock do
  ap "We played rock."

  com_play = plays.sample

  ap "The computer chose " + com_play + "."

  if com_play == "rock" 
    ap "We tied!"
    elsif com_play == "paper"
    ap "We lost!"
    elsif ap "We won!"
  end
      
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  ap "We played paper."

  com_play = plays.sample

  ap "The computer chose " + com_play + "."

  if com_play == "rock" 
    ap "We won!"
    elsif com_play == "paper"
    ap "We tied!"
    elsif ap "We lost!"
  end
end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do
  ap "We played scissors."

  com_play = plays.sample

  ap "The computer chose " + com_play + "."

  if com_play == "rock" 
    ap "We lost!"
    elsif com_play == "paper"
    ap "We won!"
    elsif ap "We tied!"
  end
end
