require_relative "make_weave"
require_relative "sley_sequence"
require "tty-prompt"

prompt = TTY::Prompt.new

puts "
    ,---------------------------,
    |  /---------------------\   |
    | |                       | |
    | |                       | |
    | |    ....weavemate_94   | |
    | |                       | |
    | |                       | |
    |  \_____________________/   |
    |___________________________|
   ,---\_____     []     _______/------,
  /         /______________\           /|
/___________________________________ /  | ___
|                                   |   |    )
|  _ _ _                 [-------]  |   |   (
|  6 6 6                 [-------]  |  /    _)_
|__________________________________ |/     /  /
/-------------------------------------/|   ( )/
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

choice = prompt.select("hello, what are you here for? (Use ↑/↓ arrow keys, press Enter to select)", %w(make_weave_encryption weaver_tools))

# weave_encryptions = 0
# weaver_tools = 1

# puts "hello human, chose your destiny..."
# puts "choose 0 to encrypt your name in a weave"
# puts "choose 1 to literally do anything else lol"
puts choice 
# choice = gets.chomp.to_i

if choice == "make_weave_encryption"
    make_weave
elsif choice == "weaver_tools"
    sley_sequence
else 
    puts "how on earth did you get here"
end
