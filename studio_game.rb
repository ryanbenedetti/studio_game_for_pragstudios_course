require_relative 'game'
require_relative 'player'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
    
knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(3)
knuckleheads.print_stats

player4 = Player.new("Charlie Denmare")
player5 = Player.new("Keith Scorfano", 95)
player6 = Player.new("Muzzy Borbotti", 125)
    
playwright = Game.new("Playwright")
playwright.add_player(player4)
playwright.add_player(player5)
playwright.add_player(player6)
playwright.play(3)
playwright.print_stats




# player1 = Player.new("Moe")
# puts player1.health
#
# player2 = Player.new("larry", 60)
# player3 = Player.new("Curly", 70)
# puts player2.name
# player2.name = "lawrence"
# puts player2.name
# puts player2.health
# puts player2.score
# puts player2
#
# players = [player1, player2, player3]
# puts "There are #{players.size} players in the game."
# players.each do |p|
#   puts p
# end
#
# players.each do |p|
#   puts p.health
# end
#
# players.pop
# players.push(Player.new("Shemp", 120))
# players.each do |p|
#   puts p.w00t
#   puts p.blam
#   puts p.w00t
#   puts p.w00t
#   puts p
# end


# def time
#   current_time = Time.new
#   current_time.strftime("%")
# end
#
#
# def say_hello (name, health=100)
#   "I'm #{name.capitalize} with a health of #{health} as of #{time}."
# end
#
# puts say_hello("larry", 60)
# puts say_hello("curly", 125)
# puts say_hello("moe")
# puts say_hello("shemp", 90)


#puts self.class

#puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}"

# greeting = "Welcome!"
#
# 3.times do
#   puts greeting.upcase
# end
#
# puts Time.now
#Check TextMAte for the correct Ruby variable
#puts RUBY_VERSION

