require_relative 'treasure_trove'
require_relative 'playable'

class Player
  #mixin the methods from the Playable module
  include Playable

  attr_accessor :name
  attr_accessor :health
  #attr_writer

  
  def initialize(name, health=100)  
    #set instance variables to parameter variables(local) so that they are available to other instance methods
    @name = name.capitalize
    @health = health    
    @found_treasures = Hash.new(0)

    #Check that everything is set up:
    #puts self.inspect
  end
  
  
  
  def name=(new_name)
    @name = new_name.capitalize
  end
  
  def score
    @health + points
    #@health + @name.length
  end
  
  def to_s
    "I'm #{@name.capitalize} with health = #{@health}, points = #{points}, and score = #{score}."
  end


#Override the <=> method (the general comparison (aka spaceship) operator) in the Player class 
#so that any time you call sort on an array of players it always returns them sorted by descending score. 
  def <=>(other)
    other.score <=> score
  end

  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name}'s treasures: #{@found_treasures}"
  end

  def each_found_treasure
    @found_treasures.each do |name, points|
      yield Treasure.new(name, points)
    end
  end

  def points
    @found_treasures.values.reduce(0, :+)
  end

  def self.from_csv(string)
      name, health = string.split(',')
      Player.new(name, Integer(health))
  end



end

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end