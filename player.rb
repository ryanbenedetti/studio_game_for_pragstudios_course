class Player
  
  attr_accessor :name
  attr_reader :health
  #attr_writer
  
  def initialize(name, health=100)  
    #set instance variables to parameter variables(local) so that they are available to other instance methods
    @name = name.capitalize
    @health = health    
    
    #Check that everything is set up:
    #puts self.inspect
  end
  
  def strong?
    @health > 100
  end
  
  def name=(new_name)
    @name = new_name.capitalize
  end
  
  def score
    @health + @name.length
  end
  
  def to_s
    "I'm #{@name.capitalize} with a health of #{@health} and a score of #{score}."
  end
  
  def w00t
    @health += 15
    "#{@name.capitalize} got w00ted!"
  end
  
  def blam
    @health -= 10
    "#{@name.capitalize} got blammed!"
  end

#Override the <=> method (the general comparison (aka spaceship) operator) in the Player class 
#so that any time you call sort on an array of players it always returns them sorted by descending score. 
  def <=>(other)
    other.score <=> score
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