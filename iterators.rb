
def conversation
	puts "Hello\n"
	yield
	puts "Goodbye\n"
end

def five_times_a
	yield 1
	yield 2
	yield 3
	yield 4
	yield 5
end

def five_times_b
	1.upto(5) do |count|
		yield count
	end
end

def n_times(num)
	1.upto(num) do |count|
		yield count
	end
end


# 1. custom iterator example
conversation { puts "Good to meet you!" }

# 2. custom iterator example
five_times_a do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

# 3. custom iterator example
five_times_b do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

# 4. custom iterator example
n_times(8) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end