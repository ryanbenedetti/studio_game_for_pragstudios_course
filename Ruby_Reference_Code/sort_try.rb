#Sorting

#Create an array of words
creatures = %w(djinn basilisk wretch gorgon yeti cyclops zombie angel banshee troll harpy dragon witch ghoul werewolf axlotl)

#sort array with built-in array sort method
puts creatures.sort

#sort array with built-in array sort_by method with block
puts creatures.sort_by { |w| w.length}



# put numers into  an array
numbers = [1, 2, 3, 4]

# a different way using range
numbers = (1..10).to_a

# Classic Ruby block: Select all numbers greater than 5
numbers.select do |n| 
  n > 5
end

# Elegant block: Select all numbers greater than 5
numbers.select{ |n| n > 5}

# Elegant block: Select all even numbers
evens = numbers.select{ |n| n.even? }

# Elegant way: Select all odd numbers
odds = numbers.select{ |n| n.odd? }

# Elegant way: Select all odd numbers with reject evens
odds = numbers.reject{ |n| n.even? }

# Elegant way: Select all odd numbers with reject evens
evens, odds = numbers.partition { |n| n.even? }





