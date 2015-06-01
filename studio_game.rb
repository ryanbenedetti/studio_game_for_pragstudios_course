require_relative 'game'
require_relative 'player'
require_relative 'clumsy_player'
require_relative 'berserk_player'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
player4 = ClumsyPlayer.new("klutz", 105, 3)  
player5 = BerserkPlayer.new("berserker", 105) 
    
knuckleheads = Game.new("Knuckleheads")
# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)

knuckleheads.add_player(player4)
knuckleheads.add_player(player5)

knuckleheads.load_players(ARGV.shift || "players.csv")


loop do
puts "\nHow many game rounds? (enter 'quit' to exit)"
	answer = gets.chomp.downcase
	case answer
	when /^\d+$/
		knuckleheads.play(answer.to_i)
	when 'quit', 'exit'
		knuckleheads.print_stats
		break
	else
		puts "Please enter a number or enter 'quit' to exit."
	end #case
end

knuckleheads.print_stats
knuckleheads.save_high_scores

# player4 = Player.new("Charlie Denmare")
# player5 = Player.new("Keith Scorfano", 95)
# player6 = Player.new("Muzzy Borbotti", 125)
    
# playwright = Game.new("Playwright")
# # playwright.add_player(player4)
# # playwright.add_player(player5)
# # playwright.add_player(player6)

# loop do
# 	puts "\nHow many game rounds? (enter 'quit' to exit)"
# 	answer = gets.chomp.downcase
# 	case answer
# 	when /^\d+$/
# 		playwright.play(answer.to_i)
# 	when 'quit', 'exit'
# 		playwright.print_stats
# 		break
# 	else
# 		puts "Please enter a number or enter 'quit' to exit."
# 	end #case
# end #loop

# playwright.print_stats


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

