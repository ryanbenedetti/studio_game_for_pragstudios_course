#Blocks and iterators and arrays

#single line iterator
3.times{puts "Echo"}

#multiple line iterator, only local scope for the goal post variable
10.times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

#with upto method iterator
1.upto(10) do |number|
  puts "#{number} situp"
   puts "#{number} pushup"
    puts "#{number} chinup"
end

#each method iterator over an array
words = ["abominable snowman", "angel", "banshee", "basilisk", "beast", 
  "behemoth", "bogey man", "brute", "centaur", "Cerberus", "changeling", 
  "cherub", "chimera", "colossus", "crone", "cyclops", "demon", "devil", 
  "djinn", "dragon", "dryad (tree nymph)", "elf", "fairy", "fiend", 
  "fire-breathing dragon", "Frankenstein's monster", "freak", "gargoyle", 
  "genii", "ghost", "ghoul", "giant", "gnome", "Godzilla", "golum", "gorgon", 
  "hag", "harpy", "horror", "hydra", "imp", "jinn", "kelpie", "lake spirit", 
  "leprechaun", "leviathan", "little people", "Loch Ness monster", "medusa", 
  "merman", "mermaid", "monster", "mummy", "Nessie", "nymph", "ogre", "orc", 
  "Pegasus", "phoenix", "polyphemus", "rain bird (Native American)", 
  "raven spirit (Native American)", "ryu (Japanese dragon)", "savage", 
  "sea monster", "shapeshifter", "siren", "spirit", "sprite", "swamp monster", 
  "titan", "tree nymph (dryad)", "troll", "undead", "unicorn", "vampire", 
  "werewolf", "witch", "wretch", "yeti", "zombie"]

words.each do |word| 
  puts "the word is #{word}"
end

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





