require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(a_player)
    @players << a_player
    #another way to do it @players.push(a_player)
  end
   
  def play(rounds)
    puts "There are #{@players.size} players in #{@title}: "
    
    @players.each do |player|
      puts player
    end

  1.upto(rounds) do |round|
    if block_given?
      break if yield
    end
   puts "\nRound #{round}:"
    @players.each do |player|
        GameTurn.take_turn(player)
        puts player
    end
  end #end up to block

  treasures = TreasureTrove::TREASURES

  puts "\nThe treasure trove contains #{TreasureTrove::TREASURES.size} treasures."
  
  treasures.each do |treasure|
    puts "A #{treasure.name} is worth #{treasure.points} points."
  end

 end # end play

def print_name_and_health(player)
  puts "#{player.name} ( #{player.health} )"
end

#iterates through each player and sums up the total points

def total_points
    @players.reduce(0) do |sum, player|
      sum + player.points
    end
  end


def print_stats

puts "#{total_points} total points from treasures found"

  #Create two arrays: 
  #one containing only the strong players 
  strong_players = @players.select { |player| player.strong? }

  #and the other containing only the wimpy players. 
  wimpy_players = @players.reject { |player| player.strong? }
  puts "\n#{@title} Statistics:"
 
   puts "\n#{strong_players.size} strong players"
   strong_players.each do |strong_player|   
      print_name_and_health(strong_player)
   end

  puts "\n#{wimpy_players.size} wimpy players"
   wimpy_players.each do |wimpy_player|   
      print_name_and_health(wimpy_player)
   end

   sorted_players = @players.sort { |a, b| b.score <=> a.score }

   puts "\n#{@title} High Scores:"
 
   @players.sort.each do |player|   
      formatted_name = player.name.ljust(20, '.')
      puts "#{formatted_name} ............. #{player.score}"
   end

   puts "\n#{@title} Total Points:"
 
   @players.sort.each do |player|   
      puts "\n#{player.name}'s point totals:"
      player.each_found_treasure do |treasure|
        puts "#{treasure.points} total #{treasure.name} points"
      end
      puts "#{player.points} grand total points"
   end

  

 end # end print_stats

end  # end class Game



if __FILE__ == $0
  game = Game.new("Test Game")
  puts game.title
    
  player1 = Player.new("Testmaster I.C.E.")
  player2 = Player.new("Testio Samploni", 95)
  player3 = Player.new("Vera Fymyecode", 125)
    
  game.add_player(player1)
  game.add_player(player2)
  game.add_player(player3)
  game.play
end