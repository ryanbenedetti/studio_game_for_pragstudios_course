require_relative 'player'
# require_relative 'loaded_die'
require_relative 'die'
require_relative 'treasure_trove'

module GameTurn
  
  def self.take_turn(player)
    # die = LoadedDie.new
    die = Die.new
    case die.roll
    when 1..2
      player.blam
    when 3..4
      puts "#{player} was skipped."
    else
      player.w00t
    end 

    treasure = TreasureTrove.random
    player.found_treasure(treasure)
    puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."

  end # end take_turn
  
end # end GameTurn module