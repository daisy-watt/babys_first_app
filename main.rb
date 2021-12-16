require_relative "make_weave"
require_relative "weave_calculator"
require "tty-prompt"
require "paint"
require "colorize"

prompt = TTY::Prompt.new

#### ---> error, tests, bash scripting

#Save your file feature (save name or generate)
#Decrypting 

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
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".green 

choice = prompt.select("hello, what are you here for?", %w(make_weave_encryption decipher_weave weave_calculator))

# weave_encryptions = 0
# weaver_tools = 1

# puts "hello human, chose your destiny..."
# puts "choose 0 to encrypt your name in a weave"
# puts "choose 1 to literally do anything else lol"
puts choice 
# choice = gets.chomp.to_i

if choice == "make_weave_encryption"
    make_weave
elsif choice == "decipher_weave"
    # weave_txt
else choice == "weave_calculator"
    # require_relative "weave_calculator"
    choose_calculator_function
end
