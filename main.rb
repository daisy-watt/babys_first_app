require_relative "make_weave"

puts "hello this is a crappy menu, which way are you going to go?"
puts "choose 0 to encrypt your name in a weave"
puts "choose 1 to literally do anything else lol"

choice = gets.chomp.to_i

if choice == 0
    make_weave
elsif choice == 1
    puts "you are lost, go back"
else 
    puts "how on earth did you get here"
end
