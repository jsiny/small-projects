# This program is designed to help playing at a game called "Deep Sea Adventures".
# In this game, each player is a diver who dives looking for treasures.
# The more treasures you have, the harder it is to breathe.
# ...And the oxygen supply is shared between all divers.
# This program thus tracks the amount of oxygen left according to the
# treasures taken.

# Query the amount of players
puts "How many players will play Deep Sea Adventure?"
players = gets.chomp.to_i
puts "There will be #{players} players."

# Initialize a hash containing the player's name & the amount of treasures
treasures = {}

players.times do |player|
  puts "What is player #{player+1}'s name?"
  treasures[gets.chomp] = 0
end  

# Visual separator to enhance user interface
def linebreak
  puts "----------------------------------------------------------------------------"
end

# There are 3 rounds in this game.
# At each round, the treasures picked up before are hidden away safely and 
# do not burden the divers anymore.

3.times do |element|
  
  loop do 
    puts "Do you want to start round ##{element+1}? Y/N"
    answer = gets.chomp
    if answer == "Y"
      break
    end
  end
  
  linebreak
  linebreak
  puts "ROUND ##{element+1} HAS STARTED"
  linebreak
  linebreak
    
  oxygen = 25
  
  # The treasures from previous rounds are removed.
  # Each diver starts its dive with 0 treasure.
  treasures.each { |player, treasure| treasures[player] = 0 }
  
  puts "There are #{players} players competing for #{oxygen} of oxygen."
  p treasures

 while oxygen > 0 do
    treasures.each do |player, treasure|
      
      # The treasures previously collected by a diver decreases the shared amount
      # of oxygen at the beginning of the player's turn.
      oxygen -= treasure
      
      if oxygen <= 0
        puts "NO MORE OXYGEN LEFT! All the divers still in the water have drowned."
        linebreak
        break
      
      else
        puts "It's #{player}'s turn. There is #{oxygen} oxygen left."
        puts "Has #{player} taken a new treasure? Y/N"
        choice = gets.chomp
        treasures[player] += 1 if choice == "Y"
        p treasures
        
        sum = treasures.values.inject(0){|sum,x| sum + x }
        puts "The total amount of treasures taken from the sea this round amounts to: #{sum}."
        linebreak
      end
    end
 end
end

linebreak
linebreak
puts "THE GAME HAS ENDED"
linebreak
linebreak