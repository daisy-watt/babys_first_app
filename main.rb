require_relative "make_weave"
require_relative "weave_calculator"
require_relative "decipher_weave"
require_relative "weave_calculator_test"
require "tty-prompt"
require "tty-editor"
require "paint"
require "colorize"

mode = "" 

if ARGV.length > 0
    flag, *rest = ARGV
    ARGV.clear
    case flag
        when '-mode'
            mode = rest[0]
            puts mode 
        when '-info'
            puts "this silly weave program is running #{RUBY_VERSION}"
        when '-helpme'
            puts "Use '-mode fun' or '-mode testy'"
        else
            puts "invalid argument, see the read me for options"
    end
end

# IF NO MODE, EXIT AND TELL USER THEY NEED TO ENTER MODE
# ELSE IF MODE FUN, CALL MAIN
# ELSE IF MODE TEST, CALL ALL TESTS

def main
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


    if choice == "make_weave_encryption"
        make_weave
    elsif choice == "decipher_weave"

        decipher_weave
    else choice == "weave_calculator"
        choose_calculator_function
    end
end

if mode == "fun"
    main
elsif mode == "testy"
    puts "Test 1: #{test_1()}"
    puts "Test 2: #{test_2()}"
else 
    puts "hey baby you need to use either '-mode fun' or '-mode testy' to open me up lol"
    exit
end

#Decrypting (extra if there is time)

