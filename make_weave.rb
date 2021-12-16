require "json"
require "paint"
require "tty-prompt"

prompt = TTY::Prompt.new

def make_weave
    # Read the file from disk into a string.
    structure_file_string = File.read('./checker_structure.json')
    # Convert the JSON string into a ruby hash.
    structure_hash = JSON.parse(structure_file_string)
    # Get user input.
    puts "Please enter your secret message"
    secret_message = gets.chomp.downcase

    # -- could ask if the user wants random colorisation or specific colours
    puts "Would you like to choose your colors"

    # color_choice = prompt.select("now, how would you like to color your weave? (Use ↑/↓ arrow keys, press Enter to select)", %w(let_the_matrix_decide imput_RGB_values))

    color_choice = gets.chomp
    puts "here is your woven encryption:"
    if color_choice == "no"
        warp_color_R = rand(0..255)
        warp_color_G = rand(0..255)
        warp_color_B = rand(0..255)
        weft_color_R = rand(0..255)
        weft_color_G = rand(0..255)
        weft_color_B = rand(0..255)
    else 
        puts "Compose your weave by assigning the RGB values of the Warp and Weft"
        puts "Assign your Warp's Red color by choosing a value between 0-255"
        warp_color_R = gets.chomp.to_i
        puts "Assign your Warp's Green color by choosing a value between 0-255"
        warp_color_G = gets.chomp.to_i
        puts "Assign your Warp's Blue color by choosing a value between 0-255"
        warp_color_B = gets.chomp.to_i
        puts "Assign your Weft's Red color by choosing a value between 0-255"
        weft_color_R = gets.chomp.to_i
        puts "Assign your Weft's Green color by choosing a value between 0-255"
        weft_color_G = gets.chomp.to_i
        puts "Assign your Weft's Blue color by choosing a value between 0-255"
        weft_color_B = gets.chomp.to_i
    end

    # For each letter in the message string
    index = 0
    while index < secret_message.length
        # Get a single character from the message string
        character_in_message = secret_message[index]  
        # Convert character to weave structure
        converted_character = structure_hash[character_in_message]
        # Print out weave structure for chatacter ----- OPTIONS FOR "EXPORTING" (ie jpg, tff, pdf)
        puts Paint[converted_character, [warp_color_R, warp_color_G, warp_color_B], [weft_color_R, weft_color_G, weft_color_B]] 
        # puts converted_character.colorize(:background => warp_colour, :color => weft_colour)
        # Move to next character
        index = index + 1
    end
end


