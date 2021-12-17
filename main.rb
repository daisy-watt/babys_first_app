require_relative "make_weave"
require_relative "weave_calculator"
require_relative "decipher_weave"
require "tty-prompt"
require "tty-editor"
require "paint"
require "colorize"
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
|  4 2 0                 [-------]  |  /    _)_
|__________________________________ |/     /  /
/-------------------------------------/|   ( )/
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".green 

choice = prompt.select("hello, what are you here for?", %w(make_weave_encryption decipher_weave weave_calculator))

puts choice 
# choice = gets.chomp.to_i

if choice == "make_weave_encryption"
    make_weave
elsif choice == "decipher_weave"
    #------------------>this doesnt exist? so will this be an error?
    decipher_weave
else choice == "weave_calculator"
    choose_calculator_function
end


### ---> MISSING parts of assesment: Another ruby gem, error handling, tests, bash scripting, command line arguments??

##---> MISSING FEATURE Save your file feature (save name or generate)

#Decrypting (extra if there is time)

#### theres no way of going back through the program, is that fine? like a loop back to the main menu so the program doesnt just quit or atleat a goodbye msg

#### user guides??**(past student github readme's)